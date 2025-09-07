Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F221D6BB
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757289594; cv=none; b=UZsVmVFGAjeVBA/n5ax7QAHhYMdqVjTSq3eSsgNISc6I4RoFMYDYTTFusYcxDhOFkOuKnapCegeZFOxnaN8RRmW82HvDT8UE84lhTSTxSOOPMY9G/ZcgmwhHCPj8LziT8fLYsZPPnbhc85RpMpInIIRHrHIhxJk+g+a+LKa+vfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757289594; c=relaxed/simple;
	bh=esDEo1nmBrhLvPL5Co0lkDmcL2dxOeDHi68uXxUH4Kw=;
	h=To:Subject:From:Message-Id:Date; b=IpQxizN49EfOLLf6vnFVGzxMTiEInCOkRxmQuR0fC90Oji0coWEBZqHBXvJ7SzFz7If0IwJKxeTbNo6is+xdYDpdLDvBOKoSIlHIOb7LK3GSbWEIy/29ha1DLPsZyDGePkR+a/h1jgZcXM1vOBI2yFkDRB5KM7BoE2KS/6X8iOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5WZnxoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5WZnxoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C2EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757289593;
	bh=esDEo1nmBrhLvPL5Co0lkDmcL2dxOeDHi68uXxUH4Kw=;
	h=To:Subject:From:Date:From;
	b=V5WZnxoyeSGctJ/Mc/A7ieiOgtaPkTRoO8HMw/LYeGVEt8I/f6CvF2JygtVq5nj7s
	 aIDKFSwbqIGZTUtjxIdSrGH0LynipdXD/K1iJoSsyCp6/AUtxkxDw37Ht8hiGhQEra
	 m11P3pjMveTXFWBaM0wScCMVTObUbuedhULUXkF7F3Gdx0Eu52cj60zZJl5ukwrraY
	 u35HaaofJXZUdj5jl1qQ30Bxq1mm8dB2H3TOSOzw99QeYTiybn3ynIcbD4euSL7twH
	 ETPn+sAqpJGxk7XT5zFOVWddDv3/Rt1NSq0c01YJNAEfFU0BQZ956x7CYvgrH/XNxy
	 s7MSvm+0CkP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C1CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728959357.9147.8876800816690842164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccca6f3af63b3963f89c21d605cee88d6065c112344caffb7bc0d81e03bf8e6
Date: Sun, 07 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757289593
