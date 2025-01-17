Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210161D540
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737125154; cv=none; b=hKjr7OZkQ5V19TUm4p2sS/TzzidE+CA6Ju9dRkyBr+JkRpfqEA/eQ8UWWd7nDd1Akn38IDYn0eBJlDhIAFD52LsE91ppFrrr98vAbqapyVKE7NbEhRGxMJUCgUL6hzFmeflWRW4P8c13uxFnUmHUAIiCgpXjOsQhAHdl+hiBalU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737125154; c=relaxed/simple;
	bh=7KC7OJmlodlCSnlV+LGbdRziHJL/IX6PCOESlRUC2/8=;
	h=To:Subject:From:Message-Id:Date; b=oA3pEGNr18aj3lhK2GNuRxuWBO40D1D/kluOEs8MiQSoa61j8t1CsufU7ltO3d9D6bzFyd/ULYjr4WbMm0ZakA+kAAxLdSOFNqTjOo+ljROBc/9tpphuC7yqRie+6PtnfW7VkGtB1uVoPm9aul6Gu4/pgUPgk7MWOv9DvG2WSL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px4c+ed2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px4c+ed2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA70BC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737125153;
	bh=7KC7OJmlodlCSnlV+LGbdRziHJL/IX6PCOESlRUC2/8=;
	h=To:Subject:From:Date:From;
	b=px4c+ed2H24zr8pNdIzaBat8aTYXeTuUyifT5sMqrB3EJOdg4xTrXRfntZmBscWBa
	 Hu/zgH71GASsi7yokBESDIGp3VTg7RoCZFvY5+xNV6iXF+W5ZVLddoSpdnDibWTa+e
	 vorHRpLG4K80WU8GKesArvOmgKv+zidkJAeBK8m+B0R1zeUnUJqk2Ol56I64cy77+1
	 tTwsKLcSlJr444EX3nyLuZ/IdozgnZZCAghOdL4WvaHvc7aKcnDBR4OZoSjXXNO1EA
	 B9zqCebwxYSWpuxK1rQaGQeBMZCdfbMFx47EU3wmiUR5cr8Fje9BwwALPyvm+SQQaJ
	 X+9KkFxbF+uCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99038C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712515361.14296.5677995506617781499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554ccb60b5126c0f1dc874425c6ce9c346d268201c8656f8c28ce6380a37d5bf
Date: Fri, 17 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737125153
