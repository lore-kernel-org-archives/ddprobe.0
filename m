Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C9418E06
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725767154; cv=none; b=HZC+bw4e6SCde01otIfy+/yjPEYkp6wJyozZCNk3pNSkPUUadum6Qeluw9a56oTMjoUCQlQPSOiYOwWmBqLsNwSyNoG7dT0NKzhffrvEwucCZGkRhWqU6urNvwQPEIhLFBwWCtnFntxW/57qbPCYPhqxp6L5BU6VvVbrpWJ0xkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725767154; c=relaxed/simple;
	bh=4/+4TbEuvyqMgU7TZ2s3mD5pwb6Jfk3v6ntbEavj2+Q=;
	h=To:Subject:From:Message-Id:Date; b=dz1SBs98rXnEKT8Ztq/UjLB9nz6FVucBW1af9lmUmcRRUJxx4IlD85WcYaEI0tywiMZnKDFXZKEWoUxYWJH+oPWkCkKdc0eaNKWXezrlqw90vo+5dqYYYTD+Bruv617HJXs9Sr/czNOtL1/bP/yDSBE30REzZ5CC73JB3LQ3M9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ae1He326; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ae1He326"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1046C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725767153;
	bh=4/+4TbEuvyqMgU7TZ2s3mD5pwb6Jfk3v6ntbEavj2+Q=;
	h=To:Subject:From:Date:From;
	b=ae1He326sbOhwF1mhiMpJLs8xLRCRF3pWJpQNxBuVn+fnwiVAnmJRUc4b9G89HYHX
	 YOfzH/6U00hnG19ma6X4HcXSkUeLXJQHzqjVR1EnJVwTSnM/H0r3U0w0dF1XdtEqb1
	 WO/efQkzvk59qWO1a0XvWBVOxnGkkJ34g6LO5EL8qjOkt3HXjhNk0FbcfMEuZ6sJik
	 ibs3KN03S12nRGnwaryB864qtEEiSIWIZsbylj5ytyj4dB0rZOdI0yVhDQock32T1X
	 lh5UD7JNzlVmm3Eda/C0Jjfyq28UVqIQQpeQ20inHTUV1gbGK1bRTCjWjVsexWe0Vk
	 ped0qAt9e3o0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA4DCD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172576715359.21616.13779672107309325591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658d9fc170300ebbf0a7bba9a0877003c6aa149dc11eef544ee95936119e5015
Date: Sun, 08 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725767153
