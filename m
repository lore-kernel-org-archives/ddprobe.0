Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B82202963
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755347394; cv=none; b=RQTSuptX+4ryoQG2mlXk5dJ/8iCWFnazSp4DyowoPb63TR9Ljm2fKsm0PErHbCvFrE3cTNnvAScpSn1wmgyQlFz6SeU31VgSWjlsM8jBDhnXKC/R7nGXo6gH0eP71Io/99g3muX2cnqjFL4ZS2yKgdpPz9IY8tMQKKLPzl+DqkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755347394; c=relaxed/simple;
	bh=TZ8fUnwtcPNuqMOl6oCEVZQOG4nMaFcdOpVjcHVVbBo=;
	h=To:Subject:From:Message-Id:Date; b=BVEVSPUKT79BF8Yivg8QqyemmTE6AE48EvpXywLSvDhbZz+ShvPDrUlOzvmq4pcTYdC73jjfvpc2lomq7EJucHneyPhhxbppbGGm9N1Dz5o1CNbLiKYEzK0qVaxkI9c5EaNMhBD6N2G9mUx+ZyDPoYmJJmfMWX9BmCR0urDEK6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siWNGJnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siWNGJnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0217C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755347393;
	bh=TZ8fUnwtcPNuqMOl6oCEVZQOG4nMaFcdOpVjcHVVbBo=;
	h=To:Subject:From:Date:From;
	b=siWNGJnN3mgRHrD2bJGcWK5ebZktbGdO2WZjj0N8b4IVsLYd2yWjoT4d/B4Fq+vEN
	 YKYN8fHQMNyr0qUoo5XT1vdMyXS/1RIIH7A6nZpw+QfyMhmoRYIoqkYeQWN97SpRhG
	 uRc8STQ8W44JVZpn4MFLkiFrXXp9GCJNHP0IsRXBmTaFz0nhKKBdt4BZA2ZyXb67Ng
	 Z4Z3hyryAamlhggBfm8LvYO1CXL+8+rcF56NVEe3FB910zl4rvZCY2YoPruQfHYYWu
	 XovCuOj5NdnTKdSBTpZLwrOfQurH1m7W/yrNwIIfdmydjkrtN7kUWxMya3uSyG4uL2
	 d8o50D9Su1Xhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91972CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534739357.28260.5090457271116702338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7d58e528b734ee2c06556e277fa5a9eb9523fe7f0cd867ced086f0efa12189
Date: Sat, 16 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755347393
