Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB231A9B24
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770857694; cv=none; b=W0gFtasP3Lwo9PJ/hTdslXXVfMIDyNVTZS8Cfe2SSsQvaQlfjG9qr8wPe8g7B5jb91t4tMScDSmpM92nbsX5wHnBEE6r1Qx6l0cB2Zgeyh8S7f6VsBbM9RM56anNDx1/hLAcMUyimmpBdo1nIBs/dHq+0t+vpSdWaFOvlC/tnFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770857694; c=relaxed/simple;
	bh=RDsIVKzR1ghpx8ptcenYWyYxjCbWjkPZroTOu2QBpZs=;
	h=To:Subject:From:Message-Id:Date; b=ustQNWDQ/toMFgb8aYPq3gFxdbcpvwGy12rVqPvwPMBnl4ZaSUV0lFKKmqP7/beIHUdchA6EMIeaV9YOgKhJqEaB/7eiaDJXeP24YX3uVIUsEJrYZoX1a/QRhs7ab9ley3GS2efPPtBD3zHLR3Avj6YqIRLmsegbi/EXnMDW8Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SllnAD2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SllnAD2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEBBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770857693;
	bh=RDsIVKzR1ghpx8ptcenYWyYxjCbWjkPZroTOu2QBpZs=;
	h=To:Subject:From:Date:From;
	b=SllnAD2dutz6x995PMX9e1vA6Fwnn14Z1Y98lwg9eSLBUSiXsKYXlFpF4t/WbgpHo
	 UwXpYRTqh5JQgoJSEQOgRKlnBDCzW2zIj/zJLRjvElUkat/X22aOdW2jnIltXtW7aY
	 23dSPCoipv999ZDMZqWYgGAnxbe6Uhya3PSffJd92T5/worucEF5cWcXUzvpW0BaQ3
	 DFeJN/8UP9FLMUZEERtR75C4mx7UeN4oveH1EWDXpkwv7X75/Qv4pjXKknWv94w9gi
	 X5R+JMdEQxeYtlpJQ53c29MKi+GkKtI3UNWz2jFdTyP/V8XPhTV1thY0ou3E4oeRvd
	 dwFYEghl6JYlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96889ECD6F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085769360.4950.1282571739154113175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877fe8b4db85a21842298a7dedaced5d4ea6747bb5912e60214c1b2c6472dcf3
Date: Thu, 12 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770857693
