Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5706223741
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720310183; cv=none; b=arF9+PJ/wTa+4CsROmZw+t/X7+KOhpYd+VhTDHfVdGynM4VNGR8YFHNpAma0nq74ZY8v13bhTRCkkPmjNSo6uQRldXgE9m8BzHadVVQme94mRbsOGhxWWzILNwT4KQBB5nWo7n3yM53EabA1on+SKLrRc6oIzwlj5NtnevnAdP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720310183; c=relaxed/simple;
	bh=5/wo5Tcln2C1gjbeFNQg11wyc9scugeYQnf4d4ZEl5Q=;
	h=To:Subject:From:Message-Id:Date; b=fRXER8dbHn+Xn85HWuVxl/RkAEq8uLv1E3PXlvp8uQDJ4LmLoxPosTCmS0MQzRXrcnSIMXH2ypyXwKAoFA4HD+1OUdcomKZ6n8x9cxjBiWugLICl/LUR8XdV59w5yD5qxmjlQYtXXYdJulcNqqP99rAymPQNBxkO2oe1dF2Mjns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wxtor1T+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wxtor1T+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C78C4AF0B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720310182;
	bh=5/wo5Tcln2C1gjbeFNQg11wyc9scugeYQnf4d4ZEl5Q=;
	h=To:Subject:From:Date:From;
	b=Wxtor1T+n4IJHiazC9lNems2LBLD/p48tcHZ9Zw3yvJoK+xdSh6vo/5D0yJbwNhHP
	 tCJf02QPWstyOKRzJRtswF0nw7MXg6GDwA5BDKhZGpADj9QRszf3ds8uWnfYmskPWk
	 HYUSaDOYPsH3ObKmLtScHSxuSPZ0JGlIRhJ0j8SQZl3pHJIeMSHi7IBpbr/mlgnMev
	 qSRRiitOsLWt8wEkmXbhX4grwu0OqxdWItekPXkR9vWATeTEL7d8+MoBE/oDbOQV1T
	 3Tza+CtkxMGKTTRJBSTyYFKVt+efa2EUe5YS3KLTJsVT4x11X2xxuivzKoanRYYqBR
	 l20gkFtquUdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C778DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031018277.21624.3636025190348817958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d4e96d3330eb754af68020a0a33c169bbee4fd2c3982f12f633ef43c5570fd
Date: Sat, 06 Jul 2024 23:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720310182
