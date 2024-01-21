Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E432FE3F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705858097; cv=none; b=Igg6yR87fSpqTqyYcc1YKFSoOOjvN97sWebZs9iqI/fzX3u4cpNWr43O3xiZR3fT1CFmUYm9rw2tvYVGBcIJJoHDwacj3jkAEtceFdvYUbrHc3k4bkz7QsmgZU+HVLCmTmcSU4GR9Y7WXaPF1WPIOlIFhipyquCQSgI7XRpZqlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705858097; c=relaxed/simple;
	bh=bRFEHTgKAQTqbF8vdgbW+2coBosZ9wUILFZVaBEKVP4=;
	h=To:Subject:From:Message-Id:Date; b=sm7oMQ8H7/yPexT+4fhYEea90nTYhK52fbxvMCz5HUUBS5wgyBfg1zxW2FRPMTuXZ4XSqdv017D/NgKpVhr9FdjvVwuw/AAIdBgQn1XBk3eK+bDErUJ3fa5IkRZnkVrRpW0VpP4ZXEV18fNCR9aects9ZGZxXPVeLQwviyE4OYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNEMjaoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNEMjaoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3E2C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705858096;
	bh=bRFEHTgKAQTqbF8vdgbW+2coBosZ9wUILFZVaBEKVP4=;
	h=To:Subject:From:Date:From;
	b=mNEMjaoY27H5AByy26a0ZAvC3bv5MdY6I7I2gUAIoYt1dq1VNMgUTUx7qnnu4qAj4
	 rQl/AHJGtWv3gpEc/ZbEfzeOoqrohfxG9pFSAdyRN8HpFeiKLtoY9xA3kx7y8E63mc
	 E0xTySbKbCb+68V7xFCxFSEaHSdOFo1UUcJWYMPmOlPIpKMmC8lyyH0sJoJNN0GMaT
	 xlhjlk+3629/YlqWhC8XYdvZkVGqJGsTHHmoQ38YpBmadLKTOEQ7F1pAD5Xu6olEVe
	 1WntuCmck1HkZxYMlcyayWoLfA3wDAUURgZ9uv4gIx+85W29Y+9iZaZXmwURXYK61h
	 hXMPWt0xLUCuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62421C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170585809638.32473.8619570883974259556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95bf1a235f53d614bd727f5162c022ea23653e99767ea10739c9c79d7c5eade
Date: Sun, 21 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705858096
