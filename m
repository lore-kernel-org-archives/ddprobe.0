Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FED22BAE5
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724608554; cv=none; b=vDWUbzXYIsZinCcXi7ecrESQ33P6yOekW+j9bb9wgYq+NPlnDlj11ZGPIwaOHABqJBtRtxAx2PQX2wwpBWVTuwyYlyYw2mwdG4m3JmwGSFY3reVcgEksqWxdySjG+S9BB5Ir6JxVjmxuotAoqhq8Z+MoMbh7oZiW9oyle8Z6LxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724608554; c=relaxed/simple;
	bh=lBZi3NocESxJ5w4c36BRKOLN+hUocq6YRgnuICUItbo=;
	h=To:Subject:From:Message-Id:Date; b=W0usDzZ796/9CXTSseekEOiFXSReVf3+/AtOWnKvh3yGK56oamUIZQU1Yx5fW8ijLoz+vSos51tF0WefHHq4c8yQD2E3hxmDjtrUvy64hiSnwt4xc6vgEN0TzTKVQ4/7Y/E42ErGVSVnw4Gz1rqEw9pWugeQcbvL7wIO47Gz9tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePvT7Qc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePvT7Qc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB627C4AF10
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724608553;
	bh=lBZi3NocESxJ5w4c36BRKOLN+hUocq6YRgnuICUItbo=;
	h=To:Subject:From:Date:From;
	b=ePvT7Qc7MLx5i+6FS8zNoemkpmFGj9ZC1Gw2piOVme3HKcLhsxadJITGNMM2T1S/n
	 +/Jy09r3jvbE2dIXiNDVk21lhRM9k6WJxPuaggHftyJVpb7ELpXPA4QUziyR/D11YA
	 vII8f34DQR++iZxdGzbjFtk867ysuyzM+MHvLA2Sj+YCaZQLlM/zxhmWM1h1Vx5bnM
	 rtwgGD5iQHTBJ6PoAKSgTW0865iDWb5SGx6P5kvRfg6VF1TFbzdKYo5DieK6yyQPsp
	 7p3U5pbUoXZzi6vAhxvqgEXodj+5ed1QNiusKVRNY7X9dd7Erc7KKWNYQLV04NYPyh
	 S433Ro1JbYH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98786C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460855359.11000.10048184008797306681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ad2db42ab935fcd4890f789eb12f0fde313b4a03ce4024f0eb4b890d8e2fb4
Date: Sun, 25 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724608553
