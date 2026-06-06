Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3020245BE3
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780790074; cv=none; b=HKD2TGZW0BHqB5T4RthZABshjn0m2beCT5Eg4W5L1khDO7WxakBcmhGxgi0r2LUZ14JXVtsh3lWx1PUeXc5M4Ni+A8kPri6uhs8nCCpv3kHwU7iySpygV1V146wcPvFFhu8gHU6kjhRSFVcAnNqCx6uk/QRk8u+9fs/GP3PA3mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780790074; c=relaxed/simple;
	bh=prH098raQZDdrZjAaqTlrHYJT8OTSjBugNpYHVt9Opo=;
	h=To:Subject:From:Message-Id:Date; b=CIqMky1evhHAD9XK8edHtsWxX+fPd5ArxvzSPhKivTCyg+8pWGs2kTfonnUmyMWujh4qOuIvdhleUPFDv3JAmccyj76oDaruC1g4WVYayaL70J1NMzxnIGVfWM5YPaN7s9kY13qY7jcl31ur3yCiHOcisMMEK+PDY2AWqKTwtGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBRbDm6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBRbDm6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97F1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780790073;
	bh=prH098raQZDdrZjAaqTlrHYJT8OTSjBugNpYHVt9Opo=;
	h=To:Subject:From:Date:From;
	b=HBRbDm6YKZMpCsm4iub2a0dy+cyqYxgc8PVJN88Ed0X5CvPwUG2Ug3fTWWTbDxtd0
	 D5hBrJUNEbV7lkRngZQU1NKrIjjrUcbp7I/4XrKbnztUXTNQOvIDKiWLZ0ZDaOl+6U
	 PCmOE6kFuFL99I6+oReDZh2F4fdFltzoRn2MQMQIJeHbRtvCGIRgL30aueu7/zqvHr
	 ub1vR/NlbrzXAv7bIT/fNC0Q/AC20VIaBzJpkeu4XLUE8AG+5lKRnj4pOioWkY5iOw
	 iRxProDE55tkR5x99LeNY8frpe81Kno9S0KRBY1mfHdufZW3wSzjPE6qw5gH+vFhvQ
	 Id71Bh644aL0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB5CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079007368.32544.14634314885924518634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca2204aa6237a4508f6b38e1ebe6742d552ec4a2cf5943edc281a45d408af9a
Date: Sat, 06 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780790073
