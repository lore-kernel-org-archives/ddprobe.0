Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0BB1D6DA9
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766183034; cv=none; b=NQ2q1ebvPR6dfjrehZlzINDfR87kDj19pL+q4crLvOpcIUVarvm5MusBilsBbKEmBQyixqC31gspvUU5olQxpbdkXHyDsbmqT0zED8TYXEZ638ypq+1z4Bo0nZhSsPnFSnbMRbphKOulFu0yOFh4qC77BENqA2d2RiG3XBgetu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766183034; c=relaxed/simple;
	bh=bJzOUhVAhQOrmkn/iH1BhaDJRKJ26uhwn2NWVS7qUtc=;
	h=To:Subject:From:Message-Id:Date; b=Un8a+0Zrq/DMyynpWEWB//za+HoostJh4rz8/hMMk9YXpjiBeQMWEBXQD/nL2KIh+6NSPSpcQSxVhUXWX2uW7v2SJ1NukW9Qqhm/8pSRByKbePPnxsbHkOR8on2QBm/A/yvhnQk8MDvTAcQn1HBY0CXGXQCrjxWa2gXzhsZrUNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rqf4PQpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rqf4PQpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE86C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766183033;
	bh=bJzOUhVAhQOrmkn/iH1BhaDJRKJ26uhwn2NWVS7qUtc=;
	h=To:Subject:From:Date:From;
	b=Rqf4PQpJX3TLcdlY1MqCOX5uKhYsxNQVeGtzlGaqZrz7ARMpUSGgTIlC+NK26Lqh5
	 wE7xYBeIahABUIDQC4M1fcOFxLvvCWcmynmAiqzWusflDyz41UT9/zpNGByi3J6TCG
	 ObX12Dz6u4xOQTfvTXeqIk4Qq0f8odruOo9KBpfw6P/UmiMNJWECOG2LXZuB5vAe4I
	 dLwjofqY+21MTFRrKE/5C7vO2walyvnk/Fc4iRgUktDtpr7qM09rpnlAYJrHopzAIZ
	 BwaAdddSV4pClVboUMvL6itCmG1CTL54bAWSHYEOQi3ZFV5N8tjBAGI8UwhDqgwAaj
	 FUDPz1OjPSl7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B77E66891
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618303358.12730.1227784101028721221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a9ccb0d7907df39d803d9e27b31cffc1a2fb6e21be34a7c9a4850719e0c8fc
Date: Fri, 19 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766183033
