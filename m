Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F090D264A86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773359694; cv=none; b=g8banoi/1t7UWPlxh+k9b5qT7IoYJv5qqm3cKuJQLDl28beN9Fe6P3UR3uCyqk5Yrazpn4T2Z0RkwdpQ/RBWNIkv1/tnpU5hdqFIFkMF7kV4kLBJxlkZvz5aOCt2jB1cT/lghdupFYY3msQgIR4+0+1/SJqXNMRe8hursiYyEAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773359694; c=relaxed/simple;
	bh=5P4XavCJwE2qdLOBGfx2INI0sOigr23xElwakLbFiWQ=;
	h=To:Subject:From:Message-Id:Date; b=kAbnn0KcBSq/kk4H7JXtSFXMa2nGFbtwUBgL9K5GUtx+/8GiwQGJPnZ5I6F83hgj/uCPaio4zXPHBjS+sBhMEYdRbxMCp0Vwuu6+UVubIYmhbTrDbfldtrUvjTLSmpmvdmi4FZNQWZkcYmG2uJJVIsl1YaeXaLPx411d6ulFhPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjtiIBOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjtiIBOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A455FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773359693;
	bh=5P4XavCJwE2qdLOBGfx2INI0sOigr23xElwakLbFiWQ=;
	h=To:Subject:From:Date:From;
	b=hjtiIBOcSNEQN0Oz4CxMoZnb3qydUU+/DHTqDgV0nztRIYX7B4cF4Bl1AziXJfEO8
	 lH5AUM1payCtINbs8ykYSbIB4PzBgTK89DVes6hFdm81YAIlB3Uuz4NXv+xbQRvvf4
	 AfwqENl/CBfOZoKmAUnMhPZ+3CkchHUCqElyRHBbMuhPJR56zWkF7d4ZxUwvYAF3uH
	 f0Oowp103Cc0XszfbMGKRb4Fw6g815Vagw3ka3iBF4hjnPKeJDoWGavvfnuFTdzhb6
	 w2z9vtoP8Y9UsLR9rPT2XUlgY+c7uJA23h/LylFBVz3V91mepg6SZOisdyX3KDRrba
	 pJOjBPWOEjxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119CFED2F5
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335969358.32070.15600574374033379255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9a1aa50f277d8d3d171cb28d90ec7a17dbc4c9a3d549625ed930043dc316cf
Date: Thu, 12 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773359693
