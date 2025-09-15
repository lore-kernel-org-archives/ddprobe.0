Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB39274FCB
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757969394; cv=none; b=iGjhMhcSZGoboJn0xrCfpu6Mte3N60TyBsLXqD9qm2RVFEd2e2GOlX9PlpmqdZxkKcxKq49SzZJfpRU56B4vpVFVnMZ1FoS82jKzV9QeW7Hu/qiz01u259VEaAdTwJilhfQyrs53yqCb4FNRF63oWBrPoJhP7pPLk7QvxsGMQa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757969394; c=relaxed/simple;
	bh=Ord9EE6YmVzgFXNsDPhOrtUOYToXfGSE0LWdqQP6cFI=;
	h=To:Subject:From:Message-Id:Date; b=GTe72BYiaiXX/nHKG2lYnv+mRGfppTDaT+31TvjRHo95biAXYlkK/cqPkBurFNnSDm344tWEOlLf7gXJOy4M6dQeaTNql7xFpvI6d48DkyVeE0rDe0TiZybgjX7oNAA1CybXkuhwBKsPVAbLJDRfpr+ZFBAwH6OHE3BWHVAnnoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEiri0Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEiri0Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757969393;
	bh=Ord9EE6YmVzgFXNsDPhOrtUOYToXfGSE0LWdqQP6cFI=;
	h=To:Subject:From:Date:From;
	b=UEiri0Dj6Jfer2zLcDtiIbuXwaazoJ3UoD+KvsxXDADj5VvJ67Rx6cJXGZzvYZgtV
	 5N5IWFQrH0tjG6k/vj8dOsdS2x7JK8l/X5QddhKg5JfHuZgduazt+Tu7J0dOAm0GUZ
	 9rAZRjHKtV/DVb7j4DgHgNJGvj5n8p7MyakwKR2XdhFK3go6zQBe1O7YvN71WJQC+E
	 a1G+R+29Rhhm7Id7FB0gzEig8N0/cny4Nh6CqiMPJtbgf3haMNuRAQvZCEcg/vov1x
	 w3HwGlMrsEUpOeOlApKyTKPPpokQvlDqPIi3Xq81dFRSAR4e/9hpc1XfbdwpIiodSe
	 Oi+krT6Uih86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9580ECAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796939358.24701.10994147430807850181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a213b90cce7eb8e17735bbd5d25241b25058dda351ea747b3d923686d816b180
Date: Mon, 15 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757969393
