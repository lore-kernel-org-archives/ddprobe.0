Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB6F20459A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784067514; cv=none; b=uWaG9l9z+bLC1s4P91Oc4cG9yRiyERzMNL70N8hxTVw0OxKLz5YCc0IHuo3K20WDPUKXNDUSwYZRV1cF7GhbIZpEtuEs+C3rvm01ArsUCprHUe8CLgLEPB1/iXvJYMO/qqgwRe6YjtF/q9kYtLbuhK+jskmRNrRmp5CzP2q1Kws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784067514; c=relaxed/simple;
	bh=sy4MKycjQ+AZrj6Q5RYCR0QKDsP6VqomQt9ITcr/ugc=;
	h=To:Subject:From:Message-Id:Date; b=ZuXwQkzby/uDG6NgfGZjW+DgI4Y0y2bd/7tbMOWCUseqdDcM7Qk3ViGO7FaeMePcwOmJNuTIxuUdNFoSzwSRvF+4yXSIkOj7ooDoy47FN0YEEcxwdeXdbGyEpxLs9nPxjInTHXASqhWcYWiOzbgG1bYE5EdigqkzTAK+jcfcMTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY+AFnYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY+AFnYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12DCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784067513;
	bh=sy4MKycjQ+AZrj6Q5RYCR0QKDsP6VqomQt9ITcr/ugc=;
	h=To:Subject:From:Date:From;
	b=IY+AFnYHQFxTfhP0ddXo9RLtxEreGR/vOcfoZYFBHyWne7mJZD7b91FFyyTRaVPO6
	 jWuJxsxdEh11ZEbuBnzWQ/RS0JqNp8Vi9cLuqGUJM5DvdErK9loGiasWVrQxTmtz1G
	 plh6Z5j5T56PTDq82oYW2KgUphSZMiDFrR4QapvpvAnvx8ACeEzim/+baOlYHnCCeI
	 Nt6FHk7zuLpLU896cCa8p06XNzCgU3bWyvzytpLlayt+BljCGFw/uzSlvrDj2x/72a
	 EixppyyHoh10uTO5GnJjSEJwvKkkKqjFIL89/EtU7XH/zejI010S4EdBMSEn4YEbn/
	 Mr4u3IMJ++uqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD39CC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406751369.23276.717908467796093111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3e8daf3895e3f616566000892ddf4355925a40772e2e79b911b88ed570ff8a
Date: Tue, 14 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784067513
