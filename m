Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58927195B1A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750298994; cv=none; b=Dh9M6b7Q9Bg49InrDw9274w9Qvw7CJsZwxeiE5B88/9kSE78iqGsmBPmEjlE3tdvq9zMBqDoQSbrtP9ItHL83uRF1vwsiDf/59jlLw7v9MbeyZo4ecoKpIO6+uSMsWXYNJAiIyyEhgV8EqIB1fWKL040HGI1imnfJjuRjsVdq+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750298994; c=relaxed/simple;
	bh=ClQooLxcBnnOToMVBhdnn5qu6uwMXppHWVCvW2pghRI=;
	h=To:Subject:From:Message-Id:Date; b=GOWcO20bUU2zcTEzjKQgQT1+hKsF2VU7MdsMNOjeis/xe7N78wcgYGjHG2gkal9UiBEhHu7XXg3l1JKIWQpZcf64tQH+9BJB3QIMu9zPs6aviEJLMT97lP/RyP8v6Q+IvmFYiunqBi1CLJu41Wu4hSvdNs2S3oDEMF5yv6+kFjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO9PHBSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO9PHBSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B4EC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750298993;
	bh=ClQooLxcBnnOToMVBhdnn5qu6uwMXppHWVCvW2pghRI=;
	h=To:Subject:From:Date:From;
	b=DO9PHBSIXvaxbCLjC0urFL3eJoxKo1zcSAC3XP/qGBQSMcKLGpTtZ7dq05DBe7rvJ
	 rQbTmuj2bAXfd1/QV+QrF3g72szbwImPzEMf7yVQjmERYNkOogiJkvk+pOhmLXrPmK
	 rGo5Jt6jTBy5p0VmWhXDP0cBp4i7sIHpJvrwlPal5+dvnaO6eulVvJNabhh1m7RQUF
	 Qn2GuUuzaRW78UnP532ns4mMwS5DnSiqkvhNczC1ul9N5vjwLojbeZsR8XTITEdKwm
	 IfjBz+azhAL5CikKMscGeHw3crBj63e+iS7CA7f/JLFluXVNTCmvAadBtRvQn8OE4Y
	 PsXJeB/C6PotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B42FC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029899361.1873.14393232141228112397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd1a700dccaf6bc641dd9d0a16e9ab1ebc70c12b343140c956b542783527e70
Date: Thu, 19 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750298993
