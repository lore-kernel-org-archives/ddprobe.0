Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4249D39FD5
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712995163; cv=none; b=bwTKYg6620B549EZGgkbdT0apAaP8lemrWQv3/K7MgswnY+Mmhlz9d/dO9FRUSJFWiy67kXfYUhxhjDUBthXGKfBHeHzulpvsaWQNjbNVpTSWrDgZAOd3dV4150JJtj3RP/ueaJadFmOthhOJ97ImFyg0m7lX7Bsi6Z4ER6CGKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712995163; c=relaxed/simple;
	bh=1whoYVp08Q+jiLocP2ebXqlVzOhSEbEXX1LoHbjbYTI=;
	h=To:Subject:From:Message-Id:Date; b=KvBSgH69z0mURX930pLfT7j3CRgPO/3IvxWn841/IWd/RrlVfDISgFDqvn5SaCA3XridUKJyPsCT4MiMoPNs3AMIW/fxDz0FUCZHpmLG9/ktnIF4DPe6d7OP6XCVQJowbrr3Tg5FhlnQhbJWinDGvyJaBpObYA/pME1JVzY4XGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFZZEzkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFZZEzkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CDAC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712995162;
	bh=1whoYVp08Q+jiLocP2ebXqlVzOhSEbEXX1LoHbjbYTI=;
	h=To:Subject:From:Date:From;
	b=dFZZEzkV3RN/RQf/u9S5QFGUqI1AFzeEuzSWHJQzK7+ye7B4VIkmfx3Qf3nMebtiR
	 m6MSOliIJoJ2kMeDXpZg2lpRGTTnpTq3mkq85Sd85h/A3VXG/crSg8j/A3Qjcm0qmX
	 osHVpXaMNlD+gof2PmCnX6ga8tF9tYKi85o97qPUdqnu8bQkG7A7HIfwx9EKezpt8f
	 q8sjd9U2mFm62fj9rTsBUDsrP7uiwR3l1/7t+hJQDsBiZbzzR36KM9M6rKuBy57Cbb
	 UMttrSA4rOkVwvtEOME7oID02zixar/p25VzERZey+wiW6VXVq8SRmjLajCHxPq5DK
	 CDfxOcSNg7CRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF35CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299516277.7159.12500045237150535685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e58113403566e99ae2309754c43de3c9e3b052e53bafd8da200d16c73b060a
Date: Sat, 13 Apr 2024 07:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712995162
