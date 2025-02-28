Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB7925B68B
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740736734; cv=none; b=jMKwVJlN7Ck748Dz3wPkQHYYDYr9hpOXP4+hfsx4lcCmguKQ7EK6kZc6HDf64bMp7Thf4FJQSmc1ekjsvIZox8hbZMEuCNf00wZmaM5Q3wmayLba0N8BKiqc1KyjO7MIu8hl3/epGFhCQSNRD71FxXzcJEG860iBP/MNOUG4yfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740736734; c=relaxed/simple;
	bh=jAPucMKAyTLpoJEirjvwNTfzhDBZhtACom2pf2O+1pQ=;
	h=To:Subject:From:Message-Id:Date; b=tTMa8ARhEoAVsB+mgn57ydm7OdPt04rOhi4Owy6JS86By9Kw1jHPIR2HCITbS7hFv1s4NCOw7IB0+Mo2MUoR80xmGuvJGEvt6bMBOpB88m3vK6DAWRk7ckdYrTFEUI8snyn5HU1LwgbLHoi0BHZ00aj8tBNyvmQEMm6Dvc5h7Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0hkyz4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0hkyz4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE79C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740736733;
	bh=jAPucMKAyTLpoJEirjvwNTfzhDBZhtACom2pf2O+1pQ=;
	h=To:Subject:From:Date:From;
	b=J0hkyz4P7kIdGjadJUrKJJuFd2vGIU9XhpHvwg/zrdt4iTGGw4U5YKxTdEOYPthsW
	 c3Z8EErsbRm/5DmLDqNE9HlGyRfoKMUz5OL5OHpYGVN1/z1Qrbe/6HnSh+NE4t4VMX
	 aYQ7mJ2spdS+vvNU0EdU6L/jiKvfTBoGnz6lFsI9xWpo2mHIUUK8QEwaFuJ6BwfOcG
	 UNaPHRMGCiftO1jYcpB2ETx+0WISKGfRzq2aFw6AHahfQ+RLf8O47NLZ01/Grs0FCo
	 OisqKUpZEw1i4iCGtcuh6ubLYckr9y0IvDelinqaT19yizNwt0iLUbwHX7qMos+T3U
	 czCC4w5RXX7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84CAC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073673367.23914.7353877334726103422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cba4cbe3dbfd0a4430fb528bca4dc0b91cba6e5318a4fde3f0bf54193e34dd
Date: Fri, 28 Feb 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740736733
