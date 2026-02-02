Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354831917FB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770036234; cv=none; b=sTqXbh7P3Xa4DLv7X8O9ilsYSYeGhUYEve4XTYsp3ohP5SRqykNZiCXKNXgQTWj8lnAkV3gE/sz03jcbdxz3+EjoCl7HCCAGaRj1awbFLuXAWn4Ac/Q0btx65lGKdhSZCEJ49fhDmW6uwYncbbTNqslgd+wHU+AZJHa5kppwxis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770036234; c=relaxed/simple;
	bh=GQ2ywuHZmI15hDqgh7JICnZf8aGYj4ee8/QX64Ox/4A=;
	h=To:Subject:From:Message-Id:Date; b=jlcUN6R2Dh6q+ddeewCIYp/F6fd7pZXTbk4LiSMfnkUg/4626/r/QNbegvyDW5QhcKVbzjUESxao7frCudk4dXX/OGWErMCsfDGopdYVOuccdn0qXhVdY3158hu7+w6n5hTp+8EVgk6ro2497/Igd1S7ZjIMJkLsaDn32dLEyDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ryhvua7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ryhvua7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0204C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770036233;
	bh=GQ2ywuHZmI15hDqgh7JICnZf8aGYj4ee8/QX64Ox/4A=;
	h=To:Subject:From:Date:From;
	b=Ryhvua7pDS48jkqJfeyx9LoPI3UDezpfbWwnwb/A7VRO2mVA3wuXr5WIMxQXs2Scd
	 hDHELyg/O3NZXwhxncnzJ9mnCZxBlCyv07ufl0SWo0HS3AneIPI60M0OH5KgInbeWS
	 0d1uQRtM02AmhprF+DZDogptnxXhNKKriyOFdSsBxDvnv/Otq6rvqx5RJ0hSSqdGyo
	 TObN43KOLz9FFNcTLCfquAeZYlpV4anVuC/tdSoP+p4h9bmci2xLtyl1x9zmFFHpTC
	 oznNmDjDrsQlxAbeodBRZM7wOk5XszZckB/rRj4fzzESJrt3kndMDF0Bx+DfKU5kkN
	 p/I4YL7yRWqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08FBE73158
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003623364.16538.7345333291741459182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294ef52a02732ae2c54a5a547f12942e794f45c41afb006d3738010e386981ae
Date: Mon, 02 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770036233
