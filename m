Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957922FF22
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771066494; cv=none; b=mIjjKC754KKuM90SQ0Qo+/bL8U7DZZi6VVonJKt3trB8tl4JUKzXA8ixbOyrldqAAUDyCIW451zd+hP4nx6lCMTpG+U34zBOLgBc/YgboPY/V+Zyily35eN8agOSU3bM33w5ODKTYf3A2ox5tAfvSCMQX3zpc8hkASbnsNS+Ewc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771066494; c=relaxed/simple;
	bh=SARQ0MdjU0tA5+Ug+oHeU7ieaA+c1lhsP9P1P62Prxo=;
	h=To:Subject:From:Message-Id:Date; b=UT6mT1cu19/6YKZIPssbFUGUamc3QxIej/kcGf4YhJsQKinqKpUEessTvlYfI03NDDgRV+dg62KI2TGKFrlVxbxMSYKcm4rZc8F8fWPjzx6e4UKOpzRiFYD3tiazInF9H03XcEqQCCxf+Us/+2cDIqrmxQV4fPmP9hrAdH06yU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hovZpOh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hovZpOh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48A8C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771066493;
	bh=SARQ0MdjU0tA5+Ug+oHeU7ieaA+c1lhsP9P1P62Prxo=;
	h=To:Subject:From:Date:From;
	b=hovZpOh21TysaY64d9VIaWjZfmDnj1ziTDuOot70wpCOUKcUG0amWPx4yRHzS4jO9
	 XyPt1yyrArHUjz1wCZHSBprfljlvL32tDBEGmd9/Ub2kuXLRk5xUKIhDuWR+v7pdfY
	 pPQnDjG4oaBEvPVoVmGQcL76s2KKLRXizitycwvOawJZjMPA8936VvpP9T8fz05WRs
	 40DVN92OJdQ0w9B1zKHte/aycZu77tneRX5K7WZoLOshCymhSjOXM39e/ghD0pyewc
	 wc4fLpGWBxmIm1KSYKBWTIT7cmIrcy0NNkuozHCn3Lo6JBKrCGwOec5IJeKRs1KJqv
	 Xnr8tME2kiUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EB9EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106649361.21697.4150069866558688042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bba5d4607411550f099254b2c99c6e80c3f3b1e28a383b5abc6aa7392d2060
Date: Sat, 14 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771066493
