Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5904818A95C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726697754; cv=none; b=Wd4nRsWRgNIYkwYjzhR9aJKSzi3IjiKZbyt23NEPlnlM8ICGYyvlcs6+I7nneNeRJcSivlN88jeA7AK6u0MAF5kqOjGwgRl6tP+tVrGwdv9hNZ8bQwL6TQp2b9elr8AM0yB+dMEnz2XSGVPoKoijhUVccJkqZDNlXXgkOSz+2Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726697754; c=relaxed/simple;
	bh=8O9wVck3K9DySA5xuLt/iKnpJ1LnozPUglW1IAnEyws=;
	h=To:Subject:From:Message-Id:Date; b=ZszWP8CHNuRNnoii0YUAb55t+q6mMcYj0JgTGoaLvV1E5rgZHYPRIPSV0iedAbRKVQFAHo06bgNMHYEzqS+XM+qdXoD5BYLEM0h2T6GaA75On/QWyBDrL4cNl9XemhX8fAXbfHmUip+Oye1KHDrh92oU0gL/BjeRfVkcYTuPQUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/mXORXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/mXORXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B973EC4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726697753;
	bh=8O9wVck3K9DySA5xuLt/iKnpJ1LnozPUglW1IAnEyws=;
	h=To:Subject:From:Date:From;
	b=U/mXORXrZMJEvTcqYc/aour0bsyMha2qDgswdjPZ9YHB3PUyIo937bvcLSpgYl7Wz
	 i6FbUufMZDh2BOYPy/8GWtFZ8bCb2peBnnwm2fqziaZi5t0oHaTiTJWgIPzZX20lMm
	 +5lwdmQPqb/j/AiH8akWj8WPS4XPxDZOZaeXGZFcFs6chFJdR45r++qo5AbVj7Vs5n
	 RS/KZz783KBY9uTFg1Y4OZIhasT9SEZP1ItuVvZvdRz4B35PnbtPdjxPKlLXF1BtyD
	 xtLhth638wPVHlOkdEo+3354uJ6r7lzDACqvsRipfK//AYFmIcKmZMHuTOpcmvsLlz
	 nzK8DTL9qUPwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D362CDD55C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669775363.15101.6564169376054287895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0015a50ce85aefad795af63a96bd9d0d59138b62afb58942163b3d17402acf83
Date: Wed, 18 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726697753
