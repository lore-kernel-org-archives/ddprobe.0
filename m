Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7F81FB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749185396; cv=none; b=ZWwXUi0IBCgTSfeYyI15YqZC6f4+Cu8jEbTP4DR8faZ7xXliRxb6ZtSj13HovDm2yE0npbiiDkG3oK3e/tjQ+sFIvF5k8JYo4nRUkqpCQo4yDpW+hJM8tUoEXKPxQFixo5LjfJPx3ebHNJb/nwD+j3hNX3Ojm2G73lrtVffB0HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749185396; c=relaxed/simple;
	bh=F51/Tx0HvbaQHw0JtIPTMXus6zx0QIarLAh1feoihCo=;
	h=To:Subject:From:Message-Id:Date; b=QH2kpq5WdDfo2DMP8ju27T+ke6oKxeL/O8YUYhEuv/1OsbBXEvQcaDo/aLM96uzpHQ/KmURhwv9lFYZX34dv1pe4XkNWAc/ssg0ao36FXAJBINbljuFnI8KeChtgoWSo0le/efOZGTNrtxXFl5u/7v1QEqkM04JdeATmLnRar/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=are/dw26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="are/dw26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4738C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749185393;
	bh=F51/Tx0HvbaQHw0JtIPTMXus6zx0QIarLAh1feoihCo=;
	h=To:Subject:From:Date:From;
	b=are/dw26cQUtEBjpiD5VjDyfSbfNrOswtkh078iguP4nIpq4D/fVOqxcdOghI8keg
	 h6Mg+7O8KXZMGJ9aeNuFfcBX+R9A14gBoXttX5XWmi/uIExPauAaPqsn1SYQ2cpAza
	 ezpbt9Zen5x+bG8GXtLLKkVoO/caEU3Em7ak8MQ66EhEkvcL0DmJ9GPZ/pQLS7wZXX
	 cOzQ6WZl4oDsveW8G6dPsTqeTkV+dxu8FmAuKclPueb9KuRoVKE6HztccdM6IptSOa
	 Nbc1FrzmFo8DsMBmo/y22wTLjtd3fSij0Gzhsrgw2UVgyD1EAGHUtN6dmzmXMqyWg5
	 5hJZFas1AgHYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1BC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918539358.26848.3912063836713627851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cd0becd891a52ee5e402679154d7b2b9d17c7a5e2773e82a8df1a9b24f47ab
Date: Fri, 06 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749185393
