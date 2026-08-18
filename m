Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C6A3537C4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787047234; cv=none; b=VUl3hS8gvCtz3Key7z3HEwfidkugJU8joP+65TaxJRnniS9gR+dzN5D8PYDhfFO6lneJhFoiVU4CrzOlkmbtswGN6SHKyxBczIecesmBozN71emQa2/tDASr56TxxA6ydTCGFcvv1gzjJ2IOY1piNmGS3F0G3pNIwZ/7RVRkGnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787047234; c=relaxed/simple;
	bh=xs/6GMcdyC5mVf8YSr6Ak2kT4CLat15eG/q0McQUdJk=;
	h=To:Subject:From:Message-Id:Date; b=KnOcUmXSOiaNHjIJv81fvEUxlhPmeIKrFVBT77WvjC+1oMyK7XFl0rbSNzCcaxEV9VduvN3ncbTeC69zklYuH9DF1zP0pDh6n06CgtH5cVs5Ni+sRtcX0QY25FVoGbtavTa9qaN4tNilyUdwlJNEFHfErqfiXctSVh9i/hIAyKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFAbjMCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFAbjMCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D265DC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787047233;
	bh=xs/6GMcdyC5mVf8YSr6Ak2kT4CLat15eG/q0McQUdJk=;
	h=To:Subject:From:Date:From;
	b=sFAbjMCOsvTr8CQ1YOD5dYaexxIh299AKmZ2T7udFHvbbKqVDEN+FTbuSOBo561SO
	 pQNUu0R7dFWagy8sApYv1TYplFly5jVorP3GYHb/RFSD2XOB1JZtZky5GLNFqXLQMh
	 SzS4upSnKWGKdhy2Vq8ZhFTaPCzSDqr0j8qAok5kC7tZ35CJVYDSW1ahORf4BUej6k
	 QHLgrqj17NGSH1YXMc+eV0hfEEriQbNOy9+JyU24Q26bL5rw2DRwx/BiKwqejH3eqX
	 T8XETx5tSlIl7t/yxFHBfCbMgAdSWob2+WmWq8ej0vetsxGzGPbvap3doZfS27bRao
	 CCR05ILUcC5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF0EC5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704723370.30821.14322404147435785075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cf0cd2c474aefc310f8641024be6d5094c7cfe11365a2562715917018310fe
Date: Tue, 18 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787047233
