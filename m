Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8B3171B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721694353; cv=none; b=qA1HdzdxddX+KRAd2QgRdLzT04T0rf2AaHFQxQO1cFVXJWQRizHxJ8PvWJEv6Qvv67px4KijV78Ht5QBaFCCqyAOM5KRt5vUowIE7KSoYnOnks0PcD9PywQQ4jv/9RgUbmGsJlF0+08fvnyzmwzMnnH8voTKT6A+oLEgDoYxyC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721694353; c=relaxed/simple;
	bh=pUvNJ4KKkj2pRXPjMX4u4v8GIcuCzBYuRTK8C94BwxE=;
	h=To:Subject:From:Message-Id:Date; b=S59nOBxw55uz6+WnFJxX52UkIRPMblsnmrv6ITRf0khp5NxuaHIQMXE4R1+U5kpYfJPLaKn9Qslo7cGHM4vwaY/6WZ5iieNie3JHopPK8TLt1FNm6gSDsBfICgZChwXlz8qsTdygziGG0oaN8bPGmvvTf7rPUjNiuebplPpsrkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5jrvJCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5jrvJCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE36EC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721694353;
	bh=pUvNJ4KKkj2pRXPjMX4u4v8GIcuCzBYuRTK8C94BwxE=;
	h=To:Subject:From:Date:From;
	b=F5jrvJCMZlmaIIAK/s86/W989UMIaFG70CG3TuvrtEBo5X6WOwE8PC1GuFEyJh8uW
	 TvsHTafL9k5R1Uwa1yUoZNf8YbOeb5XQreSPNbZMqTTNqmBA1NzB4r6LF/LLYPgGo2
	 OZ1vYpdbXFNaLVrMrEQ+zq+yTmmKeM/LNQdvcOI/OXzjBaWBYALr6UPwgZdUtZQhvk
	 E/7iq1BQ8t97HmSzn4YFnMvvsNpSLGw8mKf+eQQ+b3UgSWED6v/ThEeFwZXQlK4zkQ
	 YxbXbXucQX2uyX/Pqwn6vpjTlIBE/Jtb6xHnmXTZarY/dvP1S3RMekYkotsxr6NdUa
	 LrimQo8dVuvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF58C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169435360.25439.2858174398914964667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5e60abd604aa6eaae5c5faf416bdd39a797fd0c30e3e9d3d2604e15d20b7d3
Date: Tue, 23 Jul 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721694353
