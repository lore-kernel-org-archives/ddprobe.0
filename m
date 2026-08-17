Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6260137E5C5
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787005234; cv=none; b=jUi36vXeNqalbP6pRs4DMEAXMu5O+v9T6iYxMAH7sYOVaFWebGrnF17VuVw+0/zaLUdYGcqw/8uEReVY8r0N2c3jSs5eG/VnjfkWBwvWuwzOzaiT2qnrzTy16cWMOXru90xr0qVxks8gapFWTsvUk7tmk3wTbo6pd/+bQWiiYlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787005234; c=relaxed/simple;
	bh=jLtlgPX4Le4B65LSwOvLAsAkX3Pg6JNGlpn/S9P35IA=;
	h=To:Subject:From:Message-Id:Date; b=bqQyC2TwT+ES9rq+KAYE03TNeeATVEgdI7DoKTQtL/xGBJBlqx2WuTpxlZ3Us2/89LnwHHkKNnwJrwLVVH+b9wYItH7I0oNf4C2P3YBo0z/CgG1+5SX5MZPjs+RC/v7SKfdUDTdAfSVOOnzA7VjqNmgoEpv+ttIYlT0vg2BoRf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwIFM4V5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwIFM4V5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0441C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787005233;
	bh=jLtlgPX4Le4B65LSwOvLAsAkX3Pg6JNGlpn/S9P35IA=;
	h=To:Subject:From:Date:From;
	b=uwIFM4V5ZdURmF/8Axyv24ucLRTek6qyzp5Eb9nTIKviPHflH1LJt/HXep5c+bVIC
	 bpZP652f6cM+1duEYFWNXQe+g9XMQHa6Br4HmOaEKVH+HucmklHbsUw3AL7tlXBsGM
	 +Svm4rRVKz8p7FIg7EtXc3VVPzdF4UMU7jgLxlr1VXv0jAiiTFmUCTMDrQnJ2MVWcj
	 ohf0AgGXKQwWKjkn5tWWFFX96A3hidBtuZLGIBlDluYeocH+WS+EcsKzSxypij+oYN
	 JksX5p2QPAdsYzu5H+NAhnEDZxoNIacCYcq5iPWwQ5c9USnYVvVstnB8IVsGWVkp+u
	 9YwjSaiK2qZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89CBC5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700523374.13319.5134291637112117602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551e9148439bfa98f06d4f03641e1b6cc0732c14dda9ac0669b94b717e4e6410
Date: Mon, 17 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787005233
