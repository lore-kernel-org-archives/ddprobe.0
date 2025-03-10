Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B52227599
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741609733; cv=none; b=FJv8XaoOKHpcF3RQ23HPiKXOc22XlSIATtsn6Cua9yrzygNs/UBcqbBlX4djE1iCgOe1/fBXmbL0VBRC1JMWK8Dhy+MqsiZg56YkKC5dGNQs3KG14OTOD6l3W63wFXPJZ3DB/Q5Oe6VIYX3/UDBc+oSymtTbGFGlxazxIUvii5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741609733; c=relaxed/simple;
	bh=mpwzLtR4D/yDhcdvvm6W/d8I7FiOOX/jUNmt4Ev94GY=;
	h=To:Subject:From:Message-Id:Date; b=hiJrH7Gb0cjI/+OJEkYCXPswRlF+nkEiY0B6Fksn0Nk6dxdNYkGJCXx+yVhPn4KCjGcvGKksyvTwcl9W7caDFzhkk7S+cVwnbjKtegH/mHqb4ZqLPFIGytCNzQqmdcdCCE82i4dJjXOZsilOZK5qMyzvHLqMxuUdxYrtJbOppl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imdu4Y8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imdu4Y8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FF8C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741609733;
	bh=mpwzLtR4D/yDhcdvvm6W/d8I7FiOOX/jUNmt4Ev94GY=;
	h=To:Subject:From:Date:From;
	b=imdu4Y8N8NYAGKMJ0ahAqWiaF/RVuzSFtai1Ny3NkweLj+hPcN5AX7q5ATpvCYaOo
	 OipuTvIi9Hw0ysXEMpvukKza8CTMiV9urRn0jexWY/THLjRLZ2IN56JgHjxrBhvXWN
	 AAHb/NwlB7NwXqSBxCZsjQaMhKLmgKxmIevNhoB+pPfvvvCs3R7oB71aPkShcbeUZl
	 Q1qgY6GPMc24cYcq4VhM7UtROmsXnjRMffb18J06Wb3SNiAoI42Y9gmiNYN3odpw2c
	 arKIn60NfrxMxT3DXIvkBeH44WF2tasNVZk4eCRsSKXiVcAsCm1k8luLSF2r4nWgxw
	 sm5/gDRxGgoLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E211C35FF3
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160973363.26163.6254943049870357046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f0e203cb31cc29f44a75846a5bf55c07acd585096389b096b346f10d7eefc9
Date: Mon, 10 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741609733
