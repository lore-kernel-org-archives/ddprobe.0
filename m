Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D138F6C
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713642623; cv=none; b=FJKJDtnIRk6cQ71scuMtyQDLcMOv6cWJ9pbcCR2/DRaQyYB7cf30RIOnd/esB+IhPRmJAOmxWeFLCLIh0+XWSpGqx2g75A8JDFn0bm9q6SDk/d4haL3TdU+WUX41TkScQU+d+2/RxG0XUlRGfPIJ5tZ8gy8VzeJIc71550ZhHDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713642623; c=relaxed/simple;
	bh=FJCou5ImrXfmF8O3VYha28esMAhy8E17JoQ8YGWUMSA=;
	h=To:Subject:From:Message-Id:Date; b=R/qh9t0z2Vhp0rbp1HnXTNhUPtFXyhV9YXzqUX1uwCnUFt8YodrVu2U5YY8iHAe1avHGOwN1UeKh6Y4ao6S6cM/Fax+Lgl7o+0YyrY4nQwKrszaL/yh+HdFXhPcHtJmKZC5SWKdveU+5HwESsV6oX3JCNyGM6+Yna8fGb5d+sPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNyoJC6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNyoJC6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEADC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713642622;
	bh=FJCou5ImrXfmF8O3VYha28esMAhy8E17JoQ8YGWUMSA=;
	h=To:Subject:From:Date:From;
	b=jNyoJC6aFkskB/EoA49VG7WDTYevkD0HGM9zazyLD/R+NjiXq1ufbLs60OLpb5Ejb
	 eyEUsugwDy11mQljHnErKGnRNv2teAJLrzM1RH0ubkrr/oWkkNgn2Jli7xseg2v/JT
	 riIZTtfxx6JJd0whXnVAGlbCmKf585tiM6tECo6P8T2RQgyhls0DDzMQPvVIZAEr9C
	 jz08C1J0ut+ofSjTqtivE+u5EHsvauq2fmLV57fDXJTaZiOrUePSV934bL0am35NRr
	 GtHWKnQIJigA2OI8A3kse0TsSC+xSm0n8egeMCPw3evxBLapwExxvAnk2f4xX9uuAF
	 0OVA2vRY88dVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91C8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364262277.20048.17248534957239745694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2007391d4700f1656295c6929c13dd3fd6e6d05c28cb56c5776fd7f3be6d74
Date: Sat, 20 Apr 2024 19:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713642622
