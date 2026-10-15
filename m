Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDEC2D0614
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792071634; cv=none; b=KdCXit7AnD8Z9UBYUIaaY+w23Asp91b4XFm9X9XzxFyhvPUdfdl+MjGSbKSMnUShp2J8Ir4h7Sz4N6b1Ud9PShjSSAbQn9Dl+FSyLMSWsWmPbbXY3d1vUV5elKKbh9e/WuefZVwZ0prOzqu85/kwc9FwNAJqxzeq7CTfHU24jUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792071634; c=relaxed/simple;
	bh=Fa+LrYH5/nwcHPijUmLCBZ6hTXLDhMwn+TXjeJ51ZAA=;
	h=To:Subject:From:Message-Id:Date; b=MEHRbS3KS1vxRXdD0WWoKlH1hIlIEjEmNWgVR5zkDGDaWHjHfupv5KE6PGScZ37zCFHrgbfNtjESDB+vIo4Yvw+EWNqES7kPakcoqtQNwkptZWcGbYk1pIYRnMQPsx48fWvcwFwsYDRWXVOW+mxWFNSai9+6Co72Cb6HwMqdBck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl/6zxnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl/6zxnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792071633;
	bh=Fa+LrYH5/nwcHPijUmLCBZ6hTXLDhMwn+TXjeJ51ZAA=;
	h=To:Subject:From:Date:From;
	b=Cl/6zxnc3LoSsxzQnfBsedFdp34b5q7JcYuoW6Jf1s27QVnCAsjpk5QS4/eDAIEY7
	 2S869a9wYq/yeTlpqw+h40zSchFWzpwMtrzJlOgu3PrHZ80GdD5myKJMqLIPQTsVFS
	 V2vt0rgJn2SeQksEwDzmI5duXU7urO0rW7Pqkic+2umnYl7Ho7k79esaik9fgLtqP/
	 4FZ8pzfuP4blRoPgkppBDpaUD2dB1Q0yahxhafYrrF2/KAr53AEr4DUpuizqYR/wdy
	 X/z8BUKkxc6tDevn3aV/REYqtCqWhnlOKYxhBdN9CwACiZp1Lf2r6BUBJFowhmJyhu
	 hmfW9UPF2fcDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF0BCC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207163369.7828.6895894620863215275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f216cde836605a1406d0c9636b0acd082458de3f1f5f30c92a0a27a383e5229e
Date: Thu, 15 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792071633
