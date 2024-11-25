Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCB41B0F06
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732545954; cv=none; b=O6kzMkHJgg1NtFOoQwSbqKct91EebKom1wLo+Jr2BM9kS0dYVz2JV2jR7iamVTuGuCS8mz7nin3hHY+J/9f8L9hhgEVvGr9tnhxTMXTLZhKJnu5o2OyDzf3oW5zJWQxiHyDHYRkWMCegdQ6rvOOOntQseTadCsb/b0NSz6E57Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732545954; c=relaxed/simple;
	bh=YWHdEvPJDx/GF5ZmTTy+b485ye5izue6tWeYL9B8V+k=;
	h=To:Subject:From:Message-Id:Date; b=I5QL05AGUSQMO8Bal/ujryiXr94izQnYWmtHGZdFTuQWGGgAXTi5sxcmwvIfLeEypmd6yMsTNXT92KjvsahHiVW00k+/BO+CTma/QgvAtKPN8W/VVczekAGyOAh0pjN5PmiDbjTvoiaXcCalZgCTCmscLkCauyINN//KmyvkWVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0joIm03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0joIm03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC67CC4CECF
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732545953;
	bh=YWHdEvPJDx/GF5ZmTTy+b485ye5izue6tWeYL9B8V+k=;
	h=To:Subject:From:Date:From;
	b=f0joIm0301jT0X/t/u9r8v6lQdOqHy/law59QdsKtWg1d2QY2RPSoQIjYeZISpHeG
	 88EAhTf8nIhZAi0HOae9xwp2x4nrhSt4D9MLqJI6yirLOiUlS46n7ZEQDc+f0DSRf4
	 P/HtCy2qtMUeeZRRgQ1oiRTQT1FPlOvLexeiqE0ti/NAwO8YBT56NS3XxiNI+TQkoy
	 TKOxW3hyyfivz4QAJW+3ai7WHbkIoYGsrpHT4nzUD/qZISqDdMmG84JET8hCHpOm9C
	 lKvyeBU+C/NiMKzvhmk6DcEVa5SLunag4U1he7XBUayMlRm8CFj1R0CEANXowCZHPH
	 x/y7N7lqJhKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980A3D58D54
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173254595361.19480.14984746401716658454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f80597a65baf8a50622fc11ba916df64f335561ef9033269b65d0388a73f72
Date: Mon, 25 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732545953
