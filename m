Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AB0125DC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716642263; cv=none; b=Hvc+FxY610BnR0Yd4nqNmEd7brd/tcea4VdtNdnp9F6zy76W00TrayzUg99KyvYWMHZ1PTdP//lg/gEsB93naRvzjofG3h0jK03xQUU/PKYzHfbwJu4iWzYerPG1+J42Og8kIWEkBMXJiJS8uj42V5MCctP+aXONnqozhQwNUhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716642263; c=relaxed/simple;
	bh=aKg5hx0fPVuDay+k0Wn2FWwy6kd9MeneFt/JUXwiZOM=;
	h=To:Subject:From:Message-Id:Date; b=uGIvmbxgLStY4NnS8XNWRyKngr19n2htDTK7k5aaidQ/tIn/ueWaURAc0wXnEJ+fckjCDHtyXD4TRO8AVs7bwBjPG8MgwElkoqsbBeGg+bbPRQETqquZMbvy4VJNEOEZcz8BTVPLSoei4Ww5mAQW5KpuuO5p1M95Ynhuyyx21rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU3GvZim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU3GvZim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEA2C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716642262;
	bh=aKg5hx0fPVuDay+k0Wn2FWwy6kd9MeneFt/JUXwiZOM=;
	h=To:Subject:From:Date:From;
	b=gU3GvZimQ6uUIrAnWv7QjsPesX3QP0zzhlFJQrsDs1NC923d032d5SW7QgRZdystq
	 GlZRdElOVs3XBGBXYyn0nmiPLgRDbcnboCwavjBB7bMzNWD6WG8vbsJbRhZ6/62tId
	 P+17UNSESlNhGHT2zB0Wpv+mXxe8tPMLCCfIuqdMLwA89e3wPCI6YHFSpyyiGpGH1l
	 bEjt1vSBXnMhr8ab3Fo1KkUyTuCp9P6T19ke8L+IdHC6jePUvVzBl6UOu1tGG4XQG+
	 QGYlwUY+krmsONwYNbgs6I5dwQeOKZEuykS6nztC7yUxzb7J9VcDA53PwfZPULWSdl
	 Sk3Rotvj4YpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0DCC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664226277.5828.15063814297598141766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5163eb564db33b877630583a8fe1fae330cc60f2bd696083104050cbc02fec
Date: Sat, 25 May 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716642262
