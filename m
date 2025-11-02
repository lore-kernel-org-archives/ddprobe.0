Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5E01D555
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762087194; cv=none; b=JePkgbFQFYrFsL9cenfdnQ48UI2qaLjQpoqw9Z/lAv0bN3rtYsfRUy/gsVA1tO15zhag27/4vc/joigydiB9Be/fe/C8Bg83caiLCmcFFxNqih/6FJBOpogaGAQrmX6vWXmOMlucTm3PvHAzEW7OAy6W5/+h887YiWkrIz3opJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762087194; c=relaxed/simple;
	bh=8350T/diXGfnCB6G2giN1O4qGZZ+8Bwp2VfLYjB1Ppg=;
	h=To:Subject:From:Message-Id:Date; b=aeL83I+SkolXMd1BoPVEheNNei9ftDeFkXUDTavP90ZQYxx92bOTH7iA+OcrB9yo9p4r6GgxInYgSHVdtJa6AkRTlM+xzhEUdAz+LTS2reukn2kjihAt1DQQRaB9lacocALQOp+0RDQXxLkkUvmbMSaTykvarOzQks1F8tZnG/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuR7kA3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuR7kA3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DCC4CEFD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762087193;
	bh=8350T/diXGfnCB6G2giN1O4qGZZ+8Bwp2VfLYjB1Ppg=;
	h=To:Subject:From:Date:From;
	b=KuR7kA3UJS7NhhowquhXeKJgobYJHRmg/xCInFwDLGXjApHDKaHMGiHDzv3IXirG0
	 PPRpSFAdp274GDT96+jw9Q5ubDYd4Euvce+PAwbyn2l5MGzR7g3BDlWVJvMWImbeVj
	 pZDiBtY+kF8Qeni7miaN6bCNyhIyl+f+JTR+mD8JvqJwNOULqJHIOzSbwVRq0jgmeJ
	 4Nx2Nx9mypnaxzH/az9M5dZNbngbzg13kF+I9avpuOfU0EPyQGw5jo6DTplqKkGfy2
	 L/dtARmjEuWBZcoRSep2Avpbt6YcZo8KpmS2GNO5+Lg5YmoYsM5rNeUVRbXfZXcCVN
	 7ctpqAigdf//g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995EBCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208719361.9373.1487203747336562835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d136320698b49c578592a8b882ec160b15c5837c82df2cd658ae2692929d71a3
Date: Sun, 02 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762087193
