Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE037A487
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783674514; cv=none; b=qkF8UO7iR+E/W91e13zNf41LeTa7rPelcjjlryCc73lHH5xXkCnDlTSjhZ4p9XLE76065Vvu8AdNakIsvEunFOuX+XK4YaSzoJg+T26kQEwTsZOqrdRN9qLkGS7pBi20unJncP4gykq3OBovl67O0+6C9m8t9S+Z1+i+lTY0YWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783674514; c=relaxed/simple;
	bh=v9k2ZktGiJ+nILtdZ8XVENluBUJDp85T3o4cZQGAylc=;
	h=To:Subject:From:Message-Id:Date; b=eIM0exq0/zZ2FfkX7fwJrvi4Gu8anp1cV/HQ6GZR15vzxgNGzNO0wlnO2x06n37m+GE4u8xOif4BW6APlMYBp7HDwaZXlGjLYGaWqP5fnA2nnpAXilI2o+d2ZYPifuHeICyQsk1TP7HfK76Cm7Vt3qBvfIyki80w5SXzKCRAyfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiGVWEC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiGVWEC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF3BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783674513;
	bh=v9k2ZktGiJ+nILtdZ8XVENluBUJDp85T3o4cZQGAylc=;
	h=To:Subject:From:Date:From;
	b=QiGVWEC3LV79LCSeUJwkr9F5mNCVDaiyUUPBopufaYbDBEt3b7OaHpEJtKilPgCeR
	 bxLOv3aymWzKpXYLWETC43cqXvtcFR1UUM4pSco8YYjcZorIdNQnXptbAnMZdQdipa
	 z1mv+jmBnK4L9BkJkr0W93Mm66mY/hAX+u8/Mdj9+HUhkxp70nNo8nRE90fZCIJfYa
	 WWH+L4snMkWmsY395Em3W5iPX7rurpYNCLpsVa3SjVEAQ5rlJUca05hj1riMBN3TxP
	 AFieb8adafZqVUZUhJIKhUYjXTM3u3vCDzpfNbtViMNlbf1nvHqbUvlsOYeHtRYkf7
	 ObcgJ/YT0ecHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB392C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367451369.11882.9962383795847561294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efeac6360e672c18f66e780c664356af98c084b1a7609776484baf9b43d8dbcd
Date: Fri, 10 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783674513
