Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E79929B78D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756158594; cv=none; b=UYjChy3qk4tfAgRTKOJPnyCBAZVt2Op3oljRUZY91d+n8fQdFy4+8gjeFMX+T+ZSysOqPBFZxlOGm2aZZD1LSGdk29SKDMCptI0vCZI9N+tUHC+C6hk1nLvG8BeHHW2B/iwIC1hQkPHYZmWK5434t/U1Ze2H/hxQD0pV3f1CMYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756158594; c=relaxed/simple;
	bh=coP0adPO9n152vP9f2GKjOmyucU+QlgOO1HkiNLr2qI=;
	h=To:Subject:From:Message-Id:Date; b=TJ4ND4G9agiy70iCMcbnQd5pVbTKaFaftZ1ETvUMuVu/PUIpe711T6TPJAmJ1HoCgJL2RvV10VEpuWBZJtgCstwTA1vNwYN9bDJEddu1QC2reBXs0hOhPSzbTeSiwrPx0AbcgdoUpnCxmUQ1LdU8ti5AKqkVZ8JM/bc5GFM9dwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cby9qVGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cby9qVGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE76C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756158593;
	bh=coP0adPO9n152vP9f2GKjOmyucU+QlgOO1HkiNLr2qI=;
	h=To:Subject:From:Date:From;
	b=cby9qVGzmC/++YauiuF6qjmL/MPnV5Q6rvflXgpADhJbmeDrX+l0F+XdGxsIQ3uXC
	 THZ5bPmdxuaTJokwu9PotBi6lot0jMETdVbdHa/as6u+J43ah/MW4u6EMoxPWlokf+
	 RYJfevbpUoa7qyl/XRxcQ10pBi0HHFw1EtHy/AvRekPUPIuOUFPMja7ecCJtf8gjVz
	 rPU6rM4FMKcjwILQyumBltm+vAHDp4zQCS/OzMlBFKDEGil8uvyb2z7lJ4wiw2ESdw
	 vpotXi1r6CygWbl9D/4IskZf3ZN4dduA6THf38VXyiCAsMSoCgzqgItG7hnriHxnmL
	 gfldA9xNFWw6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFDCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615859358.20000.12381735478674941175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83aa8bbedd5856b906a465804ca97b55cfea9c34aced607f3a7af86e1659da7
Date: Mon, 25 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756158593
