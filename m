Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBC9248F70
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753714794; cv=none; b=WDqMl8OJgiGZYVasRXRcjqefrL+f5pRNQ1dujIbimfoPpK4pZlNCGnQtVGf/dhHfruKrRpvFb83DhZrfM6lPv0eNi3xBuFH/8HtJ5zjM61lU0gwe8vO5TXXpge7kCAlOBbX6GKcKdrXSwJ6CsBf8JzKV2xfH1E9BO+8mmf5wWWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753714794; c=relaxed/simple;
	bh=iHBwtkyw3Izol9RcOQPPvNI/WDg58QAu5oJ/6aphrZI=;
	h=To:Subject:From:Message-Id:Date; b=O8czbmT7X9+1TJIh8ZNSto4/W+Rok7DbCY+Eo5y/g/subB2kUGq1CT20sxzAzp1dVqfMFU8LTedb9iKulFXyHLQl7zfqLW4xhPPh+rx7OnITMnUaP2qt9n267JMayWe2VXxVR2UY7wKIQqOjXbz1za3FjyUzrSdjFUyeHipY9Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCay7SzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCay7SzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753714793;
	bh=iHBwtkyw3Izol9RcOQPPvNI/WDg58QAu5oJ/6aphrZI=;
	h=To:Subject:From:Date:From;
	b=bCay7SzQuYdZ5KbG8sezqS4OMJCrW+e8hqG62ghhlXjecl9q/uEoI7rGPLQpYnh2V
	 xxpwgkpon/6DpfwB5YTwB5Hno9sdGLSFCVbDRFIDZT60PksP2y3/qb0VbK8qRij60e
	 VdPo9SyZcn++YSzyW3yHaVy3X+NrufXzeGZC0s/9PKLoG95fbhAHTTdBXkKr366hFC
	 9CkBNdphX5r2TcPSAVzwI+kejAKTqHVN9L1q5gkrSbrWYE2ksvbFHOLoDobehnK+ut
	 buRV5e+x/TNmGor1O9Zo51paIaOsBxfC34Ro4kKsyBSLeciSI7GvxbWao2dIjH8SJM
	 lnVRzS7ngZmcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067AC87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371479358.8575.14793251058409976101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51337bb603eb528e26d6020aef3e835e8052947e101d89cbec52541e6c5a13ad
Date: Mon, 28 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753714793
