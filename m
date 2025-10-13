Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5AE34BA42
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760327394; cv=none; b=TYLeN6S06yy4Re0n6eQrnP3zvzjmvUztU6s7t87pBlyvhqlhdkwhnpD7PTFkmGLO+xNatay+6XkHZ3M74JokA7Z9oV/Ldd2811xVQMw/7D6z3gbOZNhhWnV1YJESNDlW/XyyIj3eGPOFsxuFFbJeKSqspDZ13mrCbxNmFNwFcwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760327394; c=relaxed/simple;
	bh=FmYDpDWH/k9CJO1Ofz6Z8LpH28B3zDipLUW3ksC9Q44=;
	h=To:Subject:From:Message-Id:Date; b=GDrJJuctVfZjgXlZq9PMsrXD2Vls03D6vm1wsUKHLslvjs0BtG/Wzk8GXh1c+D7NwGB17+wEwMwZykPPfq9hC8rMb6xTb3hx3oOP1cDVTTm8FuRtKZzSxjQtB5wUnwphsr3Cy6cFUcKFzfX53cYMrZ3b9zNwnQoaFAxuU4Q+FWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVtiNvts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVtiNvts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B41C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760327393;
	bh=FmYDpDWH/k9CJO1Ofz6Z8LpH28B3zDipLUW3ksC9Q44=;
	h=To:Subject:From:Date:From;
	b=SVtiNvtsRNULlwKHDRoUHkp5lfDS327Yk7/+7CxC2PJtelpkNLcUF5AYQrpi6IMJ9
	 /JvH/33qmSATEu/fXcm1waLyyIQIWV3Ii4VU3a8xk1jNquF0bqnAF4Yk3+zL0dltVI
	 2KL1s99lreddYsydZJVqKww/RjtG0sAQecwyMt05wMBQjWJ0E5Q53lK2Bkj/2FGDUu
	 pCUS+r2OIAqndMQiBbwm6o7VIuL9lC/G4Kw+XUoer8LwSnmhHfJ1hx0v6bysopKGe8
	 m2qsJYb1EK89lymXSeO7joeS8AX7ljGtus5dtFeRe4uEdYII1VVIaDKgIVYz1MDVJ2
	 ruD6hY9BD8SBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941FACCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032739357.3584.13746050629573272880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d95ade7fc05d34c05ed4560451bf2518d907f9b59a1dbcc510309ba1fb34e82
Date: Mon, 13 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760327393
