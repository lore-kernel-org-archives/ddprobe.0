Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FD5248F69
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765735974; cv=none; b=JM4Rs1QJrt52vWzk9/jNWvv5VfAx+ixPBMyUzGh4iOLFc3kmD/h3lYsluEriE+ABfngZUxCJOLW0+qVrceUW/SiocgsAAsWfo6NdCDTAud++KKl+IRcgrq14G/TuyafueIRqaM8d8BxvYJ3NsRPPSRqExMQ8Dn4aSftmPZ1zEb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765735974; c=relaxed/simple;
	bh=yO5I7EgqnL3GjCGhhgp/M2F58oVlo8NpLwFTZDE7FbM=;
	h=To:Subject:From:Message-Id:Date; b=nLDASZdnCgwNAh3ubuz8TlYO1jue9lErYRXE6WTRM6/arzWYkj3Mrzz1+vDNjxXeNcfKsTyfzK1S3xjR6QJchDiks1WJljZZymx2bXzDBGiL3Nh7ZjwKUn45i6cBWu6o5b8CKlkYWaAGtsi4tD2MrR8zG7ia1zgiSRKPwBhu7Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvFMJnmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvFMJnmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765735973;
	bh=yO5I7EgqnL3GjCGhhgp/M2F58oVlo8NpLwFTZDE7FbM=;
	h=To:Subject:From:Date:From;
	b=LvFMJnmL2+qt903kD5rW1yM9dnfsa2tFo8uKZqNExhtb3QgM6OzuVFlKSnt138egE
	 Mz0yKOEPaWhj6h1zPG4kxpLe3XIqZLS+sZ7DuvYUvig6XvEnQeFCijgauK3xPTD32c
	 bU/7vF34JjxqFSb8/YhVHj0hBL+DDAu2xAf0v2I4Yrpf0fO9k+svB7jk9lYCpxbeRt
	 zOx6PTeZlcLC+Ui97wxZukpwrVDakdZerrQNotDv6qjTAL5mAsR6rlaVRuaOy12XnD
	 nx6D2BTK1eVl2AniTv/tcjWMUU40NldUyaNGoR7VuFhCXU5Vpso+PH6LQuf/dLCW6S
	 c3dje8g8XxuUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D2ED59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573597358.23333.10030216856518690714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eede3d9393a47df5aebe14e59a2d011f7ec2c5a63f551ff5e69991dc7ae90616
Date: Sun, 14 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765735973
