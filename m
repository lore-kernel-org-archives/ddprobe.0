Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD5BEAD0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746587393; cv=none; b=Ddptab1VM8ILcIOwzGKWAQAEBIKy2562KVf8qBigta1SuM4Vfi0wC7bd34TCT8c3VKeRqqk7GwFWyYWjB9nVQZ5e9M7AjBfakXhWwcwu3QCSWOnv+nNTppoGKB1gR9dGpwr8gWsHfJI80KnEQ2n0kbkM5TL9ngdcsnLQ6aCWOg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746587393; c=relaxed/simple;
	bh=U/gQ6aK7xivfduiM2GEaVbFO+tfjQSj/kQ9kuqM6sbM=;
	h=To:Subject:From:Message-Id:Date; b=Whcti3uqjE+pg/B5DjjDbipiikB5GTl144FgoJu5pIbKEV6B3dh9haGShHRqokCMZ1QIxQrNrwKv5NZsTFbAA8gcrUUcySoGrOeMlEGIeZj7qWB+XendKE2ZVACCByBy7pNaDULJiA3LU6v0BIowzbpZA2/gIhTjKoJ/VJhNpuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcKctWMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcKctWMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B1C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746587393;
	bh=U/gQ6aK7xivfduiM2GEaVbFO+tfjQSj/kQ9kuqM6sbM=;
	h=To:Subject:From:Date:From;
	b=JcKctWMYDRHApr5xpa4XVRhh9hzWtyI2+uMdaOdSFM0vVDVcv9ZWW3I63CA0leFK/
	 CSiFTv2s0dPEzGDsByLIoyr10LXN70sJi7w9HfNZD5SardZ7Bi43AXfRp6bnIAWc+M
	 Vt/dcaIt/EbWHN1VYXemuhbIBTi0XhjomEqRNVokZeGA3QdUr3b4yJNezn5sdJdmta
	 EkS5mPcbdfnEKEzawAOSMQ7L6zLRzJl6CoYN7Z2poOhEe7GdbW13Zb6bqLJAxdyO2Z
	 3UiDnpcouTu7V562LdYxb32GwCwCfhbfJV3C9a5ox0WohUl1a7Ncqb2ZZOMPnkda6N
	 2aLmnxGLTYSzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92342C3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658739359.6093.2574083832424887746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502c2db35266282bed21cbd9a2298a48fc08a3b2e99b01238dc5abd68ba2d3a8
Date: Wed, 07 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746587393
