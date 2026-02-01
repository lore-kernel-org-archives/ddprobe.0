Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209A92C3768
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769919234; cv=none; b=RzYGIzHHZw1d8GTmk7exBOS8zQGpCUno3QtiqW2yFzfSKSeUVDsYgZi0vsFvrWHfLMapDUm8bu9+/XWdP8HWuQqEJnHWtW6SYeoLHIOyp5Wdy9hxRIoXrPV/s0HroefsX2Dsy4YPBBRkPtbeEzugKzTYlgUarK20H6QDKMI2Lrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769919234; c=relaxed/simple;
	bh=tbT2Hda7XPqV46J5eK21H4LwBFQ0JvQSaltefLqGWbQ=;
	h=To:Subject:From:Message-Id:Date; b=ZJlKmwW/vTmuH8gT7JDIuDYdpsZosgmnjodEnMTrNhrFmIXm6XE0FIy+FphcbRtoM/v4BSdnNrcmAPQRLB75KWlGPbjKCPNOg56mUG4WRHuugADCwcZpAqdNxHnw9D7Zx4zZxSP/CFw+gm65/l3/BDYDy5iDZXRhc2jIZr6bvoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMgsejAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMgsejAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769919233;
	bh=tbT2Hda7XPqV46J5eK21H4LwBFQ0JvQSaltefLqGWbQ=;
	h=To:Subject:From:Date:From;
	b=IMgsejAJ+iHPs1cvPJT14DcU5+AUdirY4kUEOamo7THjWtQYug+wuG+4kRqjwtM9Y
	 CPftnF3tmKtBjB3lE48YttrZfV+IUrUBx5o88KfwNDovN4Tnn1XgOjboswsVEsAOKn
	 gh+STuPwhtZkpWGV0YrbN0snNbPBQJ0B2j+6qCRUM3RslzaAwdGZEujhGAxS9Y2gz6
	 x2c+ue9fyG0+l9USqBM44wZfKiVZcgOZ4Pkbi7lx96NZnEXXIPpQXXNeUPEYxXVmWP
	 tn76+iTo05XfDOhaVzQUlXa4RXqzv4l5xIx0dpUsWOJNDyAvYSJg6B4cGaGXfXXkbR
	 zRSC4cSnCQ9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5DAE7C705
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991923357.10254.9876939657211505901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd328ea3b11bf6e49a4dc2a60e811727c16a0a69d17a7edae9b026a192b1251
Date: Sun, 01 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769919233
