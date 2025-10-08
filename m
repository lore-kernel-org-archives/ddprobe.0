Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11038246782
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759943394; cv=none; b=U+DKXj/jq/Ttq5oB3iYv78MCq766rJedHpDEiOuv8+5pvZmKCk0nTwZA7ImL9Dikh2/ezL3Tc6B5vOMdcs0TyionB9XE7/KJX0G/5MthCWJ214rrG7AedY5XzgLuKMmfx+mNfqSog0wKHYsBfmffWiiQ58m01uQfd55HhV3igkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759943394; c=relaxed/simple;
	bh=SCcSAFMDOiN60N9eIUBeh7KsweCqQsWCtWLyPnaY2gE=;
	h=To:Subject:From:Message-Id:Date; b=OdIUircgKB+7+zlvyUaSfEyw2PxsiRuOb+r3dFKTbm0iKLBtl1MCW9NqCNq7VXZIQrCWQP7kcoZbq3/c8l1J1b1x6pXQ/bLqtwGH2ewFVRowBrf2yXWWSmN/SLFKfu7+EfcXflO9AL3b14AdEg2VFkOSiWjI54fF/CZZvHG6ypc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9KakQfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9KakQfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E17C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759943393;
	bh=SCcSAFMDOiN60N9eIUBeh7KsweCqQsWCtWLyPnaY2gE=;
	h=To:Subject:From:Date:From;
	b=O9KakQfSRbqZeSzcoh+J5FCJner53ej3Ud6vwPIj/LYj11wH2lomuZk1RIhEig9BZ
	 n2DJ0p6htuNZnjE9cIpfshku7o9dkAU/cJRRY6xkS3h5FPUB1jdTGsrG7VwgX65tIP
	 BHeT2XDgsgQH1xVQXDJhl66d/0kP5cvDeusXOea16jxZ7Tr2UWR1FmkAOFPn8prN1l
	 fF8YqxscUxjAKn81DlDN1RdUvq26wxbnVMPmLS5kWGWyaFs8RLWqXEW7tWG7oaFur3
	 GtpPqFvgW57+EKznp0cmI7VDDhMGslzN+rZ1xZz/uVrTe20v0iZPrX4XDW+tgRYD5t
	 UOFUgcWxuHoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A34CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994339358.17833.8615277274542142582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faeb3ff27ddd7404f7298c04dcb68bb4bb908e387e6435c5cdc371700c66a0ea
Date: Wed, 08 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759943393
