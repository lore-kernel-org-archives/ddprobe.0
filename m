Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F7F2586CE
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757863794; cv=none; b=bJoH/pNh16GfbG+miccAhcYakL7lZbwSlYmIrCtPVoYneE3RB3u70Q4ddmwbjRh3cFYorQ+3Nc90EzezsNOMoowhgHcv7HoDTVtOO5SqoAJNRY6vyw/7Fm4Zn8EQcZq9F3K3kV+dtbByQWr8qLpYU7bkhq9/ghm/H1bk7mtBpHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757863794; c=relaxed/simple;
	bh=rtqsx2UdCBhlfwkzuWZKRyHoFQ5/FAU0qMO2MtesPtA=;
	h=To:Subject:From:Message-Id:Date; b=o0Zz7owNXsaQO58PHPu5lTC2KrJFytebBpdllLEL2gTntZxh/QM8WQQ3mSTNSFiPqH/YEl/o0vh1dwsAMtSMWqXgjycG+TWAYUE4P8uVNjRQUDLE+hcoH9+M0q5iZ2zOsFqmiZn+2EYOT9L8KoJFqM+dy4rBLlbG4Up+oam/qYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExGkPahg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExGkPahg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B15C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757863793;
	bh=rtqsx2UdCBhlfwkzuWZKRyHoFQ5/FAU0qMO2MtesPtA=;
	h=To:Subject:From:Date:From;
	b=ExGkPahg2dHifqgCiIB47eVShWcrasatRGl7PbWAuuBbm8blrGqhJrmMfHh99kQE8
	 YzLugHOqnxtZuVO9jZr51i6f++c5CCkuicuN68nKUa8yR09dNKglRjHlXpkTV+gV83
	 r/9jIeDejLpPWd+7b8LO63Gh95teg2yg15iNji7RdHB5/MDXJeClzLe88Wbz8F5rj9
	 H/R3Qjn9d79lMGeEs4W8IJL0xd/Bkp6Z4iM97KWCywaUItx5w4US3ohb/Ld6ZA1QFt
	 ghuTVVYlBwAOcQWNQVP0Qpoy+v3TGWVgXbjkA9BHti9jc+UnTevU71BeDU+6tduLUc
	 6hrs5KwG8CZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B96CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786379358.15674.15466068872937455365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecd697b5d9b5bd8223137fdc0751dd34f548ba126a77c8f65a7da9ee2df0781
Date: Sun, 14 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757863793
