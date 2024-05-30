Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC4055880
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717102463; cv=none; b=g+EEn3xAbsV2qUgh7X2dULcgjFKQ8jMyfyeYTpj7sa/dEddGSjWSBO409Aptyptw75sV7Z/KgR42+1cddUaJueBLMmjzVUGB0+j5n268Zk8YxQB8c5XPwBoLSRZ8GuhWxPKQiOiAOE0Y04H2B03Ytdq90Dryo9UJQ25jpmv3fH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717102463; c=relaxed/simple;
	bh=oGdAkwgi8Gfh5QfeLZfAi89q6Q+MwBoJkmpkZTZf6hA=;
	h=To:Subject:From:Message-Id:Date; b=KoLzOwSJui9DGEkhoAe8mTc9qc3qsUsY145O8hLTE8nKDOjjYnfZLyQVIh7XuL6JEYagUSIxTfFzaAWofPBSI1L7ILmrhLp21IfSEMArgiq/h+HGRa5AnOv+17Mt8l68Acio2OtitAADnSwVtZ0M3qCZbNSpMOQCYeMITW/BIPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJMvdFYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJMvdFYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCA6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717102462;
	bh=oGdAkwgi8Gfh5QfeLZfAi89q6Q+MwBoJkmpkZTZf6hA=;
	h=To:Subject:From:Date:From;
	b=VJMvdFYCUUGeJg9Iqoqvp8YAYkOHrrzrM2/czgI6xqg6Y5i/lD5se08Kqx1UVEWwB
	 Cb7cvWSduqFGBcGf160vfXi2++pyMIvd/NXQTo3XTA3jDDlnPHxX1bCI50snxCJh//
	 6Y4uDLqs67pQLt9zLGASe8QBCRdHvC+GSSRTL4ciZktF9DUAuTVVtnD4VEwOKAWcb0
	 eD2Z5++ql6Y8nr8e5WC2aifkzDgb1GYaitsd1/D6B9AHgsL8ZIYlmDyHdctO57nnwN
	 SR12ip64zLpm/7NirSQTY5CIzAprk6b/Oy1vDroNTpRaU4aD2pkpOMEolTjsKrYsjP
	 GdErRFgMJ6TFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD956C25B7E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710246276.8852.11928956402784366895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56086743862983eeb2d57b6cc93e6044c39a565ebe7fa092bf5a69cdceabf075
Date: Thu, 30 May 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717102462
