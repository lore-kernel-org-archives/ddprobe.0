Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152452F9D85
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766099034; cv=none; b=hLTjJnLDdpuyc6PcOPjHGWkaQZW0TK41+l1xFZwKgxD+hcvgAN3nKhrUwM8ihTXsYZQ/V6ZDTjm0s5btwkYeuCgUr3R/1uTi98GDZ5ZfeaGGsKkc8t297O7KBTaPVUK25rW9EGa41axo/uh7oZhwUPhqMFS6XaXtwm2MeHHxDrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766099034; c=relaxed/simple;
	bh=8w0ot50ez94BxE5W4SglifFCY6XSgrFnJnsOiuRfHQk=;
	h=To:Subject:From:Message-Id:Date; b=fOdJAzi3DgGSORiDD5rXqIH/Jpn3w7WgJZw/+EGsa1HrNpPDsl49/O6XUSQOga2oOTSLncpgv32AvFh8SNarDGd6IIcjc8oW7bzxyOltyWjvA3jiDJDuB66QJa/v9y6//pa55hMuAiE/skvgo3k8dFDJiJXeHzNeik48yhZfdc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+ORv+OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+ORv+OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135FC116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766099033;
	bh=8w0ot50ez94BxE5W4SglifFCY6XSgrFnJnsOiuRfHQk=;
	h=To:Subject:From:Date:From;
	b=F+ORv+OQ2ZkvPuM/pTkpLntg54EeohJt7SG55FWgQ8upLgPzoe3Xt7o0bAdvP0h/W
	 b4z221YCcptF+TsHcs5jHyDLjAcrrnAkK+RJZTK4gbQnRWSDM+kSU3+Flrm6bwESD1
	 pV36Y1g+Unk4j/ZhQ3snl5J32RVr6ZbBhPbVtMJVqJ9hjw0xuVtTRgxJN8GtY40sMJ
	 5/rjdKbckZwj53HpOX8J/QhgmSEk44nzxzRC2zyemCvq5MSGRHxmjE2l24KLTD4mb3
	 6M0jLCmodsP3ZblL4W6r10uoIoR5nAcuMCrJGIenRCwH1+3pd/Ro73HN+NS/6/WQLG
	 Zb2eVwPfmHSuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AACD6E2B7
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609903358.2558.17968278545507289979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e00c2ff71138370adeae1abc407a58761d5192544c7b9114f9a969a562c9d7b
Date: Thu, 18 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766099033
