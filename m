Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435D33987D
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743263994; cv=none; b=a+vupGAJxn5lNLkWrKZeWBLLKiw35kAdH6RSjO1JP+4d7v8NRJJtfgmrdg6FWBLgE2+4ruBQ+2a070LM+/NBU9VVQXj1TAoxiDk7bHaHphPjYQsJEvj3BoclhutD+GP7zzUkmeIQjsfWuYOpgB2+xbRtLxgEoj0DELCgsV9QOxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743263994; c=relaxed/simple;
	bh=VMNXVIy4FA8e3urfeVhH2adl3TypkO94E6i3v+r8Vbs=;
	h=To:Subject:From:Message-Id:Date; b=nQcay9/+6Ou+vXFaaY5Kh/k36D2fdd+B+IekWqhfkkYBAA5wWYKlufDmGxfcHHie840Ov9QhXTIYTvcpCeFR8xEY+oM0pBpG4PorZ1OjAu4kVtxCS3v6/jH9RBBUoPnqYA/iXJduTZbcDn6DqperTpzUZeFodXmobmAJKCQ4/U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7CRwuGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7CRwuGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B420BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743263993;
	bh=VMNXVIy4FA8e3urfeVhH2adl3TypkO94E6i3v+r8Vbs=;
	h=To:Subject:From:Date:From;
	b=g7CRwuGCDFKjYY4pwatzPG/5zW3gXKXc80vdMzTE2KOKhbVf0WsRv0Z41fjMquEG/
	 Z+thqtaXaF1c5Q0HK8j/WaI54gKbr1BBounKmiBzO6jtvabYrZjnbLKhRF4BDoeScp
	 UCOhVEMR0X7ShZkei+S78zBjrX8v8PZ5uRAeVp+i4U4ebM6nDCeW2KzBXtaV4vlU3W
	 igmTrHyir1b+HBihZa7Qb0BGJd97SMIaT8L1QjsFanL/DHGVJgygsIocnnloFJNly8
	 LyaVN2nvAEvyW0+OROuvkVy3Lp9CZvuspwA2ZxzgEZ9hj5S4MT0zuLeM1autvDxIpy
	 atU4ViIsFpBFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBD3C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326399361.7908.7952299145077573257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1d15d0b4ec3d28610ec31f749fd4242282eb41378fe9de62c3a9ac8a95c2d4
Date: Sat, 29 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743263993
