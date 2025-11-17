Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3598025B305
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763349114; cv=none; b=V8gZTOljqZtpISOEGRCdTqNNO/OUz775+lTsh72Rjb0UhAjvpeeXMXsOYQXmGgQUemnWrQaG6p91fOY6rbsovATvh7baBywsgm+bHZDA3Or+6YyRU2b/RVTUCQ6hpgyRJ/SXmwC2siFsLu5wVkGriyDyCJRYL0t1+/9hcqVBM1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763349114; c=relaxed/simple;
	bh=1lK+Z7gopWYvfjIY+X/v3q0+BZ7Rrjoy4u2voroVQVw=;
	h=To:Subject:From:Message-Id:Date; b=NyyGc1rC787qqsm3jGpRdix2d5l7eiX4dJyJYbNeP30KLq6+pErw+73Y4DnapV562zUkXOEa6/12EyhCNnXOqwdY3QWJY5apZkis8dfsJsrwIInJ910L3sHCmLGOlTmlhYfUAhgLCrYrpRdYWeYJvINpol7fXxJGuiHnNGKhoW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvLikmt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvLikmt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7E4C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763349113;
	bh=1lK+Z7gopWYvfjIY+X/v3q0+BZ7Rrjoy4u2voroVQVw=;
	h=To:Subject:From:Date:From;
	b=jvLikmt7t8QVousaRTzyHkkalaP6R/LmsHJZyOGM8/nN/NAu6yGT6SYtb+9fwtoJF
	 NbsOB0HOefgdYd1rJQv5w/COIU2UHf5iGRnUByP84uuO0KxWL6kflGMte6odoxXOvQ
	 3uEKkNvBH+jxI5QAD8A3dJ/yMbfvYwVo+H+sBBcalfPzBVzvK5BaKtGtpN0wsAPo2k
	 iRHh5NdKrHoByldrAR9XIdJJXQTNcl09gm6XOlsQfQXCxi2ozztQ4Qmw9IE7RquFX2
	 GWL5U5eW/OMbd6imqcsbpDH2VerSeb6HQ4QNWKSTxz0KGCjRLhzz4JDlVcB0xAIHRA
	 X6bgPrAkZcMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E221CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334911363.12121.7412473962499477708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1151ec5da768cf8934b263cf525b9cd43e977f687c0ca4bc832baf2484e8de
Date: Mon, 17 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763349113
