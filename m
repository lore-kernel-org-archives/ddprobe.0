Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0E71632C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758993594; cv=none; b=YTrWs0V+7A8nRk2LiQ4/UFWb7qXBQIiBxYviHB9+jW+Nbj3ntEbscshPAAhpsZr+We0vF9NgXKtb2VUF4ijsRAA4SYttIg2Rcu4r5Qypi1VVtitMCFxKuk/fKHKzacPfyzee0BX+FNLyViwLva/8LU+o+F4C8R+xg3uklNC73js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758993594; c=relaxed/simple;
	bh=dP3fqyFCg1gwTo2bklYpikVmmpFlKMzKThR6I/N7imI=;
	h=To:Subject:From:Message-Id:Date; b=qx6r0dH0xhs722BiDsj7UMoJoTjPn/28WbqUmct+n2GCs91lT9D9iX8MNE0kpSg0OqV7XZY4nQxbTCyYBInUYDFuz5/eCLwKgHaG88+okQJ/XhI0m0zD7ODtYG1e7WVmCcTNzRuhTg7Rq8p1uLPZFBCu4KuIyvZ7vY/Zv6tmzBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrpKhz33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrpKhz33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B86C116B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758993593;
	bh=dP3fqyFCg1gwTo2bklYpikVmmpFlKMzKThR6I/N7imI=;
	h=To:Subject:From:Date:From;
	b=qrpKhz33eXCJMbFMFr0I2v2bw6QhKZleuzCs5kAqkNGDicchIZORyNDJ7UxHjO7CO
	 1mYAoJdv7c9kv0hjvTVMeyPxQ20O0aQVRo04oP1KrJ/QaXqwo7otmwkZKo7ZVKVv/l
	 gyxpJr5TicPOf8cgfjZC0Qwds3Zv+hpvmX8FPckEe8MA3AuxhEXzCK8kfIK/dwu7bZ
	 xTnF5udx5JslirtxHuMAa6VrE+ByhAVc4obb0Im+14/etqdDA1034YBy7uvlfRcB1Y
	 k23o3ffyHfyu3DJaWiGRlMQxWzjP4x0XoHDMDQasEqz3pTpZ1Dr6WT+CwPKjhLJ8O7
	 EDsOOrXjfDiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9455DCAC5BC
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899359358.13888.17226238105766583837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bd65c17d093a5710ced0edaf146bb72e94dcc045c4533676d7e219cb9c90a7
Date: Sat, 27 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758993593
