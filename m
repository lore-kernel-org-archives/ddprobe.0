Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAD0244665
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767167034; cv=none; b=oX5x9kb82UtxEF3X2hQ5hvTfG5gITIJW1DyYN7XhqnDR7oXeQ2jtZd0DezfSLdaL5OZcv19/rnvifGlh5pSu+u+EP+9RCfDuiPx2NOTBmmJ/94ztHkyobqZ7zydwEB5NKgIlhxsNNfs0TMrJ2x30OGesP/6UcjcCL//RfrCY92E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767167034; c=relaxed/simple;
	bh=THWTJK4IcJ1ABXYWaeq3xF5XTICaJBVmA0HLRntiImg=;
	h=To:Subject:From:Message-Id:Date; b=nsRcNmNSE5B7vQ9ZETmYT1cnePwBI/G3UkUD37LvGyWjwu2ZZ/+2KMhSsFnypb0zS6vHHYWCilIdszlaGGLQNKSH5lr82jo2vncHtyJSO17eqfRMqkHAQH+OzOYgFMuHxw7uoczFKCZUAyG7mx9F4O4kZWKe1DP/jA0rCXwgNQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdUTpNjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdUTpNjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D7C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767167033;
	bh=THWTJK4IcJ1ABXYWaeq3xF5XTICaJBVmA0HLRntiImg=;
	h=To:Subject:From:Date:From;
	b=GdUTpNjOfjQFEkkxkKPEhq34yDiyBweARTw2dOVnEtW/FKo1iH8jNDA813kp4Hdtz
	 iZ6noxiLU1xWXVIC/Xo0VOa6gxYH6ubvm6lqny16c2wlmhX2g+dQ0Eu0rElkLiyxNM
	 fnYq5cvTyAr61p/WMhdgpKPLxPCFYu2QyReFEQynkccjep6y6vVHhFDTNfYdcicxC6
	 eWytojsDcJB/iMWZQz6Dd6E2poeRkpEC9DNtt/ouaibc+G09NDmAZUXBR2CsTg0bys
	 6yheAvPfXBtDCa7jxk5krCNQWF5+hPNv3+uzGRvQQNY9xMUSIeInfhURJTm2LKLoSO
	 uDYKuNDWZ1ebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93563EE57D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716703358.4848.11356909870745995480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9f542539ce03eecb8f7e9c58d188c21014aac65b10e9dc8f37bf894154e3dc
Date: Wed, 31 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767167033
