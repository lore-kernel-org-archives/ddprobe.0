Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4443029B79B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765507374; cv=none; b=QeEp4bPAT3+Mm0qnVuUCcfmIN+rKvSRkPGH5ek7D0nDH9Cru1GDtT5R1WxQsxzqaRXAuDNU7up3+6w8PQ9AMxNZUexN4aE0AVjXa39arV8mNWomViYnlyr1XWsPodUvq8dv3FYYop67YK+68DJrhMKZDxoS9S93ipu51Fj2tozU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765507374; c=relaxed/simple;
	bh=867O2EFLFt7/bVjNBLOFKwXguzv2cn044k/1qwNwoWY=;
	h=To:Subject:From:Message-Id:Date; b=vAypFvz4Vy9GWOLgbUljRSkhm7LAXxXQYcDyXaywzGNKzuBxsBs4TG57G0QuXMukmQ6OMP8z4842zduEB2OGEx1il9SwB3l8PjTZGOz5jJ+azYRzFgWhGYqQAG4aAvNGvwlPFCWPH6Yy8B+X8rkWzjCP0cklYykNr2n9+TuNQYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7pTdtO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7pTdtO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB617C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765507373;
	bh=867O2EFLFt7/bVjNBLOFKwXguzv2cn044k/1qwNwoWY=;
	h=To:Subject:From:Date:From;
	b=s7pTdtO4Jy6aE0NFhe0Bu1wM6YztP1Z6n4LwdhT6bFyS/9x0v8uhHSBD23kHtT419
	 Ehbvh7Vo96A8A6jVVlA/89JIjnLjzNDEEThowCoSSQgBEMzJu7R0Wj6UCwwM29t7j5
	 /hK/TzOkha3lPsMDrkxrn6LsjHraoZanS5aT2HDoL0RAuxRKQz941qLUnkw36g6oOf
	 6dBSvlLIl8vH0lbjsA7kz2S1DpLMFX5TAfyp5Aun4BYfer0XQhPlX1REhXioUhrIIW
	 C2lv689zHj+b0FfJPG3TvJH9a2QihlzCoDlrWihbD0aY8L8kLHbEoIdD1O7/4LD9PJ
	 9vWI/1RGgtxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E8D41D74
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550737358.9619.2543733829441627339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d049c9776f64355232f67ca49f0620c22b81cdd0806a9218cb56561b3d8a94e2
Date: Fri, 12 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765507373
