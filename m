Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262EC29A2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765543974; cv=none; b=Vm7h+dsNNNT3iZPEh8X8eUGCdhADvip/lZ/AX4bW3BQ9XI72nMsyP8DRZQwze57DCfF1Effo/bpj9Rb/DVIXcUvVWabgH5pQV4LSZZgS6ICk2N8tFqdP80GduhN+cpfieEKD+nR09vVSwlizVMEgy+Iem1LvZHc5Pf74m94pXQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765543974; c=relaxed/simple;
	bh=Df2qbLyNBztxS6/SCy/6bthpje3CJi2nMYoX3b1FrqA=;
	h=To:Subject:From:Message-Id:Date; b=D+TM+DhZb3RdGMJ4Xh+r/iZ1eY5VRJWDXhn0lWUe/UHZ+ZyCWEilXtzHlkMGa5E2YQdnIToa1tBMbGWCwsOo3SrsC/yVq+f8vF5HEJNVMAFSxIaj/cTuom5hQmA+4qpXDHQZ/fhaYl9W66F02GrV8CASsmtjRpFHwbSBTCBmufM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulxGZY55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulxGZY55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765543973;
	bh=Df2qbLyNBztxS6/SCy/6bthpje3CJi2nMYoX3b1FrqA=;
	h=To:Subject:From:Date:From;
	b=ulxGZY55beO5tiFPouL/jluarhjJ8ZMRluNIhI2iUCzaD2UYIaYUc7AhmnA+J4gVt
	 ximqMSbz8WCaYznMIzQ3rYsqsOeKzNW+nwh4AvMIUT8uOqPkZs4T/2Sv3mw+Kuwpzt
	 4aIEYX+fbhOmMn5Snwa0v/O8Nj2cTjOmT2iKqqsgsgc5ryYRzC57v13j87Tw7vp65H
	 +osjS/+lxyq9u1PtISD4fV6E/fUKzf1syZpDnpEvXlQSlGKQXCjCo2UenvvMb7VplQ
	 4uPrnRmxBVoAmkMPclpDt3z2tV1IEksJIlXr9r9zK/+Usj4GPnLaw7qAQb3BTbzspU
	 NKQkpnC3qncpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E3D4921F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554397358.1760.6426387538584870450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5234660f6d819b6e8e6896e7b77b8ed80c271ebc082002647cfb1c15c3245ba4
Date: Fri, 12 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765543973
