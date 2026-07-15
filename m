Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C0B3D6497
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784105914; cv=none; b=F1DOfyCIpX+A7tkfcB0sEGtJH97+43NpjIt6hL4+tEVJncVAhM0S3RrNX2SjUKUdS057PRCpKdb8PvHxvqIaCdiGI/fyLI3F7kWGzKBOI4wM/5GNxyiX21L8Vlj0lQyvAIzoMcRzBtBN0sUCTO0A1yVcCwfbY89frvaSSeuNWSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784105914; c=relaxed/simple;
	bh=MlOeFBs0+5EBrYOsIof1d2+fiMeLFMv4rICA/EzRnkA=;
	h=To:Subject:From:Message-Id:Date; b=KAEZWccB5IsuZWZGa+DB92JNFCNA79cemxkA3wBcbNT7jrHwee2ucFQYzqox+9cilzJJwFOXHzbNh+Cmt+poazC5QGi2IQUeD98P3vYcRlUfLEjcRd/i86NYgcVZKm2vI8dyyRZ2Z4x0xOU12TCcKKw07CzrJI6ubpGzyQkOtNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhjObA8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhjObA8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADE3C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784105913;
	bh=MlOeFBs0+5EBrYOsIof1d2+fiMeLFMv4rICA/EzRnkA=;
	h=To:Subject:From:Date:From;
	b=PhjObA8CI7F0pJ9Pj6DzE6q1UmtjNAvkHPy1y8QEUb8spCw60mwDd4Dzs6OpKzKAt
	 SMUiLuBh5Vn4UqMKnNPY03b46GQWFntZ3iIHom0ELbg+l+2RgutUJYmodlwAgg72s9
	 X123ztH01R2auhENAlhI5xqHZFgWISpOyLDm/i8wZuPQECDEzR2FOkFyGULzxP2EoX
	 pMVuHVcIjgX6R1Tp+2tzDUOioZb/D9bdf9Jb0Kg2j75pAhsVEh5ADGHwogVReD/VIz
	 +B15cO13aE5bmtx0R/zVaykWqvw/WxfxpozSpYjG290y/oD/pcEIOkrRcI5dd+nCCV
	 achsHtwQ0rmGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B53C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410591368.22893.17986207643596210904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab596caa25a540bb339481cf5cdb7e3771e9ee20beeb2c87fdb8b054313ac38
Date: Wed, 15 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784105913
