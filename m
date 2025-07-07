Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACB321D3EF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751876394; cv=none; b=UpYSnorqsS1ClQUc+M10DZrTnfO31vsHNu5mtyRXifAreJdyQIZZzzDy183AgonukBbvuoIc9FkjPGLqg2O76J0JofLBOcmiC5UuJoX+kBHMCj9KuS+c7LRelwxAabE5hflSkSdmtqflzHesKjl8cmMbLUAuQ+U2Zeh+uyoKfdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751876394; c=relaxed/simple;
	bh=6S5Cigpys346p8ptWn++KkgsopSOFpwV3LF+6z4OIHA=;
	h=To:Subject:From:Message-Id:Date; b=I1GBaNcCjuyI+jpyueD6lL31gaKzMiasRLGPP8jZiWNfrxu4Hmsn6IoL+8ZtWeExcITBsI+yhsHyfn8ICbfkuDozTJqXxJsIYxmHnTPKC0z7jCfHQRyvOWDiwopOFD7r+hj3yMRvflfHiZle/0dnHHUeBe1WchTU+YrVdmiWXxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2RPVPDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2RPVPDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3512C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751876393;
	bh=6S5Cigpys346p8ptWn++KkgsopSOFpwV3LF+6z4OIHA=;
	h=To:Subject:From:Date:From;
	b=h2RPVPDQijSpzVIzK1kNIsxaTSfo1x6/4dvR76/st4NACo93FGoB6OU+7qqo3aNxt
	 iGra5QkGU+fzhsFaZsOM2otpgQ3ye5tJ+X0KP89ULhdIfDjGxpAR6vJjlrdSsiaZuy
	 6ReAl7f744pTyilp1NYgwSbBl4AE0aRRXmKG97TYLasG2c3Ols8olO/RFsW7/V+Pof
	 YGyIfXE9NYsPBw41aHvFT2431jnrdduqU3rX2ICrPTlgo8twC5MilIVEWNtfDBgzhy
	 4wu8K9gdILyfpbKmwxgYlZQ6vGVl77vCKx6g5pWsC7BcZPQ8Vg8gi00i/f5N7lPRZ7
	 9OzHma3HIOPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C0C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187639358.19100.1053422971462898755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adc5690399ef74a670e575ff2b9a8a3844de04b2a2e3096060d953fa1b6e895
Date: Mon, 07 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751876393
