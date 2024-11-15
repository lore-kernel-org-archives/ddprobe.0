Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24350CA5B
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731675954; cv=none; b=SO66OcrXiudgF/WpBy6+Tubwi0on10LibXpUTATBMAOLgP5jdlubsVYCvOcfBfJGfboMxOk/EWSsTVxiMonQXWDKHuaX9E0JIzRMSnsQBRBkemFQzAWXWFrZA2YzNVigyU83JKQCl3RWk4IRcFjJ612UCs2Qwy9MGr0v/xewNtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731675954; c=relaxed/simple;
	bh=4M9ouEVBTk3yVWGqq8QmNTzIPHIg9472oSpLGXN0pBU=;
	h=To:Subject:From:Message-Id:Date; b=VRF11UWdEsKXzcCDmZPxiWzOpZ1dFqg+Kheb3ZFQi8C/zaIzoHlKyX0TLltlGsDzpB4tYfZxAc+8RMsuBW9qFaDrvBZlA/eek5RFxqNWBPvoRKnjipCMhDYIL6wSXacIJwHop0pcJ05tQkx7+eQCQen5IqRV0mm/Sblls9je238=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXa9wmiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXa9wmiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC2DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731675953;
	bh=4M9ouEVBTk3yVWGqq8QmNTzIPHIg9472oSpLGXN0pBU=;
	h=To:Subject:From:Date:From;
	b=kXa9wmiTNmPHvSc8s6tjGd4FdhmLgWKwDy1mUNOtGZN4VTR4pMZ/bfieufWQK8A3D
	 N9DkvvX/qS/08YZERG5q/u/VdcZ8Z9OQXaH0MuuHjPpajWjXQN4U6iO2GU+hfRjqRS
	 A7kpooDjj/Vc1oECaKXci9vhYt8xBd1A685Af1TBMLtkbiWHhKJ+RXJK7h3yhuJr46
	 DAm5Fr+EBBcxSkxWE/ShkbC5nzF+r9ksHfwu4cAWIvoxGJHlTZUIi3wK9tuNu+DJZB
	 S1NczUbgZyLr1KlBVz45/4l01miuJ1Ql7Oi1M1LLaBciuLW2S23MD6tpPuClLCfpGg
	 O/W1Q5hZugBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DFDD6DDF8
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173167595361.8565.12686457442811078406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f81bfa0d1d899d83e01b564f3d41f5748980f01b8f90142529b7b7408e1e0a
Date: Fri, 15 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731675953
