Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCBF883F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775477734; cv=none; b=Wet39w+mPsxXIiIsMV0EiVGUNBKkJg0RY76ESQqv50JEBtjJBmCVvoQuLk7YOJlsqo4lhCXV5rv1HkRfxW2xK7VsrXqCDdKS08FjiZ4jndGrDr/xK6bRzMWtyWk1uxNw1W3PIovu3yFzF9TEMbfTRrdDZbQoS8ylXgUI0RU+oRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775477734; c=relaxed/simple;
	bh=2HE/4VoeWv3OEEVPbG86enDsASLgr5gXZyds9KOdtzs=;
	h=To:Subject:From:Message-Id:Date; b=ZFXEnV7UjKV1N/VlNeLX82DMKgff2PhXdI/WgLiVhOuCy1hmBQG8Fm/JGFOxt7r3Bmi6C237CJm7gSHrcI0kw56dMaDVNejX7fuaF+bJ+JbFzumJlDimkP6ey9cdhufztaccyC3ynWbt5MqGrmJknfIs3EP49M8WBqQJa8j4vhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqJQCtvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqJQCtvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F67C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775477733;
	bh=2HE/4VoeWv3OEEVPbG86enDsASLgr5gXZyds9KOdtzs=;
	h=To:Subject:From:Date:From;
	b=lqJQCtvXZYOThT+hkM+JprqDLLXOf2U9Ukqr1R/vbbtCPM5a0k3qg0uNIDVBMlcKT
	 UV+2tGqrf1jzexAfCYyXGES6jSlAEq53wNIzpgCq4jjTsqQsAzBd3BKOPhspz/6P0+
	 vt1tHLUu5vFIOS05dt8t0JZs8VfbFKTOG7YE24b1GTznuDgp90pub9JE8X3DxEWRAU
	 mMWk6djVQ1gx8vL/KXIl+nuQza90WmEzogiIqMNeW6XG6pOdEIdae4aSVd7pJXmMpE
	 WHkHMQhM3YYs+GfTOmmjNkFpo4Zg2nZCVjIdpOKu2wr8TQ/vOG+RrhrYWSVhpFyBtL
	 sWwjmH8LyFBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6CEF4ED3
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547773369.31469.2036659209279098056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e398c46f969332b9e6edeb3035321f0a7dcfb8e998a8acad9092b8de9f6a0d
Date: Mon, 06 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775477733
