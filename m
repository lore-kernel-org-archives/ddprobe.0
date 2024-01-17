Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A17D26D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705478297; cv=none; b=CCaFOH19U6vsGeBc1kZRa53OXCozenEuh89eeuDr47KVULCGGez/wfeIgTTFNT4M4N45XXc+I8Xsfc/LbFm/uR1Ade/QHhKGM/k1mRuJBTd6i7nFsDq27U3N5fWkuQ4WZAFRDuCyKM9CYgQ3LHDIMnViJkJ4FwIyxnPyIhHLi3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705478297; c=relaxed/simple;
	bh=1/FRf+B9FHFE5xdKOE1fjXYAhmbKFvtaXOOLL6Gdn/0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=qhMBzZS1mL9LziX8NDruHjGRZeHVj2pcl0cj9kk2qVn5rnQwj1wWIkYidG9uXuD2btC7d+4XnLRqL9fwaELekmpmMCsdRSJ3cJrUdA1umaY1AoicKBB4X6fyRNED1hgtOXESIM1lzk5/UtNjxNB+nM88Owu5ZvReECnnMRFM3f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCvcJKPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCvcJKPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FEFC43390
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705478296;
	bh=1/FRf+B9FHFE5xdKOE1fjXYAhmbKFvtaXOOLL6Gdn/0=;
	h=To:Subject:From:Date:From;
	b=CCvcJKPZ0Df398XR+nMEYN7LuUSwYYfPIpxZOiGWA932MVpxHtyPCemjtC5zxdfQw
	 NFrlDUzYk2bUDxpY2KJiKf9NxaN47NxON07+xr6pjxEIdNqRxDOW7fqaCCxbW1yx6J
	 oQsLlga5z6x1ft0h3lk+zbX5lyF7G4rSYVBOsZjzmcIredG5/kFId2DaZZRbZbvVJE
	 hmIKLIEbPMztNb0AgMsI7lwaVQ24fhlxZoo9Egt9I2cwHGaZ0afb+/LRgUpCgrzaSS
	 Gyh47QbsFf8N8Ua6vJCAG+7/0lJXLTxc50sppTllkTDbwtZD4wFJYgAQiaCqvkvUnx
	 6DQ4oIuqW023w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C152C47DA7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547829637.12946.681647266605856651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5209be47e7d498846ac594cd62bff543853cd4ac563dfff9c2c051fdbab4822
Date: Wed, 17 Jan 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705478296
