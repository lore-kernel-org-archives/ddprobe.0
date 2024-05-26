Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8341A2C2C
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716755663; cv=none; b=POdg7/ZfUEq7U9xtuKxnSH5Mps/6yp0qaIdaEOc/PVUlqdGEqQn+zAsVLnksHw4pUXfq7YtcaTQtmxiZ6ugTeCV70i1LPP6gpP76ZszXr18r1yranNiTljgukiuXl6uXwHXtpUue4jvRIU2HDAhz7vB9Xr4ek3bKP798agWxjmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716755663; c=relaxed/simple;
	bh=lBN2qTKx6BJqy8SV5eawqCkIXQraWxOSiEUQA7Wvy7M=;
	h=To:Subject:From:Message-Id:Date; b=l9Un4dXC1GaGx6D0zqA5nHcCEqmlWnIrk9C78Fi5Ex9/FAuU+rr04E8SpIPTqUddoXbcTkmHRwpgEx73srifCBkW/UAYBGSWRyjnHoK0SjKC9YZM7KPwJOOQuYlJg2r6z+bzqDX4bhmkfR3putEhsIl8Zm6faG0/X2ffuXRCB+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/6kqi9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/6kqi9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2731C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716755662;
	bh=lBN2qTKx6BJqy8SV5eawqCkIXQraWxOSiEUQA7Wvy7M=;
	h=To:Subject:From:Date:From;
	b=Y/6kqi9AA3gmHy+RsaPswTED+flA7wagzsdTffzaVPQ0rb+fJNNWTTEJssWD+DzVW
	 6jmqPPe97xfYcgOWtUorOKrW5LIXuGMx+zloHhvZlk7NoIQEtpflYBFjfFCS1THRha
	 4dMGiSB/FoXPmoJ8gFjexnhwfrZ3z1eH+GKB8sXhm6BWV6lvJI29oOk5new2Y3NOXs
	 ehU2WxsUKibaKnSb/miu2J7SGkHZ8fdKEZ6LJgLuht/gjMgRW9W51g6tHQzZrGrYSt
	 MqHy1tBadTJPs/dGFLeYT8pk3DVcc+QlDsWZjImVLlOmNOvjO9FFDa8wVmrvPKXdCH
	 DZ5LRf8Nw4Q7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFF6C25B7D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675566277.24711.12347316741752348903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2100f17efce6cf928e19212c286dbf47c658065072a504631a46d62d86fd7f2
Date: Sun, 26 May 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716755662
