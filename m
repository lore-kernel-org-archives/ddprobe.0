Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBA41DDC3
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708817297; cv=none; b=BaWErm+UrxhMm9nnLFgqH9KJJ8lEzWm7e3xg5LrDZiPoHmiZWk1tUYlfil2ZAMuBZLCVJz5+nlQbsnhnk1lpyTSTObLL9BBwwz2gJP8hLgd7dKNoeXKAlMC7yBy4A/QOdJhGll4FCeD/AupMSO0JGF2TMVHpMhDK7TbPFu36pvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708817297; c=relaxed/simple;
	bh=PZZI2axE/Ew9813TL7NzE+2OKt43q4oyOrIFBD1nvi8=;
	h=To:Subject:From:Message-Id:Date; b=h1/QYT1jWvMK9lJ9/07LpY2vjyGHFgQN8Wyir2ENNZe5YY/u1k9gi8dTZmNmDOwHOrLbfe2+1wDWL8xId+kN0ti3e+p+xThyI/go4ERCEZZX1uDTMfxDeAjvSKifTK9NNnjbXr7ry1+xTvQz5qDPa9mTC6MZ24nTyNTrz1M8uMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRv1/uXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRv1/uXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B7EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708817296;
	bh=PZZI2axE/Ew9813TL7NzE+2OKt43q4oyOrIFBD1nvi8=;
	h=To:Subject:From:Date:From;
	b=mRv1/uXTzhsuPjNTWWKbgbCUzgxDzE/9eItgekR9DmsoLu1AqhyRGu/x4Qnz25b4T
	 zqg8dqZ9o9U34twCMg/tyh7zUzu5pEzmSdY6lGjplixIDXGMSEqw4jsRkuxWLgHfG5
	 XaXaN7OfE5fLo+lj7RIH4SQZnmqa6e/M27VVf4z9mD/WQK3vJVb5zF5MHYoS/vCUun
	 ZO54K2tWSkhyAq5yL3Ib8CllVG3/T2Y5sP7mOxer/8QHyeQgUWqDkBf6/viYz7pusF
	 NPL6gBOxCbqTWX98SHZXX5CMCJKKzfuYobr6D+se6Bab8oWdCXwlSsGSuhkYhbKn/4
	 mpMbggEhKPxRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A1AC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170881729638.12261.15107576137240855331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ba4fef5c323eaf3b64908e2ffec4df7c7770eaa32103e8abfb56b60899423f
Date: Sat, 24 Feb 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708817296
