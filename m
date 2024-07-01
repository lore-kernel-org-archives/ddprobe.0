Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6694A1FA5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719806663; cv=none; b=VE7Y37/YJr1TwbFOkea2T2NBr16QrVQ8Z2aY0Umb7UvGPl208KUHoZ3EZ93WNX1wJvLCT3/g14ae29XFnEQxPKpCSq1TsIslUn43oCnwqgzZEhMFyUoNRXDqe/euZ9L/LJ9UN1DZekPS5/7Suz75zwNWvTD6ixcP/k7pvjhzLUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719806663; c=relaxed/simple;
	bh=fHDmzi6RnILnjAJH1Ys0Vp9GzbkrWJ2eB9mGsGS4fvo=;
	h=To:Subject:From:Message-Id:Date; b=UPFAJz/npODU5yy1nGaQ7MFAlC+fK9jP2H5+3B7UvR5CejcoOKvJTsNGims9yO6LWmHWSEThA5Z/2UaRRGGSzmzWAPqLKFWRukASN9tnK3Ww/zWJi3yDAd3jgAaf6ps3ZJoaO/lNbfU/cmabPxxR0bbjQGA345hnnHjulr0ISXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEWRbGdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEWRbGdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72B1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719806662;
	bh=fHDmzi6RnILnjAJH1Ys0Vp9GzbkrWJ2eB9mGsGS4fvo=;
	h=To:Subject:From:Date:From;
	b=aEWRbGdl6S8CsR2k/QSC4Fiu9fVY1RRkE2ml8mrnAYP4OC8WDwkx7Q4JZ+I8JV1ua
	 b0gevVe7x/g7mVAawhb11sqOpqfuQ91/gDzbBlcWN34kjMWLGHr5xurcxNoR5rHfn3
	 f6lOK9FGQZb0ClftZdIm8Rr2Oj2pw5vY59Hh50GCXL/fAc2/O2cgbm2xCVzzcRNsbF
	 0919cITCxFZZxrfr8tCF6o1rk9MargmHeWnCweomUkExhuItp2Ze3V4gjoHvPxiByM
	 jh6XOd8jMAA4HaYCk9RF6yB8pRwCzFEZPCCzfouJFkU0f+trd3QXWVHpHsIjE0FT+F
	 pBRD/bdYv8sOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01E7C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980666282.22539.6096507566289925015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115e5eedeb10d4b32ad1c24b5db0b1b60e800a13358e0657bb86345f997d2a46
Date: Mon, 01 Jul 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719806662
