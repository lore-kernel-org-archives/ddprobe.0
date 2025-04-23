Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131852F88
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745440194; cv=none; b=Jb+rv/FfuaNgz/wS73xuwEbfqQNjmOkZBswkGx+S+TsmWpH6W9PGeoU46WC2h7c9YZ6A4xCGxvCH3UVkZcc44UV+Pn12vY2PeEMqOGCCO+7re4EdBqJCfFU4Qv44fp1g6yy/8zLE7h+A788WsgJmUAEN93RiQkyRy5MnAsXYvx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745440194; c=relaxed/simple;
	bh=6LEnW1EkhrlFzWArB/hHRsjmm/rnImwzlNQUfdK6rBk=;
	h=To:Subject:From:Message-Id:Date; b=DXVgIG841KccZQqcu+kLTOHKBguWztseDipJFx6U7MeJMVkB/ca0G+zCS1A0WRLPy+nyXFITfgeedz6VkkdaKv2KTBy+6/K2O8r9FIm5dIFPDpHt5XOSYsBBRUK5R3Q4sJhekJwuJoewAjFNvsR+Q/DyQldT14cKoecNBrqUdHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiKol/S5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiKol/S5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745440193;
	bh=6LEnW1EkhrlFzWArB/hHRsjmm/rnImwzlNQUfdK6rBk=;
	h=To:Subject:From:Date:From;
	b=GiKol/S5+tir0cvnuwMUbEkZaC/O4NUkMR+d3EmRB0evlArcF8huEUMlJZEET6pId
	 DC5AA5Ya0yZkZEMTSFhXiILZKD6R0+K1t67U5dT58kqmhPQB7lFgT0iHuP3Da6g15i
	 BIiZJU5O6atTwziDIWLaO1pl3vj9/yLWipsMkDZ31VRPzkPD6goJrqn+8+TXrzZuT+
	 sZz/aZtUNAD47ymjmboOTuY5I7RUrqciJblapbSdHap+8MQYb4/oYTa4b22LQifr/G
	 ZUBozenW/o2XaXX+0uGjwynVz7e4Zh4j4JxNN413yViGUWNVMqALfe934P7ewaJ/KI
	 0M+/AaPSYBDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030BC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544019358.2261.11868386309920426443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2503b3f1f4896b5b58d73fde216b9c7e45625d211bb73f3f39c5dff8f9a324f9
Date: Wed, 23 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745440193
