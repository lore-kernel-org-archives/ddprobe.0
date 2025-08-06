Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C05A246764
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754498994; cv=none; b=LtgZ4pSzNhUil+0pJgSbuzdCtQIiayhUV/zWRxVCH89rfwqVYNfH9MJ6kKW5DSRWcl7UBBlTvC4ikXCCbVmck4v/eFXMmTi5LVkN+8h8B1sGdprZ0Bdw+S80PNTWi/uX1CiOWAv0Xmfrv3bFFJ9in0jgHJwPkk0UkoMUYEdJoo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754498994; c=relaxed/simple;
	bh=ICL9NtHMurDZTltW5ti4gEOguVVbMM68/5YDIURi+Uc=;
	h=To:Subject:From:Message-Id:Date; b=GLXOUuctQQ2OrW9BjdgCmw9rVzzyYXS2jmKF0HL9cJEinY/Syw25M2tQwpKHAvzVpHJZ2FfLvuUiXqPfAvgNxv2tL0A4qvzPvXJvBeXmHPHXyRuvzh7Lvg+ja8STJP8+CB4G2Jre+SlNWCTOr93od2+XrUbiTT0tI7LDYq9f6qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTF3RecZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTF3RecZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C280C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754498993;
	bh=ICL9NtHMurDZTltW5ti4gEOguVVbMM68/5YDIURi+Uc=;
	h=To:Subject:From:Date:From;
	b=OTF3RecZtFgXF+7uBoyy5E85D7WihYLF5wf52g11tC9YslsPL1t+DAEfuDzFzMb+b
	 BIA3EwGgB2gsY1YOWxA4HJzplAEGebQav/spXCXt98LeW5l9Om5uDSvVkDzfPU3Vp/
	 Sj/SJDtITxm1PKsBGttlaQEpZUyndy95HOCiyPipGp6EaLjNe2dib2cEu31x/yL1T/
	 n9YdRmWr13clriDxeoQawK4LmsSboCW4VbptdqhcClUIfGF1BxlfVdpQffF/BFG21O
	 BXuz0vpH7qlsztYK6QyO0T0IffJcCRlJEb+4dQORnegDtNmlt6yTLCc9BZZDIilR26
	 3YSZP6FfbecUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F6C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449899357.29881.260465001947515359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247bc2ebffa3c769b7b0f414988773ebade56992aa2b6bcad4dcb77a12c5a4b5
Date: Wed, 06 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754498993
