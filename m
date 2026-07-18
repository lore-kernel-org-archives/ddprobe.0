Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A439832BF5D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784402314; cv=none; b=UT7kVG3hMZWRTDD+3BtGxwGCEVif6/R3lF9iuucEPezwk0BLybuENhM26Z7br/RSAewYlC4ay0l8QiUk/y1pm4O6Na5MFhBRLbV2bmRenTpnAR5gDfCJOD/EbA+tVqNYpf77euIrVSZaMO7zaQbl8/fkFfLZrTeI7+3lDdsM4oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784402314; c=relaxed/simple;
	bh=ot6eahxFQI5eESyjgd4OyEdGLT15ufY/ShspMZGf/Fc=;
	h=To:Subject:From:Message-Id:Date; b=K1RodcTgCb1TB0bqBFgwe/y0hREMMi5kPgFi4cyGp04HgW/NxZ8nSI3nLufIBXK8IVy6Ff1NjAYfZpOP7IqWvkOKuksLI8qQ/fzuGrC89+0QPa6UTdevn69WVgJ+I2i3Nn+vPTwaVMMFuJqAYFzama1VEqYYm6f/wZlzXfwGVyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZ5eR0jE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZ5eR0jE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4303C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784402313;
	bh=ot6eahxFQI5eESyjgd4OyEdGLT15ufY/ShspMZGf/Fc=;
	h=To:Subject:From:Date:From;
	b=gZ5eR0jE8xDImEVMBM5G15C2bm4PcrAKiX9UFmPr0FSf7W7Q/GhMvXH3XyFdACtCe
	 MEnnM8dsqwmDGEgyhjvTQApISqJB1Nf39JoaxiGOKhYqrMBHAib1Jj4i5+Ctg0FZqZ
	 7+wmVu35EtoLV+1UCEmMEzgUOIpBgisVcyeWvO43AeZDGqYaeoHQMrAelsymSF2OA0
	 HUGljiNaxVbOW97Oy1KcWTd/q10kB1Z7Y7PbaFIfcLnUdQKWK1UOchJCSeJz/KzCzn
	 nJkD66hBv2CibakfyVunIwVl8Ee/VGMR2X1X82DNgkNy4anITkKA3wLXh4DZ5uwT8+
	 oGc+qRedrh8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC9BC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440231368.6967.11714161735097532300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bff780ba2c808e5fef9c1e6d793b93c17e71fa1822e480948da63846c00193
Date: Sat, 18 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784402313
