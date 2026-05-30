Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450672FFF89
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780175074; cv=none; b=WK6ibOE+3Id6aajUR38sx8AMqbAqOWL0DZtclliopSCfvmE6rBjhUOeSJ0l6bUxCDgYjnV5NRc86lA4mtWg6DTTNtFs3Vsm9wN1D6vhAedf1w6fZI+5Vd+6t9yBAXE/0ljU/80Jqu2gyOEpNQNUQaqkmvaSBhZ3oyZS4VWz6voc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780175074; c=relaxed/simple;
	bh=tZGaNwTy8aixAPF+DpfPMGyqXf8dRQr4yQM1MMbaDf4=;
	h=To:Subject:From:Message-Id:Date; b=uwYOBJYC5yUojg7oS2xBXqfT6vTdfOn5+fg8XIJyjWOgBsh5RyWp4cYeZYJYrHR7yNbdkZkonz0BNxdYMRVhHF3fOSn6MjnyICqyj6D0vSUdz+1t9b7/xIbMI6etr0qmCsZajPhE8lPJkhL2hCLh1lLs5m6p2ls5bUZ9bmMuRKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO5UEss+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO5UEss+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5F0C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780175073;
	bh=tZGaNwTy8aixAPF+DpfPMGyqXf8dRQr4yQM1MMbaDf4=;
	h=To:Subject:From:Date:From;
	b=XO5UEss+lGOwF8wX5tuEL7iKO+pY8DeKjYfyqFdGc6pFASBEUO7++wCGM3NylsZFl
	 NVJBUNBxIKXQn+BjH5aPMA7xCjBr3QmIODsFUnK8lQEHBYOReRUu+DybM2Zk1a+e3R
	 Akv7W0y2UfDYUYtwkC0it/o7a7dzksRM5rR7Q6uCuqPM40Q7bzwGhWTqnJWObtQFrw
	 HE8tAT2Cac/9shYw7tZv5T4rMyv0XEyC9WwQ2BvYuDcYGjT3CpJiu52mDlB2q9G0Vo
	 QxsZ1Lq8FEIeUmXALWKA+GdjqSgY+a8fWPfYud9yl3kVyTX0C+ZPC0IQVOBGJ68u0U
	 nVcz61uApAoPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE34ACD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017507369.17981.5052840843127223459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e671d64af1eb320db240bc9d7627be2479f2f0825a10299cab0ffb7dbf255e7
Date: Sat, 30 May 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780175073
