Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E97B3D64
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718336903; cv=none; b=P8kBmf6tMlj7XeCTH1VSzty2iLHuB6IKbdnjXFdHIGAgFdm34QMjwN8EQWlUtqrpHzPAINEoQQaQ83oegm8wA9eCiJoRcEAiMd+D1t3XN+UieYQsxBjeq5l+q/YAjo1Jdp4yw7kT0NAKvHFMcBnuxtlz5bItYYF4AcKqzeWMvAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718336903; c=relaxed/simple;
	bh=gVnTL3XtrA8E/MNfgFwmkNHtWVnM6zy3VQC6J1MDjds=;
	h=To:Subject:From:Message-Id:Date; b=G5HPuGlI403NNfQ41mum4E9AeM44n81Mp27couiI3tiHB4uPRFzTAF6KV/HG3KMq0Xydd2a3R8GGEB0lIRTf+r3hsq1TrR+Wts7O/LdSkmyOTxDB0XDvlOqsQ+J/F68ulWJiOWRXQ79dCSlFKGXDanTKdNAAtKb1651ELSoyzdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsJU2BE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsJU2BE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB85EC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718336902;
	bh=gVnTL3XtrA8E/MNfgFwmkNHtWVnM6zy3VQC6J1MDjds=;
	h=To:Subject:From:Date:From;
	b=SsJU2BE0eWI02elq8Sah60qCqLZyRoj6m4RKOntONLrKQ+ubY3DK5bXhAETupKseK
	 6TxV1Ho+XFtoIFUwVI1M6skGrpZlABQ4ooUEBEvS5alq9z/JeI8ghFSZ72nIms5mtK
	 kLAZvDLeX7qVo5KHeeTySxb6B9fYlf/SgMpaMpgZFly89l1zeWtp7eaa2tkZEeB9t2
	 Wg1zfKkmqfl/pzvwEBsXkZikujXIQNlN1j1kVtLiczSwhqaHpLBiihBOZ+MbmnNE0j
	 nQgi0EyuirAuOlyvxhaVGCrXilTLcMU0/rjRGltEp2YjlrOPzPan/7mU5BzZEyEOyo
	 cD3sZ4Sot8bbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C4BC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833690277.25936.14156372938035979333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72835abce60121ac73ae15ecf1a55059526ae927b963c98716a614a62b87269
Date: Fri, 14 Jun 2024 03:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718336902
