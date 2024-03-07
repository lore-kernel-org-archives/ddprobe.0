Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B75D1EB39
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709824097; cv=none; b=KANPZYARv6nJoevqHgYaa9fpEvx5SNNMApSuc17KpNSDm0UV6r/riMdf9q6/qvseuePX/ojfwfrpiZraH8Y6Q4WmXNKrp0JVO2D7ChR6cMlxIqQSj7MN9BZjPotZCsptFBstS3yzkxnjQp4EdrpiV5NJVGFwNgd1MQJgf87H4Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709824097; c=relaxed/simple;
	bh=XMwixK73YBJxZv+9L895/eJJKDXv2rd9P8w50f5iPNc=;
	h=To:Subject:From:Message-Id:Date; b=uyNPMIxDChN+iHqvz82sm+aDhTw2M7wr3QFwLGw9zCOs9xIdWJtS6U64gLNjlErSY/4XsGvF1Ku/vModQzxS4KAfUf+R6AJScXYxJ8/+sPaxS1KZfQS/s1tD+n4A+tTLuKznQ4IqDDKZe1/xTqSvhl1xuZhNjnGc9rE34kSppso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBSawdDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBSawdDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93DF2C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709824096;
	bh=XMwixK73YBJxZv+9L895/eJJKDXv2rd9P8w50f5iPNc=;
	h=To:Subject:From:Date:From;
	b=OBSawdDqRTMRe1zbIvMxrqk67QUHXmpXMwVvGyMprkXfCARNIU5kVTjNI6t30QEj8
	 IvZonsluHo644ETuJRegaStgl5Y4porjInBx2xXNoj81FKjSQquYA7VUuXPLTmdAM8
	 fgA+0ruADTocgfNNiQys/pnV91BlUxp6fSQ4aJSZPseN6Dwbh+3bv3TxlP8LEKqrk0
	 d6ZPzIn1uPLDPW2mhYQ8Hix3OLcdpBfyBVo39GEY8ae2yvUjB10aGBOEFurWbu73gB
	 gtFI04zyXh/nZmAZudyHWFcEaYBi8XnI4bTFQVEzuiuJgT8vt7b/fB/c3vvFOKH/hs
	 UuS3Ta9SCEaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9A7C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170982409644.15666.11280919630073531778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bab95252734f5f9ff585077cc12de93b91db64bd033e149c2aa244a1ce1e212
Date: Thu, 07 Mar 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709824096
