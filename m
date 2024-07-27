Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218AE16DC06
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722087354; cv=none; b=sgp29Sv/akC567N6KQ2k5cxLtDkOeOYZF1tDSlvBzk7keB8SWmv9OclzlZ5OmdUXBw3kNTO7nywCsD5dcC2qFzg/ezXOt+SGibM3uNcfn8ij5xy9MVsSekbHdObgxPGuChmbH0Wyp56ctT5FvbiEBeJzYg0yLPUuwaaztaaDdQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722087354; c=relaxed/simple;
	bh=7un+HKaCSVRFDPtOsd+x54HIpyH4X8UJhZL7tltkYeg=;
	h=To:Subject:From:Message-Id:Date; b=B6uZp3TbPIxgRulGNecgh1yGA+e0NbW8V8DHT2Dos4lvSGWKk+9GUxX5acgTqHIckMQcI9wyn6iraz8//4OkiBMVVc1s1tcKQMmo8mvKx2tf5lO3LJRUIThzRLTQUL8Fft1zMggba2CjZShoqjtamXCPuxZjn9+5bEv0yZK8G0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZP3+mWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZP3+mWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E594C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722087353;
	bh=7un+HKaCSVRFDPtOsd+x54HIpyH4X8UJhZL7tltkYeg=;
	h=To:Subject:From:Date:From;
	b=QZP3+mWYgyJAl85TZZpzUN6Q4qtB/02u02J1tp+XBrYlNuedPRbXQhGoR6E+Ruyvf
	 nMzAHH1WAeLkFSBOkfkUczZrjq1Ec1Tcze+Gw644INqbWlokUb1RJ3gtVQKJix0zLh
	 WFVYlKWdl10Tn8i8KfLN5TE5WiNx6LT36I3uVSqwwJLQLHa5VUlUCzExmOBjAPgf1s
	 ullt9tEeMKyxBDzdUmGSRpzJUnnxIlMNES7hTUMhKSOT4a/mCAXEMHkYkGjD+2uyth
	 fkJR86cO5T5gdyD6ZtVjM9Ar0V6DgLgtDKdozUK80od4yczRjWlCeL1sb4LbRTy4Kx
	 7BIH6m6ePhB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F099C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208735357.1279.17824195264825843811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7290807b9db251147deb4a4b9e57b2aee9f28041f9dec85efe2f4c892495be5
Date: Sat, 27 Jul 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722087353
