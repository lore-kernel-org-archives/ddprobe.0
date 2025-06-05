Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E69320330
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749159594; cv=none; b=TGA1Xvk7B1M9jz0xKr4RNrtBaYGLiWQSzO9qTvsoEWISsQrSP5CoNNX39tgo7VuH77gj8KrSVySFtiQwvpCvc5EQFlhx5xv8dK9mCBb18fJT5uIV89+GNyVLjO1E/bAChg6hBCP6ySKfPpz8hiaiEkUE4wUit95FYGZ88MKZatg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749159594; c=relaxed/simple;
	bh=slwBKmrgAEUQg+XNrCrCPEfsbGQibk601QN7xF3J7To=;
	h=To:Subject:From:Message-Id:Date; b=u7NC6N4ytSi16pnxaEXEsGFsjeMmkBOX30y2HD3kU5+Bl9rW0baEtz++4nuR9RlmZ9r/fjEpv9FK65eAU2AzCQv4tijI/CIhGbdgSz2EzIDZzFo5oOPFXOPJGYsJNquMgFTs99RcAtzsxrYfV4TZqnJ+6Tv7x7b5PGy2rGRX2yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwtJnmgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwtJnmgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749159593;
	bh=slwBKmrgAEUQg+XNrCrCPEfsbGQibk601QN7xF3J7To=;
	h=To:Subject:From:Date:From;
	b=JwtJnmgGLxfodASBMExmNVMRgmTPHYv1Z6+AxPQFAWVyxRCKTm/fJpp/Uqm6dEKUB
	 zIMfZ3bcEgskhehYdultPu9/AFFDViBKNKinZ1clIqaHC5x96WVIq1ppahk0dHoazt
	 KV+T0083lCfjmowJDWv/0wTZvvVoT6rnt47ujyOBtv9UwmWsPAjyfBOhRMig0mLC7X
	 hzWXp+eefmBBdoH22vb5yZe7m67ffwCfi0HSV+rq2t5g0zshW8gQF54SkXFjrML3gy
	 2b/8hWSHY8LMjk1xTR2EQlO1U5w8oBMfzHugjqNqKKGnSmeVTGBv+gxYJECXk3rMAY
	 AbZXhECqw28ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92981C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915959357.10764.18005413833835266489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf1f38005e5275f983accad03810628bd0154ddb9ec61d89bb91aaece5dcf26
Date: Thu, 05 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749159593
