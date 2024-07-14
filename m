Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0A81BDD3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720965623; cv=none; b=iO3MyL4nmBUgjxI+wNIdKfzctg55FIvUKAKVoKWG6ZN1xeRErJY0eOR9P5p9YKZYN7c0yxtDAgmySl7v6cgKAFEwpPn0kqXHoASYvEDlcfUgWthsE48cGxjHkVRGxzwUhhco+swk4yyhsmVzuU95aHCD6lpI7hJHMbQUI1cJCtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720965623; c=relaxed/simple;
	bh=rp85VKQQDeiGTuAi51Y+aPYffV6gqNIByAe+whxGn/Q=;
	h=To:Subject:From:Message-Id:Date; b=kZIT0LOvgvT42mnyg1WY+OwAUUsNQLXRtILRZw0ZVTFH53VR5NvF3/w431uC/wVmqNcrrxb/HxzZXoylElEsyU2jNrM3GYK8RXAI1qMACcCki93Pq4yphlJ41L3+u6xR3PShyaLe/+LpRJpXch7sVywbAKCZbOo0Z4nvxTHSvco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn6Rek3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn6Rek3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8723C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720965622;
	bh=rp85VKQQDeiGTuAi51Y+aPYffV6gqNIByAe+whxGn/Q=;
	h=To:Subject:From:Date:From;
	b=Kn6Rek3bY2qjGwrYsyUT8/nnLvLtFmswIPnNUUV6RrUgYG5aLY2T+0L1HWjaGCvPF
	 5va+JdjJ9aZaOx9gsbgMoUaSHvOKifmvis3cb5isZ1muEhbiWNe6++XnOGTKpJW8Tq
	 Ttazr/JkDg93Cm3UXPjemcsZuhpkHy/mNe4eOeNrC5dGQkplbbfoZtbIqGJUvpYrUW
	 BPUhUp62dQKA4xO3UmdyXHZLTqfJr2glmhn+u0I2eAsSNxWXaERuyujN/WslQ6fP9c
	 x8r4H03wxnA1gylSp3alCPDCeWtGxCrKM6+miD2qHDxPbt64k+M4249BcmPJ/pq531
	 VqZIDYimGoowg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D1DC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096562281.22185.5282862429952984803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83c8335a3ef82882387829054a6dc3e90ca961e2b0a17adc6974da6adb8efe6
Date: Sun, 14 Jul 2024 14:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720965622
