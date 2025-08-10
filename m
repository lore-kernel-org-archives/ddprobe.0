Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF2323507C
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754831394; cv=none; b=DUnGcCQSMxkwjIM4oYGQJ9Pg0N25iHuqhGeDcTMt4p5QFQqSnBI9hnSAdvQFiDk805VIhm0Bm5iZs1KzshqB14OIx66RYXJSdk4e/1C738+picNBoEkMkb2TK7NXd4mXSMpnbweuQe7fhMdO69AEJomi1a/6A86IkOqovwzeWBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754831394; c=relaxed/simple;
	bh=2QLLbtsEYS3IbAPuXseAXf3PBMV+1cn2rG4+FqKSKss=;
	h=To:Subject:From:Message-Id:Date; b=mlGQThuHLqKz08FWKsqBDE2UVtMD3ldWT1A4K9nZCotMYMb4sLge77BpbblepI/uGyO4ilqJKSsOuhv25Omh93qNQlCWgiW3QZp/p28xPLvVrAoT4vFuW9ihNZF2T+baGk+fQ2QbFNpNAuOGxS8WXDPBzqfTFwHlqo4askyjTCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P44QyC5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P44QyC5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF85C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754831393;
	bh=2QLLbtsEYS3IbAPuXseAXf3PBMV+1cn2rG4+FqKSKss=;
	h=To:Subject:From:Date:From;
	b=P44QyC5k2m+QMiW7BAPQqRbuT7TQOScpZse3McOGoz7VJ3d+ljW2B4X+JXAz7o2q5
	 kxkRCz7PEpl8fQODpRiqYUOVLT7pOiiw2FDk9MOTkuLfy8DeJeMgYH8Xg2UliT1EEK
	 Ilc/WFVtnjoonA7iEqQapzcNBIXlm7FWeibn0KIpcSsjoZ15NPewFuGC9GPhb0uSlm
	 e8TfMLhvUfUUfiSCVuHpbT3ZxekOzFKOCtOfwSCsA6W/IffMkyrQCHmEAb3asnde8E
	 ah1SUatG+bFQ2+iicvPbVjWgv42ILwm5fmF2AUjrNOIQ9hH9S4Vr6R8saWNeXLvEom
	 oP9LYueYtqMKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483139357.10770.1475551328812935761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1485d02f4ff7f020c1734e7424fbc7277d509db093f72fbc5f1204c67e55ca
Date: Sun, 10 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754831393
