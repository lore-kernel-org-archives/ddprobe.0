Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E52C1E520F
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752765594; cv=none; b=a5mnytqoGkki3SGmc5aLYVu/gFiEWV77gqvcP0+vjERfMFraaYezOTxQLZJMLxqeZokikKjjyUeKV5xgHP+yIApIyGvlZwt6yz+rlHZn8EkvAsWOUKyvLD1KOro6acFBcLimGsaHp75UrFRGbecw/NDZRVpZ/DqTB9BSuqIEj3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752765594; c=relaxed/simple;
	bh=VKb5iWktEpTee2DVEWBUDY0XRqwjxTFkyxuIkOmjK90=;
	h=To:Subject:From:Message-Id:Date; b=ThasXLUKjmfGPdgiQcWAZklEWJ5vjchttBXACnYXl0jC5ebZcXJ6+0/kayfF5cgwUVTKAeR6+eczaIzGoB/+11xAQesWGfoZZcqBGXKpfRYZGvPSMI/WI8c/aAcMxnXgBj97XJwz79vGKeDLpnLWLIt4FegzDqQ84T9sEhLC+PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK//sKWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK//sKWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB28AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752765593;
	bh=VKb5iWktEpTee2DVEWBUDY0XRqwjxTFkyxuIkOmjK90=;
	h=To:Subject:From:Date:From;
	b=sK//sKWSLVyUPzTRsxzdsDGrSFJuVbKm8ar20nXriVtfx0t7Ver2Ng7wL1l9tVBxA
	 EtTD+5SyvRDUtUpRPA0DgGMPpDjz1Ybz6eKn3uk5poA3Sxim6ln5TGVmzMdA686iqK
	 v/Hp5xWw1Jv+XnlroyoVr88pXr6J0w9RfGaXuRVCsRG5klAX82v0naOQzdRpUi9bu3
	 qRRYPOEj0SWtc3F79gKmvA/DTzWXOVfErS8w96HU6uWfLMWVDndMyA5ytrdikmdeFp
	 EcBXKmANAvTRqaoYMnu+qvjVdcbb0nEgBrwuGa9kA9WJEiwp1KFDwetCR7SUwGOD9Y
	 Pc/8OoeF+BkwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5C4C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276559357.26027.944736702443254638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1bb602c08997079a0a51cbcaafe0c8fb79e16f25a9c00f8793ddbe4accc2a8
Date: Thu, 17 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752765593
