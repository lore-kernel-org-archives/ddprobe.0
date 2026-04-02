Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1F13CF030
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775130335; cv=none; b=HRspa0aPHsb58B5tLxAtyn7ZOLjxf0eLyI8pVcw3/PGzOd41lQO9G5K5lR+Ccgn6IyADPMvLHOIg3eDCHq32oGcV3bNsqnpR9SWj8qVvQp4xHEyU3IAUy9DBHHGXIaOX0Dend0aeKDxC27BMdXgpvdBIQ7swQgqHGE6F5G08MqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775130335; c=relaxed/simple;
	bh=pvaFriqWds+SZKTY6hJLmnm+4Uqzl5VRYpmr9tv6hug=;
	h=To:Subject:From:Message-Id:Date; b=gyEtrumHkbkHIlSOYjb5IdPKbTUHbkjkS0HKcKUwKxwLWJqvH9tLVR/NY8+zAPBmoG0/nKBhlrUk2T4iG9q+661Yyxztwg0YTcA6C06Yp9st6NC6a5dk+7kv2aeB8JK5MlPnIcp8UI7p64GEGG9ErGKVNEJU2pSDTkd+oHLSfY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSvCWqBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSvCWqBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37C7C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775130333;
	bh=pvaFriqWds+SZKTY6hJLmnm+4Uqzl5VRYpmr9tv6hug=;
	h=To:Subject:From:Date:From;
	b=MSvCWqBw/RBEF8Yd8d8z6Dmmh3jNfsBGt5M6MHQE3NSlSFPwMlhMelIuha4DKjlYT
	 Ss9P3WzRy1dJ7bX88k4GD8TFVUSioZk8N8dhbrczFvXlqOhFdy0D98LqtcEwkLwnGH
	 6XnBGYyc60ZmwMMqRtCfvpVYUXwaGNvBELE1+TSN7k02aLz12oBJf/AfGavE0f6bhK
	 rtSR2F+PlcYDmKFr2qxghtiz6M/oQ9408HgCqyHuQwhPd0ENWB4ZuaSbFLr6AwOwjI
	 wOKMmZR9OCSnYsR9RwqkvY+PJEoxA55m5jVkQuLRIOttVTELjbwm5eLqcZwecYCN6i
	 yd7LWeq2jr8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27DED39419
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513033371.10498.16724854977006894948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b942665458b7894a16389f9fb2ec55f6588d034d94554200f2fd567fc3003c23
Date: Thu, 02 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775130333
