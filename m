Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175618634F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759618194; cv=none; b=s88tQLQ9UoFBx/kqQRhKUBM0FhxAtWG0ycy4M9X5upT6VsvvGIKQdcEXR/WMqnBISjGIfBPqgoUHC80uue82aswQaNoSXjnpeX1YsEJHbjDS6rbnLtkzq/T5orG+NDwDOS8cPBO5bx8+wQRRGKUn7pdYY+Ugd94koWE2ChR3zSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759618194; c=relaxed/simple;
	bh=Mdk4a8YygFelafbji8ZFFcP4GpHKKFuF4NgeQF3ZRXY=;
	h=To:Subject:From:Message-Id:Date; b=FKis0Aez9KENOd+AOA3FaOJj/FmXuPJ8ZWa6ca0mAh2tukm1arbrY1kQTeT9FP/YD2X/VYFKwNRB4vWG4YPyRogrNO2Q4d76zVB12c9ItqAcxNXuOZHsb+fggOlrfyEv+0KFT3C0ta91GWmXwR4YCbc48tKBcBkfZ9Ht75S3rBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mA4dgwGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mA4dgwGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47FBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759618193;
	bh=Mdk4a8YygFelafbji8ZFFcP4GpHKKFuF4NgeQF3ZRXY=;
	h=To:Subject:From:Date:From;
	b=mA4dgwGmR5O2X1iH8Qus3KECmd7MMKKq+n60aUAv3hBG47qewyVOBOz8TtwbWOHQ6
	 pMj5Xujq8WwZAhF+uL6E9arece8ZToz+Ul/Hy8FNMwjssqBK2ZggJbegDN9FRens1G
	 +Ic7r33knsDfAbtzfkm4TQfND4sv4X2GTFEiUcK1n+DNfCg9QdenHv9UR5y2phf1Ue
	 UNpguo3kT+36JCcdkQveW7zJZw3Brp6ufx2gz2QkTF35sb3znIAzrhhW3kY5J9onTk
	 zIiuRy9ETF4oLqbNT4g8GiHzAZSZQ3j9hOM/6d8oHGHPVA8NzcbmhokHi+uzaaHSyo
	 9RRX06ubjy5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C4CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961819358.5173.12399392112917930008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b085d190421e7d8e3935bd1edb4e0866b389155dc8af15e881a58275734ff3f1
Date: Sat, 04 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759618193
