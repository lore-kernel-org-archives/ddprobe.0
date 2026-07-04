Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E670359A6B
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783158514; cv=none; b=Kq8XHxlXYzw7BDZ56D1Zrbr7raLTGaTempQ8Ijg755J+Dg2mr8I2iALImTCX9nk2nHAFsE1s8QgAonnKRgQVe3mlGG/2G9cd48nU9HIwnFTjHsPkMcL7nbLlopcH/O4nJga67eYwjDUv8v+hocRG11ngZfSJ82V8hSRU9uT0QhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783158514; c=relaxed/simple;
	bh=5XiSXxwEMYN6iUj3zvs9lua/oweGb2hhXW8heTD2O1Q=;
	h=To:Subject:From:Message-Id:Date; b=F5LDWsZmfvQQWOI/b27sBH5xFFYoIBsMzziRD91K6SahttSrkl9Tqao+eniwWmjBLuY1BcBXCSGv9MiLWSG7xUfdPDPqH0YbLYboGajq1vzHdfZ/OCgP+V/hmSkUUC0y2jt4H3sibJ1P7n0BLDIGFGCtm2Msm71+c9SUUyLijgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGO15Q+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGO15Q+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CDDC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783158513;
	bh=5XiSXxwEMYN6iUj3zvs9lua/oweGb2hhXW8heTD2O1Q=;
	h=To:Subject:From:Date:From;
	b=EGO15Q+EAVlLIUhw/gqLIfH2A2hj1RK6eRgqUIXvXWxqaxEfRmvr/pm9MQAks9FB6
	 wOo13Vql2YWag8C9qbXXf9nO5PlqcuQqkGrj9Qkcx8fS6OfHQuDHFr1TmuvwHt6TpH
	 Ho/bJ4LWAukoaTabdeSX9NZvTN+hx38ilw3AoF9Evi7pZ7YsPXSa2e8sT/TxIWwOWc
	 LSeAybGpMnfgDr9q+TdPLSHCtIYqit8ArOMUsPKzkOhGVxUz+p62L6Isogs/EjKGlT
	 xF9qi6NVMXniaUMrsEnqBw87gndAj9EtB31VXcjttLpnPsY7tIZCgD6Jti8oIt3eZg
	 bJolxdz+J2UZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD646C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315851368.13597.10264148293551946312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6ded3b191a273f57dc7e4997891e12656064ad17a696503f484e85ccd7e709
Date: Sat, 04 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783158513
