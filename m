Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504962DCBE3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748649594; cv=none; b=Ex9YuBtFRRDhA9/LcirBR7zoz1NFJpZY1AaKs8ZdGDYu3xlb8HbJ2ciJvZO8ExNOqn5EgqSZeobjYBIdEKrjxaR/p4ehw/tzfCbEoPKc/nJ/Kl6VMxk+M89GyIEcZXixWxeHrkfAiNNRMSrzALBdFHKiLDKpiLOtPgW+v2bT6AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748649594; c=relaxed/simple;
	bh=mm9rQ0wATkgyan34kOHQ4W2Wt8moLNI3dT4QQmUe22E=;
	h=To:Subject:From:Message-Id:Date; b=p7G3DCM9tybwqeKahLHAry1E+m+R1DCWGGM24LiHrjf3Zy5bXzzHp+1IB6YCXN2k4sH6U9glwzePyFvDGgF6BEQDEozWbmcxcp1N6suGwNIRUWDHOE2RmReC/lZ+Z8urFo0UJV8gbNcviDUiTddVJX6OQUeWBoxTAwVBrwV7FDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvMQPFZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvMQPFZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B07C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748649593;
	bh=mm9rQ0wATkgyan34kOHQ4W2Wt8moLNI3dT4QQmUe22E=;
	h=To:Subject:From:Date:From;
	b=MvMQPFZgqz9UriCxt+rbpUyeLKrsd/SapHgzoyVOZApcOL7bfX37ijwiIcqovZGGm
	 WXM1hr3k8y1W/2EzbX6hCADzJEOoXcbcgyX2ssO6RHTAn02NeQrF1TBOaMzzjEofv7
	 iT7Utr2VX0J3rYOZVLGWpPq2u5UYk9lVGE3VuViy5dVOOPwNjcVbrSDADjZN80bNqx
	 E+oUURfV4zhI1qg+0prZaclyO1FwZ0NnNRVf/lWRFNWhxWOSEXvOCnZtnLIBVyxS+F
	 xDo4c+OdM/R/GxEMwKa2tAkDcj7r8E1uBK6wHOzl2DWKNVA83RGDOTWPxEEdxD6IyO
	 DnyfbCGWoLo9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACD3C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864959362.1135.4574293359217304590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49237df3e9d0a37b3ba37ff78bc777ce4baab969a73dac49aaed2e8e5c90deb5
Date: Fri, 30 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748649593
