Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7C534CDD
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726344954; cv=none; b=IO1w28TU6igQLnNQcn5Xl3iLRGgpqtI95EURNiezykU6Vq2R1liPxgCnH1Lbz6wvyI3nlw06HN/GKco76gGiDuqpHgv7RkepiygbZbMY03ZsLwaKvau/ZRQanuSGvjPrK77gudqqzuKwKgPi6SoAI19xb1VSWOMiUiWDTlKJ0WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726344954; c=relaxed/simple;
	bh=21/JXkYBfoZEpIcDtfBewmJOqBEUQkY2cQiDLJUCgfE=;
	h=To:Subject:From:Message-Id:Date; b=UGip5Dc5RrLMOHZsmrrhuXX35dAiwC9V6iGbvxhV7skIM4rj2H4/ZYVMFHcHmS42InaS2DIRgrEJ79V/StrZkEmY8Wm1VMj8drsTloK6/ys3AeAALFWE8AUaj5VrO4pnz6jjl+r2BaOx7kbu/YXNjBWquoGRxpm1B6o3uyvDyvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+tSE1WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+tSE1WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B051DC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726344953;
	bh=21/JXkYBfoZEpIcDtfBewmJOqBEUQkY2cQiDLJUCgfE=;
	h=To:Subject:From:Date:From;
	b=O+tSE1WZmovb0J0druoYDwibReHZ4DMgGgOtlhVpaxVMFNZRbbckRHWLFjYLr9EFS
	 0A1QSh5PtylyqaDo53VSQSRrBEGyRVHyg4QRrmEAB+GfXGh2CwZTaWsFGWP1LY2Xni
	 8hj/7eVEDxh6ISqVf3PCDlyGqxVWk0vr4lNzKxzmS63wqsYYsEhaOfyEILlGe6DBce
	 G51ey+44tsNk2nIpRKTYPUdT7EGpIHILeB++C+o09+L//ZuAfGcbRs6VfRLa+Qlb64
	 JFB32+8eGTZdyVz6khDAgvc8EJN0iDJ45rxC100pa4SYuXNZ1bt1X7PKoSYmviZ0cO
	 YJC77pcXfke5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F9C021B1
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172634495361.23505.14133944418193966482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8de0357369231c8867b5cd610b65c3cb32ada3ef2a20ab82cc0622b2cd4ed6e
Date: Sat, 14 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726344953
