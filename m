Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3125E3F54CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781531794; cv=none; b=Uimb3dpahZ5LMld8PxtyJYBsNLmhcqGGUOch5VEJoO49g+VZfJzOTCbSPYgItG3+hHgaDvsfYRxweHVNsCc+ZZcN2cQPUBjDipNR2ng6yUnHl+YDQaYna0oWqgGYiVrgpX10OioR6HhnY+Au83YMRNhGEL7McRAq+T2VCU8n/kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781531794; c=relaxed/simple;
	bh=FtJGa2bh6j/GYOD8PWlgc0VCApgqUzQXhc4H1hShhNE=;
	h=To:Subject:From:Message-Id:Date; b=RbAOA7VvkjReDfDWWZAQAHC4B086DFvzZz8O/XfojTl63RHJaQrOmECspjHD9RENsS/OAkWcc+L4cxZB/0XnDmiUaoqluP1A1R9SUSUipuzorDhpaM+pUZxi2tNuAaSEVMu1hr4myjVnSv7gtBWQe2EIk95rNTqN+PHqBEnaZvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmdOpa3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmdOpa3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6769C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781531793;
	bh=FtJGa2bh6j/GYOD8PWlgc0VCApgqUzQXhc4H1hShhNE=;
	h=To:Subject:From:Date:From;
	b=DmdOpa3NGywaTqC5bCSf9P5x5/mpWWdw5/L10kmgKIj2AuL53bLf3NbihV+qg9Ygz
	 qotvRFJWEGUff4WfG6KqjUn4eg8LzgurnGc35yGJt5MHOCfi2Zt0Ml13gCeboBzjtD
	 2LSw6etIzTh0RqkheKfLV63Xxh85+GdfEPpKEgOvfiyl6nuWVZMz0/Bd/+1WgYfMiq
	 Rr1YNuogxQFm/muGbfwWs01MshmrXq+CO7GnmdEQX7Zp1GLTFBVZ/9SAJV0ON9CT4Q
	 7LPa2XKzZ2LFPDazb8meB2BLQlXuwx2B3NplcqNiQtb3XGpG1nqSPZfcAAwT4s2xsU
	 aTiNj7vrjyrsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF44CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153179369.5102.11957542118110167476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24c4d2998c88e53b2f5fceba8405222396dcb48dc2259d686996f17c2987c0c
Date: Mon, 15 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781531793
