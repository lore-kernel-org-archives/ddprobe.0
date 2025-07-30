Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C46291C3C
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753865395; cv=none; b=p4dtMBeb5K2wjBfFidwmgVY0iM45dAInvTevIvDtCjyA0KX4qPeD+8prx7GF5kAojwQrnHjqro9Q1U02dVBGkE0aA/UYYucSCZHnpXpTklrubj8Wq5Y79umagwjZ/GJrN2As6SphE2bTs/r+Eb3mzmZR442aze2+0qVxKi7IK70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753865395; c=relaxed/simple;
	bh=VLQJVwffFrsOYNPTnO2tf0SyMaVNSHTJFNw4YE26U1Q=;
	h=To:Subject:From:Message-Id:Date; b=il9Z4xYcjgGPy8CDAdz6wOOfSE2sYap2UkMhMoltoiCsd5K8ugQtYQKw0pdGCYiR+doZYkKdDutB+5jBALzGDyPLXtIouuRK0DRbbh4IZkhYVmOyDhSCMosR/XZagR3u6yOFGF7mbIugfEOTIWl5362o7cQJHNMbqvAe0/BMv7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtNZUDyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtNZUDyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDFFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753865393;
	bh=VLQJVwffFrsOYNPTnO2tf0SyMaVNSHTJFNw4YE26U1Q=;
	h=To:Subject:From:Date:From;
	b=rtNZUDyJSCN1Hurs4ERqUm50r4YeQL5qTv3wd0bQwC9qBJFg9Oz6s/d9CfaCbQvOt
	 Rq1DZzeSjuKgOAA2lxU1C7OvBOZ9Y2kj/OzSwPr1jLXnaJL36kLSpQBy1wY/L/WEkD
	 JCdJleBC+fJX+MNHa2XMV4FtY9fn2UQ5/6MBj6sBHIydDlUTHmC1t5CGFGqL+nykCY
	 ul5DXy7fkQo2LjfHsz6qbZz4RV2BJbRYOZYUgYmXRb9tNOQU8o2RTcj2omq3tosM75
	 /Dn4f99opHJji+4N6GOtmbpsXOZyE9Z06CDWf+Ze4dplfjLkhXGJ6C+RbEV+ktAxKO
	 R5GnXwxs5jTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CED0C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386539363.4229.15146389496102146045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de63f624188daefa3bc43be851bca9c229b86efcd5560f0142f7f0e43ecdff29
Date: Wed, 30 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753865393
