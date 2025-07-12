Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3628986328
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752296394; cv=none; b=gP1ks5XYSi5A1x9jvRl05hndbfFJ1mHRbKnDfcssufUw5w+mmqs4zdFpx6nyK5GuiUNkYHB7PDTsQIMQMdIiwZEEwTkmB/HD5E2+JM33OzD9dmJpoDj1QK54DPmnhSdZmKNEMRVOD+edMNjRKZALbpozJJGVPslhNEivbOOnEBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752296394; c=relaxed/simple;
	bh=0E3Io9XB8ywamJ+boU532h4Q4yz8aL4ynPl3HbZ4RBA=;
	h=To:Subject:From:Message-Id:Date; b=AUvh7zo7JvdAjRmv85v/YzRaDJE0mpE6tXG5X7XzOus+GlfSwEXfcXabrdNlYgwJOyJQSf3HcFRKjZvnT8cq2vmSRvB3NQvKzLc0/NyV3GpXhDjHeGPNjgdCsYsdD0/9yTMKl1r1Hj/UIbqilRbCCL7AjVC8Q+NEV7zhIPGHaLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSSogsSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSSogsSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A375BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752296393;
	bh=0E3Io9XB8ywamJ+boU532h4Q4yz8aL4ynPl3HbZ4RBA=;
	h=To:Subject:From:Date:From;
	b=pSSogsSMMvS5PUPrOxAs+l9+e1SNbrTkLWfvVwecpa8VZqcizuci2+AQUkrTfobSl
	 68x/fRZRiCgBKC3BtPip/lvWlyjzLGKzVm1h8sr+ajB6NrghWHTCCAFXoBSS3fC1tX
	 JWyfmPUxMHI6t34CAzfe7HHArZeD+bmux6RdoCkhTRgV3IL7S6F/MPtd142oekwPhu
	 BZCug5MZbXnrrVgjJTFOz6Cii8cTs+e1qoBjk6sTcTJHuegITx+32iveQ6pGI+ZRGN
	 60t8hM5610T9QecfWnyhQOEyTe+gEhf3pJGz+tKqwLPiaQ9t+zVjfZp1i/zR5iRn9O
	 pHgVNE06Zp/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189EC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229639357.24471.17495601590667482915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1944d0ca6fbb51f2ad690a8362f85408f8cc2bad361335ec905cad661f742439
Date: Sat, 12 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752296393
