Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5282E4BEE44
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789184434; cv=none; b=pY5bs1i4Uyjx/64e2zcfkfNTckC2zQmpqs1wIeYjg6Z/e0GcObgLX6GBVxaOHuEhbp6Ssieos71JjoV4CHRWMtnIK7M11i9k53ipTy0UwPm6cge43EF+Z29okGIpdMSUodlnSG+UIytRCy01RKEOF05n/Z+ztohNDOamD5wtcH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789184434; c=relaxed/simple;
	bh=7pTCuw/GVdVcju9iF4eBtZBbxlIfjdf6OynCDnFA1vE=;
	h=To:Subject:From:Message-Id:Date; b=Fl6ITt9XKUXTKVDIH3qDeD830uoPH/1JWFpxm/k3rF5TRUlT45b0fhjH4kKbluCzwdUG+O67tOhwMahe9fzFVwAfv4HOlPgSM51CJI5ydL/Y7ahULIJKW18HIyOiBtszEBleDExyBXQ6eJi/jcV/2ono2+O5QyNEjFv56+HYh24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgpT4/9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgpT4/9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AC7C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789184433;
	bh=7pTCuw/GVdVcju9iF4eBtZBbxlIfjdf6OynCDnFA1vE=;
	h=To:Subject:From:Date:From;
	b=mgpT4/9g9LPw7sDJ0IEQbQ0NAguqIhwpng3rVuUJUzcgudNB2KJys6fgAXuR3dR61
	 qvWnL7rc88sDk1dpikS73YfX7dihMFrJ2LqHROIKNbM5tktlL3c8iKI+pAJ6cJYHVk
	 iaiTST0KcdYKc/1JZ2DN5cXZufYpUxnGwkNeT5Oj1DmB21CzHfxybX6n1pRUY8acRD
	 t8csGBxeBZt7mGedQKlvFh5wgDRzBuyDCtwRZL6AHKQOcwPH/QYmmFuJf/NAjU7duR
	 bNVkGt8BXhlk+yxHG4fXUQUjzURFnawYRFv82o3xmoKR/HA3r8PTtmdgkNGIPNtkmv
	 TPbFd/n31a7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B012FC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918443368.7190.5457379327495159168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663409acac0d19cc757f60c97cf63db868ea4422ed4336ba318044bd16ce6602
Date: Sat, 12 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789184433
