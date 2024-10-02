Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20D411187
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727844954; cv=none; b=sUI/mzkHbP0eydp33Vn3hVyEIr7NS6i7tfvB1DCTl3jpQtDdzssAZW93FxRD4uydKzu+wWuLmWoTMJjlmZnU5dxWEoNVLf1vN7sGM3dYFjeVvxpXaPHxh4rMYUksahfo4wWa8Bytsq9SK+atRCiUOx/ZDWWav5TFqFrK/QDjxPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727844954; c=relaxed/simple;
	bh=9lBeniQHW0ny8MhKbdhOeb1Jvvf3t1tT3CBD27ikAL0=;
	h=To:Subject:From:Message-Id:Date; b=Hu8KCxmvDga6z4eMljbmQG8vI92vyUVVH/XzcUePVzBZ6YMoE52VKqBxUbmDUJ/sD2enBQ4hypywmnW3kUjz2Boty8CSKmzlRHNywxRAHphUt3YjA9AyWLtDSBX4TgMrQkoaqrsKFHGBXC8oTSPkyVJwHHPFk5FfEXgZTkupzPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hr1iWo8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hr1iWo8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F79C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727844953;
	bh=9lBeniQHW0ny8MhKbdhOeb1Jvvf3t1tT3CBD27ikAL0=;
	h=To:Subject:From:Date:From;
	b=Hr1iWo8wTwwZNhaWb0RzGmgBSjt9VJ1GglxV5mJC8BAj716zDSPVbNkwYFjin2Dsy
	 iJZj8gHR/q4UyT1J5hbI5nQlqfhhkpPTP+ejBXSacgFsYtnxJ4dbgVFl831AIpDIa6
	 tD69RZXFILoOsTVWSq8UcMYKg5wScZYdJ8hfr9NfQf8uX/s1kac0nTs3rhUI3/Zn9e
	 VQJfmQhF3HnHQtggyOAf8AdbvW9P1vjMgwOm3XaLNIWuOYDobmUDTKi9NrDOj3Jmcn
	 nEKRFShU9MtjOhf/lIwnp7Rbh/EdVxeagdTtsYN0fL/pkZGtWhg9qdZShjuf4UZXiN
	 8bKT+XmYSzdXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB56CF3195
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784495361.14969.9104113810011375861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca20cb38891366bc478ccceb1734edb33d38e1c8a4b636f1a6b2d4320f9c993b
Date: Wed, 02 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727844953
