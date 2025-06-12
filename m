Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CED6298CA5
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749743394; cv=none; b=dfPPxtoMjSnFngPmtRemftXvu8uVDBf2mzd8xA3aONV4pXvNATYnBXdlJuD/H2ZFoHKs3X4FB1kxf8TKiwF7dks+jBVki2vRP9IV49B9CgAOkPLcgmKFQvBMDD61eHZZqQLdaUwn7VJwm7PX2SXDJG9/Y8/xD9O0CibXOWuFnQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749743394; c=relaxed/simple;
	bh=GEMSN0WvPevu7aye4nudhCllZeqTpF29l0HmV4HvP28=;
	h=To:Subject:From:Message-Id:Date; b=emA9eOghW0ZT514ehZDnqtVJg8dTlAH41AwwL+DCeVFCYD5Os+XGeN3r8XyLcoNZxBK032hdTOiBZ270KxG+ruRKx8NCQ1vyZhCUrhMo7tIuRVxNdRG3AGrwC3MW3C+1KPOnKKqKFi3bu+U9vDwMUiPS/Hxrv7stTzk40tKx0/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTfkl63C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTfkl63C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F42C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749743393;
	bh=GEMSN0WvPevu7aye4nudhCllZeqTpF29l0HmV4HvP28=;
	h=To:Subject:From:Date:From;
	b=QTfkl63Ctm+rDCpg7S7f3ZHP2aaKJtWrjh7inuMCcALLyVAgcP9Rl1uCb6bkYUK/m
	 /Kmsrajbtx5BQubQVbZ3uM2L0riAv+ETVPi2O31f9MJW6qWkVyFVEYxbxEy9c2Y8JC
	 pXUsUybY+ptYJ6bn2I5OKt1Mo8BG6L+efbSP6/tb0mBHCzPcV0VVdQdO4dTAvEWJfQ
	 kfYbE76mTey0JSSZHoXlCridN+AJqMx86ODV+G+4VY1qiUmPm/8R7b86sw5WFllk8G
	 Ew3OS25QlIlE+m5S0eAwObSjZTJpYh9YxHG6M5s+t6MXls1a6KdvXMuMnOdgad+OtY
	 gIzbbRvaTXCSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E700C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974339363.8748.8563185607285198779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddb3bb8dc6d8bf7249f3b5dd46715a03c54c1e326ad9acf95800bff0326fee2
Date: Thu, 12 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749743393
