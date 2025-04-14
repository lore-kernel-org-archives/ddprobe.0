Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5522472B1
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744655394; cv=none; b=kwutozp02RHGgHCFdTEgdipw1cRWHzr9Fi/+WzR+yUjbJyiv6B2B2UsPBhe8rZ2uwDzKeuj3TRR/NTrKVC54+FAC19a16xcbJl6BMIIIbYe3+3D/LU/znvb9JNHKvSaJxd62siK84N4rjPiYUdsPNJ92lkYO42Ioo72+VwKVUYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744655394; c=relaxed/simple;
	bh=AB4rhPALdJZYcp3ih1pL4fRaj37m7P2e3QMK/0C9V8I=;
	h=To:Subject:From:Message-Id:Date; b=pEvfx7EXRUU6yYGyZZz5G1Kd+MHJ6UqEERoX4KUWuesCKKUlG7NwRIoavQr1jqJJsZEt0BIfAXCCm5YEok3rIccbKWr/2N3z4x+iFOt/dtQr7sGFiaZgAESNY13v6dQV6vapbeJI1kIOH9uduphZWqRSU+vh7GtMnEFk3UzuoBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clTiaOlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clTiaOlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F46C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744655393;
	bh=AB4rhPALdJZYcp3ih1pL4fRaj37m7P2e3QMK/0C9V8I=;
	h=To:Subject:From:Date:From;
	b=clTiaOlmK6aHOLeZYy62jNxQMV48NG3iPtik8M0aUPX3qxkwUPezit6WQEqp9yh2D
	 XBi2J7BqjnCB6rRtaQ/haw6pvFlEF6qHwqSaSMo24oMvz/5py4XmUf1o4fSsvopKZo
	 6X0fJhh6IXzuFB/yWxqNbBxmH5OugynL050/nmT3zyPSUpKEVDRyLqDRTrEsKt6O8n
	 phyOvHxGujxwACLViojv8iEC7Yf8eNuIwrJBZkAWJWWTlmdcSaA6ozFqkeppuoIV6P
	 sycf6gN/36K1Gkptrzgz8BWjWRT4URhsV6bEg5c8OoDsKTQREx3I3ysMUYjEiltOOn
	 TM1Lpt1Bg9wag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C93C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465539358.11393.16191688966747411277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46d634919ae4245191e1017bc54daf14ae960384a2980dd47b1db65b633bb5a
Date: Mon, 14 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744655393
