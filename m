Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DE62FD7B8
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763498514; cv=none; b=S/cJh45xvqYUocQQ2BjYtL7W6tvFjIOvaXwAmTlbDwznICCUXvsraZ9E0WYvRMtCqMz2lpwV24Xsc2c5xpWGIDmxk/jDAJdPUk/Bs05A+tM4ILeOqzBDK4jyjPs5Q9shMvKF4wt/+PDW8KrS4PxRN3ffxgf9c2E5PxHMkx0/7Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763498514; c=relaxed/simple;
	bh=dpMbLD7ouUmnKyqTpq6gNIabJp9qX5ssVC8FahfGbvs=;
	h=To:Subject:From:Message-Id:Date; b=dvJ3HUR4uOxNkW1/Z6rrzO4YTRROG0Yo2Z6Y2S70MBSqq48AWi2i5TDKLvjikyV02XOg7beQpgdf3m84lUpRL2bN8P8YoABHVwqAb8/0kUhGbMxf7bhqCao4Inp1WFydZYaL/vSXwdK8JS/P9+VQ3bmgBHjAUcPEPy1t7zMHPHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjqw1AGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjqw1AGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E16C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763498513;
	bh=dpMbLD7ouUmnKyqTpq6gNIabJp9qX5ssVC8FahfGbvs=;
	h=To:Subject:From:Date:From;
	b=hjqw1AGsQimhfCuMhezkMbQHbYzBz0F5ziCFruTHglq8VOxrfOwOKbXJ/KdjkY5sF
	 q9hVrhcrP6sjkT+c1oDwT8QKftoLqPG9ylS2JczdnI78pJ5e1vh+FxKlZ1e4czSyJ5
	 Jt1var7KtXPvvq1dV+dXgpUzgvxFAn3dvKR7syHprQksv4zUdTBiweWYU6bfWNweTI
	 KCE3rs+bWle1UOIOKt0tzlL9X6iN2j7vMCytrT9GjPF6ZygYg7OajMJmmCwxV1r59g
	 wl6cVJ8OldNq3jdStzHUEDTEc8KjgPuRWYb/6Rm+AsuzNAUaLHUBaLwMdPjXJ2Yk7u
	 py+mI2HeqimGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976FFCEE351
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349851358.7442.2999335892096344862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20f3ceb6c6ffe96f5743f89c653a647f881b117bd8fc44fe48bf08577dd2ed5
Date: Tue, 18 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763498513
