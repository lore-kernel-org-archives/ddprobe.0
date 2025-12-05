Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0FC21C16E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764944575; cv=none; b=ECW10qUsEnQwqYXC4mQsLX9nYolDRUsBOveapKi7xeKT99HCKt+KK5eBwB8uyTEYE+mDz82EbDdj46YfM0ua+cHpOu0QgiUbdQo7HA5UIzwAVIETaMIFll0PejNuiBxARbe/XLFCL0uhgkL+9lge0ozGqz1/HRgyOcCbNRTfjmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764944575; c=relaxed/simple;
	bh=3BPiiUpiefy+vwBlU6ZNmsdgUrdtocEeDgjxhjskoo8=;
	h=To:Subject:From:Message-Id:Date; b=XzUJ1fNMBPSB2OLDE5hgMxDi6YTgeKakcVxfv8rmh2vszTK76zCamQ6UAsD/4CPQS5omGqTBguwipMFEWUk3Jc9NH79+OylT/Mjq9lh+TF6ghQOSN8C89mCm0mbb2VpUbpZZxRUXmRGBPcJbJxf0AxnR6cULd2ZBr828RqoMwIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFeEzwaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFeEzwaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D36C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764944573;
	bh=3BPiiUpiefy+vwBlU6ZNmsdgUrdtocEeDgjxhjskoo8=;
	h=To:Subject:From:Date:From;
	b=MFeEzwaA1ZiuQJvnaUp4yu5i7pWjnucMI2nnK13VQ69KNV36z+eqOGDDv95yBb3ja
	 EkrG6yQwIWQHQeiSuuhsCSmq32tOQnnNylxLeCqTrY4cu9Ebte57eg17tzgBOmRvhW
	 U5WmrUnbtXBfCHYeGMnEp68dFnX9br3+QSe4e2Kip3FxQq6N47MFbDnvhQ35MRlbTx
	 88rJD7gJHcZo6gBREaAtrl1lGMPGS/nB0VIWVXYGE+xAcUtuFUs5CiojbS6Vu4YD0h
	 v/PXY+zkRQiKil2e4bYVrbyPH5uoxYOC941ByDeG1w4e3w8O0RdyZ0eXe2cpW5KYPy
	 dReCAmZP/Yotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27D7D2F7FE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494457362.7806.11123109633456318469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7371693292479d9bb045b07b62eb48657fdd41c6c0a1372d4bdccee48be1aefd
Date: Fri, 05 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764944573
