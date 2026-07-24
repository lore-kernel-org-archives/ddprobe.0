Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485523B19BC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784929834; cv=none; b=ZXaRPoCM7g0lfKgwuopiK7wlG2sAKQLBz+VSaRWXWjPj8l1dmclY2jVHlKWQ4Ac6vkoyQoa168w3AfsQ171Wbn475zmc0TQ49Wz2HVEupL9S9yXm44/QedDOkkLnWdlTyxXTxZuglz1PdMRjm2YrNe9x3v1VTm250Nu9ejC1rB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784929834; c=relaxed/simple;
	bh=SHZ4sIbJOdc1lY6kAJiHOAYYCA7jXfDUJFgaFbH5BeQ=;
	h=To:Subject:From:Message-Id:Date; b=dBfSTXdbcNUlMQQKoVYJ/hj6f+/frulucbh9akpRiDCsC6OMQat3HLo85nEWhxr2rN/vKu82aEdlhOO24fgGV+ea4+vY87P/E7vhttu8ieO31XcMhzw23b0k6JNPPQH8nE+nAxFkaBRIjrrAevp320Isnezh64I+w8wsOGIeiss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH9yfyAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH9yfyAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15A5C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784929833;
	bh=SHZ4sIbJOdc1lY6kAJiHOAYYCA7jXfDUJFgaFbH5BeQ=;
	h=To:Subject:From:Date:From;
	b=PH9yfyAs0CvpaW0r2UHw/UTrSrdtpdMm3P2MJP3EA/uLUxNxnGlaPqIfGYEgU/8zP
	 pP5anYJosh1rzFzPcTCSWOgxBqsUQp+/matQwaR9+RAxhDz/EBhGV34wuEsRKbHO5d
	 H66+in/+zoVqYHvvNUxUTprgKNNtRMww1t07WM6Jd2Ky/CpFKI6nV66HH9Xffzv3+n
	 hScIAUrbqMFtZDrO9neA6iYew46B0Rj8FE/QKaYt+s6VXIQaPmyFtRiC1/cJs8Wlac
	 JqeZumVO10Rhke5vZBgTd2bNYS7jPT/D1QGxIlhZh8RaJWqSU6d0Evm+ApOvWocZu6
	 wl1ebGi6BpKcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD586C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492983368.2591.6792239182136843797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301870c88dd7f2d9fd88897ec1fbf4480c3402803a9b498e87164aaa273bc445
Date: Fri, 24 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784929833
