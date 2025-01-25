Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3821CD3F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737814554; cv=none; b=fryl/7owMcsIItKQxdiswC6BJUoSmwpgzaMiSDromfuTicHjKIaXL+C73rH8MGCyDxqKjmdBLyO+X2jI5nSIrZMcoL+SukKlmSWV25L4uJSAEFJ9os2Zyqrci4vw80kUzQwrKq/8VV0cka13FY5JfT4E6ZvPJnTAEweSoWlOtmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737814554; c=relaxed/simple;
	bh=M4/q8+W15IMgnkiec+JdQWggmsQVqCBWlYrM5U3pV5Y=;
	h=To:Subject:From:Message-Id:Date; b=lEOLJCKw7PIa22lgiPHbbyo3ypRdlDQFepGXT0O+WOmWoJbfc7S2FtOo+vRhDjxlsVnonaNL8DAW/Wgelyr+QpkcNL0JMIH/CJSOO3S28K/iGnNpYpDgtQOsOPbpaP9dyS8Om+QYOMkmTS7VP6oOD8DIAoBN8yVA+Yt+hU8PlGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx0Yft8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx0Yft8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DF1C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737814553;
	bh=M4/q8+W15IMgnkiec+JdQWggmsQVqCBWlYrM5U3pV5Y=;
	h=To:Subject:From:Date:From;
	b=Jx0Yft8Cqy8rUEy+5z6u++A6M3o3wrde+/m6dKkzr79Za/wRpU70Nz8fe6/Yemi8+
	 tlnPUxu6BGu/2OeE1pb6KXd84JDj17yZcU5YU29XQYM4+2UeAP/m2ioWq0kKeOeZ67
	 Agb73udC3TtxxP4dRmtjNiGrS7s1DFonfkmuAeWxyj3aO2rAKmePo+vS4CgnVNe89W
	 48mKGNypWhnlltaKpSez91jJ0STuznFup7UsxK0bWsagJkGJlE05o95Ow5SmrUvTFw
	 buGwPZ2t2y/5F1AuWLfg9Zw5xzZoHrawmo3IGQxOXzAPf9tiFwHEnJ3SVz+PHHwrl+
	 WDvmEcysCUyeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9093FC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781455358.19456.17652927488951248908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dff27c06eb88797297f605d1fd69e16cb84ae1ed366775f4cfdbae4ec88179e
Date: Sat, 25 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737814553
