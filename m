Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2850D2D3EC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753882794; cv=none; b=vGZduRy29Q5Dcz6Q2INV7N5g/br3E7R8N8+HfP25DoBhECPR0U1jJgsqwNy+g41vpPHi5dXAoKvSVR7MNmi/iATOw7B0b+iRzEwlVSrU9nTC8CAhQp8FIY3W41sl7iCPR0BbnF2k0t+fI5sLGjpNrnatJjoyAjP3YDQUoBsyiN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753882794; c=relaxed/simple;
	bh=Ykuft5HkSnoWYfq07ooZS/XIYYKpD+eUjd9u5gy3RhA=;
	h=To:Subject:From:Message-Id:Date; b=ZeIJqfVXaVwoiK2ca73jG6xR1ROMoI1qo5rAY1mV6nsvAPB4EZCH5THoRa6U5EjvpkS/7TgEelC7ePUH4gQ5F50x4aR+W0pImOA96AfNIruxrWPEUKExOS1SowSE0W+9LnMwqMiOvNTeePwph1uxoDXu8lXuWmpl2fvu3Jpzz8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnQCrhDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnQCrhDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA83C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753882793;
	bh=Ykuft5HkSnoWYfq07ooZS/XIYYKpD+eUjd9u5gy3RhA=;
	h=To:Subject:From:Date:From;
	b=mnQCrhDd5uINPL9RwXeqOTf5wMPIBOET3nsAojt2vBNCz9IbDBgMMFjeyJXiBOYWR
	 OTqBDBzOT2Olucd+kE5+OqV+7T23EgsCaVcC4AGu/a6cSt93oyeN8G8O+dKPtcxshI
	 vm9bkQL6RyRyRHYIOH7n5DY6bwd6sCZ3EXd0jBPU4h8UeibXIK7G1DzfM0Q+lCFZAE
	 GYzKDUyjW3hNvHdXTLfuJOumfXQKImmvy0FwmOXX2J4hWb+FvbtzRWktXfetiU4iOI
	 XRHQmwP3cpQFTzDg7j+GSXDW+rtNyfaXjNglZKxmOGcLU9Bsg4O7S9EROl7mlKWgsD
	 YM7/8AG7GHSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DFC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388279358.20333.5688446849191417763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a189d4af0f533d8ed107aab256604356f15be398ed56b1346709f21188002a0a
Date: Wed, 30 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753882793
