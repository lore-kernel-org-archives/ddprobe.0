Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E3F2E370E
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754114395; cv=none; b=iEIyh5eQrVHPxpLT9W4YY9usn5Noh4/Bp+wT1xlFWHu2RKa+En/WR5QVqb/g+m5weL5L5+GS8CyhG111uZj53gg6RAAWknIEU4UieTPYeLDW6L2ouULxTMCYe9CC5MH87OP6A4ddPgghRTPi6/rbRT0aWzbw0Q1RLvPp3zC57FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754114395; c=relaxed/simple;
	bh=BviQYpjRqsIM4ogNByaVLJZy4GrRGaFYRmQQqOxH2mI=;
	h=To:Subject:From:Message-Id:Date; b=JvfGASR2s6ED8gre3N/cKGxcbu/rjBspEBXsbvx0cHR94XrPXZ3FBJXi0kMeophblo+m2z1VIp2nqxJwOtE7ZjHC/23YcF5mEeBEgPh7HWsAt5eywJLcEFMqSyIl6dMMZ9Cb0pL57MaJz5Wb83a6IgoCwUSTD8shHfFmik2cryY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALbVYPHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALbVYPHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6083C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754114393;
	bh=BviQYpjRqsIM4ogNByaVLJZy4GrRGaFYRmQQqOxH2mI=;
	h=To:Subject:From:Date:From;
	b=ALbVYPHQGtyHBoz5R1A0T/AV5Pi7L25FvLlapO7zkZ1RDRr5c7e9437btukVwuess
	 a94Asid3JpeEIhmjdqFNybbA4aIHuIgjqK2MXpCwpswDN48UpAZ1clZOxYku8PvtdZ
	 B6T6DJfW2Qy9zEHCzJUpPIczgorcvJDbAK/d7XqALzjq0GQNdIhqjIz4QfiQJj6K5k
	 9WB6ixO85/LfyNtE1ikuo3eCqJRVPxVCnvoLhVeRW0SlX8qv6DS2plafWpewPogKuS
	 zGLA+/vNLTCPN1XiE2mGLjKjNa8A3VOHCP+ePjkmjBMMdo1X3j9O2M2E0M7t/4NtDF
	 hExeqyLUOQlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0AC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411439357.4405.15928789974103326516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d6c16b5337849c5693a0d6afc4c600ba48468a11eca75aec4f50286a0f5f20
Date: Sat, 02 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754114393
