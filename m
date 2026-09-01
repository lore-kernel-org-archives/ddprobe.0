Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7539E469859
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788297634; cv=none; b=Q1tXoEfHetJZjQGK21qw8g1uEqU766orUnxQJslaalo5EzGVG0tRhy/oHK80eA0i0WV4Yc1lZkJvq+ygP3+Q64mhofbjt2lK1wi3CtzEm6JLeILWsj9jy6wsKl37GoBGa4n/SifqzsFc1a1qwf2Sn9zAJx5jOHMmw3PD3fjZcOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788297634; c=relaxed/simple;
	bh=l/b5UVSVae0RlhnO7UFUitHSwYThnipB2HpYG8Txoss=;
	h=To:Subject:From:Message-Id:Date; b=K1Dnxohr4sXYUK1xtxOshONJh+GiqZeqP8SxmD6zCS89OVVeUzhkAMl94Co8rlNbUfzcTCIaM3lO7ub3UX4PrG2qgwXdbhpPEFPSdcv98HbDbDRElJFIEoOD1g1xjO89cod4f/FKb0ILneDb1fRmwQ4lyWZBM/iSybMz4wibB30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7cVmO36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7cVmO36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC26FC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788297633;
	bh=l/b5UVSVae0RlhnO7UFUitHSwYThnipB2HpYG8Txoss=;
	h=To:Subject:From:Date:From;
	b=B7cVmO3643tZAvYN4NX0GeAros4xd7a+h8SESJY98XJe2KP/kJNOZc+qOseC4nu8k
	 D0TObA+vkZWo5PsufDknITmkICic3nZT1BwdFWBVnjy0Ppzf7QUvUfGmGVOGT09/G1
	 S/keDfwJPh6UYhN0xAwX3ycv+mZSPuFhwP8Kocnh5/hVWm2J9hlN+85wbqcSW26oUm
	 jyLq9SyMdNZyHWpKvpxaEFOuwsf9/vBype5NtWB9jzmspKzztnFHwbyIRXaQ3qPakv
	 /O34+FRov/U7AQZh8FJDNynIp00xGSD3mZ5RPI4r1PlALJ5bc9trf3RUgk1E8al02N
	 IXCY5nuqBLVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE47C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829763369.32261.15324249765679420131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da6ff0c5d6c78654899449469b3cce64576cd7da87bf3b84cfd92de37e3c924
Date: Tue, 01 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788297633
