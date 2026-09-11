Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449ED373BE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789125634; cv=none; b=bhnBjmOIQczr/4UfUf6OUQaBRH4CGYGjsPqNJB/jwUT2n0E5cT/RrzJUfpf+Gni5SoO58xpJHVN3D5TGnDEt6vxgL6lRod70uem2QGljZVYP6AB6CGWojHpii0ir7R8X8SJJGPJFMQzOqLuOtPCAmx/y0aGONMXAxhelWb7oBQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789125634; c=relaxed/simple;
	bh=uigWLjhlFGlI7/ZsM0ywemj+JSeMu8zzheV9tWnVnaA=;
	h=To:Subject:From:Message-Id:Date; b=MfeDvIf1o4RXxjsfezClaYyNgoJlXvUQfL/Kaww8ilVmvViBPbdu0dMsWANYUIeFIvMVboAyANmnwVVtBQsHz5ed7u075h4Da+59CINXamJG8ekAahZSVIW+ddPiq0wy284cEIZ30KMzeDqMSqjepLBtWYkKaH0ZpEW5nuVhAkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZZgBIl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZZgBIl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7D1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789125633;
	bh=uigWLjhlFGlI7/ZsM0ywemj+JSeMu8zzheV9tWnVnaA=;
	h=To:Subject:From:Date:From;
	b=dZZgBIl5Cl/DzNTT96dcdLT/48ewkZMQCkqFyB9ooywtT/gsL4vbH/U+xuA8KBQmm
	 sl7a6wIfejmPokyuuU9wG3/9jfA7pPC2EzJpLOkSuXchUEtoHvlXXdcM0NPfE6VRoM
	 1X/VWghimsbx7IVyoRrpAxICcG26vvj2h1KTqZTDY4/UQW24e+4Y8PppjRrRLH6nA7
	 Bag5QlzJj9QT9tH36/grVpl2T7SbDv3iPmGz5J3U4Lx236DMm8ZAwM5o7W688XRoVZ
	 8cUUVAIcWj8kSibLylx6KSS3KT7YW1BiNlEgmPvTnwUTrGmX781Bck6XSPKDEPaSYN
	 7jPdFsMWtaD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE60C88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912563368.15718.9092903388867462433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2493b66ced614fa4fd457e1db7c8588d141d913f7331419ded9fc97aa64764e0
Date: Fri, 11 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789125633
