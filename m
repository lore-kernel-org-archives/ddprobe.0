Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD523F54DB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775058334; cv=none; b=Mwr5yvdY18qvCTAF2iZzfAXoykw4Z1/QGRIs9BAPu9h36OyWpxliT2KRl3kCbLdKodtc+Tj3aK1T2PUgKJtYjQT6NYLBiQCgydKx3wi8+u+Jkn5jmWJbh+AeVLu05th4QcDrddGSz9hmuyo2+SwSDulAgDZviiZmz5TyH4N5qig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775058334; c=relaxed/simple;
	bh=kR+OB/GpV3H4e2c8UMXpMdZvaQH4ohuNH3966+QJZwE=;
	h=To:Subject:From:Message-Id:Date; b=DfYI1vfX3L8RxI/ZPpaj763XSG+tCgic8aPk7mA7o95yBXfz5FupMZNH4dpOKvE2jOQwdmyldO0H2BdBiPb3UPTnO5EumaupnkXUK9EkauzocZdb+9Jnol0g3ILvO5krHC8bSaqcXAZaTT0Gs+w4Uk9+Wc0SzOVGqeDig3Wps08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FunS9NEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FunS9NEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0985C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775058333;
	bh=kR+OB/GpV3H4e2c8UMXpMdZvaQH4ohuNH3966+QJZwE=;
	h=To:Subject:From:Date:From;
	b=FunS9NEmRQSr9Sz1oF6WjDZ4Fjm8+xmvbKhEf41LogxYMzptDiDFPVV/E60WdN4bR
	 ghamnRdCCPA7nLLawZww4GU9T5kS/0uMAk4KaH7DSlI6orjArbYiFWPaiwd0WjCyJA
	 jJRhVvfpXDIIrfBELuT+maTXpP8XkEHh3e1b2KlfSz23OGojaUpTBnEKfdyURMnZ5V
	 GS0lRtVs8Pd1yGSq16zbYBmdHYEHHFywljDsxItePvoJp4L6ZUWXttnbqlQzQAdDlU
	 h5q9RSgnfW7AK/q2M3eAyVOyPU6pxOCAV5cDdOcnvxxjNT1HgLKgRE/c06atW3up4p
	 naWaYR70kwNPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B167D10F6FD9
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505833371.27629.5611344030682994799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0579b4b77ac4e07b205dbebb216feca16d00a3b010875975b545ae0b59814c7e
Date: Wed, 01 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775058333
