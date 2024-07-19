Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B98535D4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721371554; cv=none; b=LDMyqWi6RG2EXVFX5jCNtVJb7u+2FuIUEENnSd1ekRVR2T9JruN4KaY9XVDEZz0JSHDk1Kjtsb61qP5lQd2mXcybMPqMdyymHnATFJgjQqrkCcb3fL3De5ovP2K1ZYYQKx7z+atOIMlfDJRBOMkDaZGW8Hv+v2pjv+3oZT0Q/54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721371554; c=relaxed/simple;
	bh=HLpamL7znuiwg3pPe71W/zT/4U6Ekq2gKGb4A7FvWqQ=;
	h=To:Subject:From:Message-Id:Date; b=hVqFOkIOe9lAtQCcFbARqYVnl7Tyzl4AXNTcxT/kkSXgD+V+EA4pobVLehmx2C3a2xpa2AtoAHvLZRmzo9UP2nfUYIQY8qgSxUZfQIN4QJx49IPV2O4sVckvA/sS6HjFymfm6RNf5gd+aPf6gBFTAKzh2tyW2l+GlsSLHOvGHe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoEMvyqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoEMvyqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CA7C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721371553;
	bh=HLpamL7znuiwg3pPe71W/zT/4U6Ekq2gKGb4A7FvWqQ=;
	h=To:Subject:From:Date:From;
	b=MoEMvyqsjAVcCgfxKRD+ffp5zQ+RWWW3ACcJC2BiCi0vekgcPKcHT47UdV4gbUxCh
	 RabQJERyp2bwvcA0oxTcndA+NGzecVoSNPG6L92u/fUG64pqr88+jInfMEy8bhqCIp
	 yvkwA4UM8zuYf99szl7ctlACIG38FA85Uc3ysOs715NZ33Ii8KLY0jFEFanwRdk3NU
	 CQ0fxBI88XL8nHvw4fnUV8l6WjVvpnAI+cHFsqoA18Rk52AwtM9HPOXDrkCWmjwRAs
	 E1I61Eiw9tvYYdRjYhP8zwkv83Ni8lYzrWFIONhxk0uECWa8uMqg/W2adsYvJsAtmn
	 wyu0oBQHSQACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92719C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137155358.13290.14503149068749282672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd456dab1f26704c34bbe3d06cab299f5dd8b4ee9446fff75fdc51c13a9c8e12
Date: Fri, 19 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721371553
