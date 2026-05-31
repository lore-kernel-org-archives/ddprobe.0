Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDAF34FF41
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780240474; cv=none; b=BECs4BsHONj/HBBSGkQhFL8y8H/YgLNE0AtxneJNnecuVda3WKBZdyjRIahAgOTv9DvxxawrJ416542kt7vgFrGGLfOFUPYvMonRpiob87TFmx4MmJkCK+OS1bI8W4TC7K2cEEE6kvocDb11qYkphpAPIyjFkSo60P15QuIy0t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780240474; c=relaxed/simple;
	bh=OJyGuU/1xN/FvVyQf/9K4u8QLhe+lelWxSfvVpynUH0=;
	h=To:Subject:From:Message-Id:Date; b=Ib0FlBrRQK8y4olGfuJNXp8D208d8xBYU7X1sqx5TB+AA/4cj4f083uqC4mv6n4wuq8kyE3UJ/+CNCCv18O03nvgdxSwknhpHS6BMs4eH6gJWULVv0ZOYPfME7Zq4WXkIz2V3l90Mn2J/Fe6dArHcd4CgaU4lzahilYn2lGDXIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5gXtsFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5gXtsFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC47BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780240473;
	bh=OJyGuU/1xN/FvVyQf/9K4u8QLhe+lelWxSfvVpynUH0=;
	h=To:Subject:From:Date:From;
	b=b5gXtsFGMyJEpQDKqcxSxMBZuubeycar8/7j3sLwP8PBGFIakFRpQyrxhyPrNDemG
	 E8L4NiiRV194gch0gc5t4KTNdQJv4Wf2ZYUbRHvsPQpAzAq6sRsqln/CAa8PESQGve
	 1CA05bHKIOmKs31g/ZDlmkjxgUB9vE71RvZwzRDwcSdwqx/CKazSC2olHxgcy14ezY
	 wTsxa54MeT6vf4l/yz+/9+8ndJt1Npa6YScntlMmaVglJCY1arLBcQg9wo/+6rvp8Q
	 BkaqzeUarjlywqMRPCE0SiWGTvaX8ss2WDs088iFahxvfTxGzRk55B37RsSPYFSF5g
	 Yz1ycRTuHk7hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB69CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024047369.32470.7849963315389304983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b747b5941bc0ea949df51ee1b23bdae5316de490793880de280e59d9aa1d13
Date: Sun, 31 May 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780240473
