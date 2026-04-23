Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4983EFD13
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776950254; cv=none; b=sBbCbEdhQiui5Uv3H9NbZtls8nW4jf02ZONhtMKXet453HIydR+/YqIXXZJrG8PDpPp2uJHfEg5aGwBB3kI5P5pn7Yy675ELVx6NFTIE/MCMbqK/rv/lZINdAIOO7VK+B1zfU4El+KxMOPQBOy5+jwWPk7TEhOQoxAoJy6wvMZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776950254; c=relaxed/simple;
	bh=SIG8pn5Fg3s7nNIdh4KfjJjAtxVGraGz4ImuvNF8Xag=;
	h=To:Subject:From:Message-Id:Date; b=Y2v1R0FeUm5d47r67h6PaeggdCJByxsOkHf6Cn2XCH8u4/JDc64X27RGfHlc2RkWtBuFZYVowtREwR9ViFzvfCpgSMeKLDrwSeRyDVR57wpemmNR4/RUuiCEG9yMtwch1eYyjvaroShhQnep7KYNoSLVXKs+xK91nbKjHVMSvf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPH1dv+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPH1dv+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F10C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776950253;
	bh=SIG8pn5Fg3s7nNIdh4KfjJjAtxVGraGz4ImuvNF8Xag=;
	h=To:Subject:From:Date:From;
	b=SPH1dv+3GQdA9GGEWC/5UctpJPcCiNo6BNLsPvZ2cutaSd9gYGpG1Vyl5Gpleo/5b
	 VoTvgREzc7atnNjyn8dTmHpc0JjsYpCV+VeXgLKnwWxmUE/IzhjxuBNfs3n4ibvGgb
	 PWN9TR9IXWXdQdMgwfQgl//+aCV3WetW9HSlYQiE6Dtwei5YaiAdj0NXkaO3A+0/E4
	 63Bm+iRk1QabROP55Xp73+3APe/X93EIlr7c7lI0Li2K8hmnvBAm0T+Px+ufCo5vk1
	 beMz1sBTNXO9jOlK2YtCXMatnldeLHfxH/n5k9xbYbAUYJMpC9+GFi+xFYGIGxEFcV
	 hh4+dy6U9MPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E5F589D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695025368.18023.17784533442670645864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23ee07fb1bca0485a8fb288ba9cd2d7fb0863339bd9d5397340cab434d34770
Date: Thu, 23 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776950253
