Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5BA270EC3
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791654034; cv=none; b=gQVl0IDbiZvNm4fH9f9HmcdeVCi2Nwzt6IfTGWa2ByznWD3Kue+ab+5sOyN+ZhoUNlcT5K2pCyHkYe5NObpJzmo90p91dfxbID4WGUHkzdiSEPwJXaY4s3ZtWkIWvizOJVxqEuhVABbmuElZEEG3YYc95te7V/cSUn6sSgjIpdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791654034; c=relaxed/simple;
	bh=8VXYJ6MxwInsn3vsxJ1+OjVY3J3yG02nUntu0WuZK0I=;
	h=To:Subject:From:Message-Id:Date; b=BsnAPbCco+9s+8acPG8gqeas+UWgT9towniOit+xX69f9rFvLrpYxMTVHwZZGXL3fMQEqwlMF7e5Lnze89psHIHeeqkMvKTDDO48vfzhA0OyiM3DKyQjceSUI1JHcccubH1p15OP7+ejOkMdEhz3RX0u9lcOeOM/RQNqUc4kSgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqb6VSmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqb6VSmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A3DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791654033;
	bh=8VXYJ6MxwInsn3vsxJ1+OjVY3J3yG02nUntu0WuZK0I=;
	h=To:Subject:From:Date:From;
	b=rqb6VSmYDhBvWUI17jgxFzDERJBvA4zfoLwdmdGfuEOFNcVo0pplPn/2uoK9S+O77
	 qbovEGnWhGQTUlTFpkltYQUrhfgFKgHYD1ADfK8/oJ7KbPt89GrIY9HJOCkf221oVX
	 gbodill+dGXGLVhbKeB9qwK/5DzZ2A/czqGcmTuM2B6eUL2WtN8NP3nDLYVfXiEtgr
	 Ll10CLysx9Jb5SK4btoBJABZ+hugGHfidsKNz8apN0axuz5I2KXK0Kna9OnVaFPO7+
	 b7ugAOqbQ+1w+oiy4o11QHYXfMS/N4gHGl+k0Y/nA8kZIhyhIk2j1fl6JDAlbbtaOM
	 jsVZCHDrIf7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A10CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165403371.2747.16591057113233397485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326398c3a9bc83a505f6546cbbcdf126ead25d2e04e38e0d9c762a7f289533c0
Date: Sat, 10 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791654033
