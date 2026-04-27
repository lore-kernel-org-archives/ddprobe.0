Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B03D2D0615
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777255654; cv=none; b=PmM24+Jei1IQcZYNN/5lGXmS/4DYppZXZ3eg1vK/Tkhl/AWECLAzaSxZin3V6S8J/Ybg553wkU2OUzG+RGVDWCQHmra2P7r75ADJ4NqJnq5dRYzaBMktUlCpnFht90gMrmynS1HhUFkNRO2YWFFXFdaAEpPYeG33i5nxrjQrhAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777255654; c=relaxed/simple;
	bh=bcaFW+GT1HLXVANR26xICWGe8pJZUSKdREyj+6K3J5Y=;
	h=To:Subject:From:Message-Id:Date; b=N66siSrZb/M4gTsHDX+IKC5NYLqEgVXXfl+CZ6kUDpY6CrYcTRcA979y51Qnj50HoOkwXPO5ciWVlmD2QuRnqfr+APA1st8JaqzhPccj5qpeYwQl45flzHdY8IVD/SaIS1cg/M2Y3JbUfKbMN669+DYP54mTYl6XAjvy63uDLOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsoH98iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsoH98iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2675C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777255653;
	bh=bcaFW+GT1HLXVANR26xICWGe8pJZUSKdREyj+6K3J5Y=;
	h=To:Subject:From:Date:From;
	b=VsoH98iqRV4E8ObT7r0ekaF0nHispQCwQ3pvmYZuqHhSQ15PUdv2mRFX0EIlicfSw
	 /x9FN1xImG+FaUQLxK5jMWmBaS/N752IY4Z2+jU4cikXShFUoOLCGgSogEmOK8sUH1
	 vBtmZCD+BUhPuOPduwSDZW9o8uu4MEGAv5TrpUpcNY9AeeLBeVCt+NUoadaOKiEz1S
	 P/j0P5lhgbCIVF80d2frzp8DfU6kT6GpRWPFIjVSbuXuT3Je4NvA0XAZPtc61OZAfo
	 qwvUEooo4HNajPk9Z+c4k5JAi7QyMuoadWa0HBBvtIsGrnZJZmLuC9/z0GMGGTHMZi
	 V4E9SZXB3m9Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF74BFF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725565368.13628.16491456436752869807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34e8457c699e7efba7301fae4d44353ecb9cfdc5bfe5f599e60b151f93c6b36
Date: Mon, 27 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777255653
