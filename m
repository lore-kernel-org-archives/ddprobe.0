Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D50A21858D
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746684594; cv=none; b=BJojVVc8n0LvR3R3TjEQn7eTZdkLLKV7wZ0QGmjNvsQYQHCmJyx73aJMsKQjs5oL3IW0iJUiQjAQ6lxf5SDd43E+oGrdnORr6RMlTG+vX6FANjCXbc85BN64u47c6dkfGQdw76hoIBWwYv+rEs7/UkaIROmwiiDSvdokiAYYY5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746684594; c=relaxed/simple;
	bh=cwNCnRHixD0kGW3dYy3CDUcXTE6FCroDzGUQ60Zmlxw=;
	h=To:Subject:From:Message-Id:Date; b=IV9KdXv5PosAr3E5SCkNaGijzwOwyqJXOlu1CkjfEosipb8rZNCLLU9H+b6xS/XNiTaHfvBoHzatcaatQfrr/z4bANe3+35wllp4Nfni0zPSgC9k/W5LQfrkvWW3Y5gS5plNp9WYwJWLk0A6t3dgGJr7D0akEk2ghqE+SpXzacw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Go5R9W8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Go5R9W8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D36EC4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746684593;
	bh=cwNCnRHixD0kGW3dYy3CDUcXTE6FCroDzGUQ60Zmlxw=;
	h=To:Subject:From:Date:From;
	b=Go5R9W8S06kw9wamBCu4JrufPBNM1+PvuMiLBC0UmVL5wFyvH2TEQYOnOCBei66DJ
	 U5hmP16g0JlwGNFMm9iSXNfzraDPjtXiepBF6EJ+ffwapOY7PZdEtXEfdLuGUa0XP0
	 xts99idG0f1XLUGNPKS2fdAeeoVciT4luukSIXJwYlUnkV+jMY86thuycKVi0rhifQ
	 2eKsW5QEP4dtJ4zIBKVcx80a7OwLOyFXLavmjz3eRXVEC5qmTD73kGSgHgE/cMxGqQ
	 S74d2QsKoEB6sbN/y8UWJlarNt1MQV/pm9F55v0ChWT+Us9PZG+dAyiE8WrSqP94va
	 18f0O8iAX3E7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB89C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668459357.21136.1577610619518770062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa91e94765d4b4042acfef299ce0425b1f769abcc3f690ab5bca87bb6008963c
Date: Thu, 08 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746684593
