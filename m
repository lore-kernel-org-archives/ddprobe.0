Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533DF47D457
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785327034; cv=none; b=OrHTSFVlaXDTcHz+2ivINsyq3/ScILyYwZw+n1VH9PEvzTZz57KTgOkIcAuyewRzWhMyiadIdk7CYEBWomKe9vTJFycuSfUvh0Y2NMfHXbEPe9sy+rN47sCaIwKm81yjAKodzuhmlN9soasiS4KEMHfnW91WnuiGPjkAhQLfzrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785327034; c=relaxed/simple;
	bh=pewCzzTav7WF5Ojd5hIZXBPSm6TIeII7UMUhRQNuSFA=;
	h=To:Subject:From:Message-Id:Date; b=hFbJCDy6n9x4NQJpmnnw9+0xm6qVe5crmRFQbaP7VFC62AmrL89xeFVqTG6rv8DYuUPO8tkX7ChFTjD0R7msIop/QXzaa3AL3IHh4xXSzDY6Eg/Vn44eFAZWDClohhqqqpb7PAbJfSSJR2sXw+lKtpZw+wEHNJqKaiAQwlvXgkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APlfsepz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APlfsepz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AFDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785327033;
	bh=pewCzzTav7WF5Ojd5hIZXBPSm6TIeII7UMUhRQNuSFA=;
	h=To:Subject:From:Date:From;
	b=APlfsepz4GJwm2G+It18xDy2m0rM9I9zVWJ6ZaiXDDZbINusCq0lcYKPBRBQay9Es
	 kPbOoFkIXCkMeHXrUnM1UU/yVBi6gDtWco5nNEidP2DZTZEW5TOUTBJPAA27SNXLH7
	 6A4GXs1+NVudLr0iEdgiz+7FXUs4AeIBzm1i8A7BgWyKTyAHa4AcvEKA0fOSGkqaRx
	 zsbxovuMseonm/8NefqY2DKAQqKpARXzGAcqLUjz9SuB0xaaWbOZJG+OgitNdnVsJh
	 UCEDxqHmsj7ZHNTYsuiCfUr2yGQxmQPdn+VKOIFDyHYZlTxIXMjx/AU7DkP4xIYFPe
	 LjjG6aZjH8RWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE538C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532703370.6880.12063268028806098886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387e956770d9f096ab7fb4aa80c46a026b6620b8f23906f91732ff8140e3364d
Date: Wed, 29 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785327033
