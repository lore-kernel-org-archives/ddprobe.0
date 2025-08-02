Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217FF1E89C
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754170794; cv=none; b=lY1O9HYFfb3+o72Sag9y61LZHw32L36mbvi3F1MhgLenzbwwNcVCpngqInBwD7U4RGV4QvEjKUuMhsXiJZEOB8kKYliChhkHIZxunBJKhxt7Iy7ur/HUN8msp495OpypaDZbBIljqAnjxgbS6pUVQv6XAk/0kQiHnCVpWkeiRIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754170794; c=relaxed/simple;
	bh=PKnZu4v9gE1zdGFU+yQaAjr7y71yEG9JANOInQT3zmc=;
	h=To:Subject:From:Message-Id:Date; b=DMSD3fIY7nEMEQXSopg57keCdef8nf9jhWIDUIlFFJ4BTvJATgZ5Jr+BB6ybp6K1gJ9PTXFC9IUBbzCFiOm7LCpZ/W5OnX9o/ppWw6z/qFCJ7MNxkrCXcsFkqDfydOG+p072uU6pwJfC7g2DN331Nc+0k7c4Vl+G73WQkRFgsGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqBXp99v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqBXp99v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A924FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754170793;
	bh=PKnZu4v9gE1zdGFU+yQaAjr7y71yEG9JANOInQT3zmc=;
	h=To:Subject:From:Date:From;
	b=nqBXp99v0FregMKUIdkETIiul2Bp+atVMKnAgP6v/tG5h0PRkvZxZ9paiowKFHmph
	 p6b6vUZsv6ia0OEsQENtJ0ZQjXCtYIUM0wAGaM/dRiJ4NMaH/DR/Bo+AVsb6sa3zWX
	 3UOOQIjHko56CPNqaVKIXpJHIpNUdSHzpm2whmKihjh0VGDE59O7piOubGVoY0Lbi6
	 uxSDrYqOUn2btHZLWPb/peZGcKZwOe9OyD9v/D/1EDLd3dQ4heZBioLnhoWl4dXlyk
	 N6+mPyymY/HoTTMWrlYMeT43LyhaxBt3i0A1016ew74oMWNh5HzcxxL2h1Qmj+fPfy
	 WJ/myVd4nAeTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFCC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417079358.17525.3521694967928412625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b3adb756399e3124e32af3e0b6476a08a98a865e719816237dc01c14b650a6
Date: Sat, 02 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754170793
