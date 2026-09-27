Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C244346FA0
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790502034; cv=none; b=D+Y5HGGOzN+8BiL8Udwta//53wCIyZSgotUPlUsyHwjLdRvU6ZUwm+AllSBl3DVB15w8CHKxNJyfYNzxSjOHubWp4g7nAoW4MSlvuRMiMEJSSPyoAoqDOoQW421Dd8omos7r11wsE+vrRP9vUZzdv2mRRCW46hisZTqOTMv/l3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790502034; c=relaxed/simple;
	bh=sjxeiM+T+FuqtcHq7ajNvp8ZnkVU3W++hQtJl/SpYHk=;
	h=To:Subject:From:Message-Id:Date; b=I7DDI67KP7yoAApnpZfXsAta0rs32igonXxpqgtqSrMBJfACbOMq5Sz5Jg5f7KmDyJ+P4qZ8E2AMCtfyVjahQb+4krYVkK4BhvCZoWja/EPwyGlFWxkHmaTmK/no+EB/crObzxi0YwDdomTVrRUN7uF1a0j2BQU7d8xOxDANRak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYVlOwCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYVlOwCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D897CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790502033;
	bh=sjxeiM+T+FuqtcHq7ajNvp8ZnkVU3W++hQtJl/SpYHk=;
	h=To:Subject:From:Date:From;
	b=aYVlOwCiqhwBqWemTr/PqnZ+6klT40zP/G0vqIdWrIdbcqQwXFyKKRRU2oq/AJH5g
	 Y+ZLFXaRPu09e/fJk7SCfLKD2BMrFATOFzZvtjKyrmbPs5YGNqbmCsMohacBx4BjC5
	 9DQnSXO1zvrga6sJDifzWSexIh1/8rZqcyHmllcjoAcXiny+E9VmsMWAxCDuaKoR30
	 Lq0DEGym6wz05/Gzd67Am4+qqpxmdG3waNTNDZ/qKeGAvoyO1bYYm9vX5Jg/w7AqWr
	 mvpeW4YiFBMrUml71hzDuNaYBaZqwB4P06gUUpEVd6jPOHdVieInyC/tBt+DaMotks
	 2amYDZPI7sSJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44F1C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050203370.28418.82708640678402767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7bdf5367b577a5b2217ff93de578773578393bd4f6e4fd93713d134bd76fb2
Date: Sun, 27 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790502033
