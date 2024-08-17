Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37548653
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723861554; cv=none; b=ZXT6ZTYSfeKqDFCSdEnJ18hW60pctjWZlNm2e8I8voW7OMPRCncPq7YVRZoi8UPobxGp9HoD5kaYusre3qUmNnJOfg3pVEQ/1kvIWAR/8tCkGWGdGvpmjtOAH95+uMh1U3PB5LmEpp9rVUh9l7azfrWVQblk5xG2grKExHPmM5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723861554; c=relaxed/simple;
	bh=p48BWu6Hjl1omANhbvML2o497dxtrN/CS/ms/7sOcfc=;
	h=To:Subject:From:Message-Id:Date; b=hxScd+xsjaB2QmJcqHR4sfEjDzIGDCOPvArEPByssc1t4/h0BjTwWc7hIOx4bFCySVU+TwiCESkn4V9BD8RYti0dcMdmFbvjUz9A/SgQiK7veMgIinn6GtfJmfrm+6J7rz+uLDCs0iTnvkaRgRd4NTd+5qYIeK5XmynITbtYqhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbvEgw0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbvEgw0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD01C32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723861553;
	bh=p48BWu6Hjl1omANhbvML2o497dxtrN/CS/ms/7sOcfc=;
	h=To:Subject:From:Date:From;
	b=ZbvEgw0bvDFMDoL0MDeDOkgm4Lu4qfanWaqBf9aPoxx++h0YtGAIML8K9JW4MO7m9
	 JjpMb/U1yPIFp4TdlH/uADIx5kTPdsZK/4UtzWO+fXOnTAz+jDpFeQX+hVBWAOmmcA
	 j6a5xJEEgbx2wpM1S1Qg9W8o4FsJyiwOqwaTRv2C5ta0qBk2ux29CfWx+aOd5dPEY5
	 QPkE5836LM01gpR+vMnPN4tSXk/7RfFjNgrrQ4VZkXNILLFt9J8Da7rUmWH1Ks+Qvi
	 VeSe2txv6iNSCBtpNSyMKJ3uXAit2ohXI7d8islUnkpovKNStGLrS75BZ4xhjDpFhY
	 MzrVGzCJi78WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98426C531DC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172386155360.17370.15141469913535052289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c08f91f6f717c5e714005aa1aa3444c71f906727f9369753e6e316bbb6b7fc
Date: Sat, 17 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723861553
