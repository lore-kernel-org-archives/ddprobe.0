Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD98126C17
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775783854; cv=none; b=msjTht9etPzenFUuOZwItroDxjB+woNq4T4ZeYxScXNlkwJZp3M1bwl08N8V8PEI3/RaJJ9blRrrCxaVV2neogr9/w5zDMQZVwDfBX4XcJvn5lJ2m+emXtSjnEfzvQZS/im25nn0Ydvx+YyrCfddr809sd11ARCvlehV/YUl5lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775783854; c=relaxed/simple;
	bh=ysQqPa34W6PIgyf2TbpzpKcIJr84Q9dMluAgERHlr/I=;
	h=To:Subject:From:Message-Id:Date; b=Fvvkd+3CpoObkK6h9F1rgegJer+W1ipe1tdRbmfujmi/8yWuzc7V+pKyg+loKwqsc6Lkr7ATxBlSuSCKZ8Nitk0wCXJ7m0H3Cn8PrvNV4Ffyi3SnHlLCfKtr+TsYHM5EltlLPZqvsKNeq40+yz07AIuzn7Q2ubULms/L+4sMivo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXJCknI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXJCknI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FC2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775783853;
	bh=ysQqPa34W6PIgyf2TbpzpKcIJr84Q9dMluAgERHlr/I=;
	h=To:Subject:From:Date:From;
	b=CXJCknI3QQ5F93OTYxnUSqe/kW1wgthIXiXYY3l32GCuEQLNWIkW8T11nL1X4IdF0
	 td28iVJDFgmwMCuaTDh6m87BkmGI5qedt2U7DxTMwSru/3E1QL2RZDS3PxEzrDgYx6
	 zDyAM1G0F2mMpjNTYOp/V72x3fYApN6QszLyT01rBN0NWWstUVl77XqKr0lFqosKJC
	 nR6MlNs4YHLmQe64HSEA0FJZpff2aL4XRohkHLRI+bN5I7DlCEmnRgB6rDV0cLWgk9
	 qPip+/OYzh4GbDC11gb0MMUlhZtsFZXgwGIJOxFut33jyzmTFYWAWxTla4f/xBwto6
	 eRWx0gv3ksu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86DDF36B9A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578385368.13489.10291922383554158334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8488628a7c648931d160bd374fefd4dfe7f55ae2d68f5bfe5b1a723a2a6b27
Date: Fri, 10 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775783853
