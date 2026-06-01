Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E21F36C0CD
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780327474; cv=none; b=rI/q4R+f5lYIdSoW7caqme1OiQ3weJGBb2nLrCdcoThH8+XtwT3hvl81uVllMWI7cP8Vj6UzxMJXx68gHVKauJOsRxDjamqEJAEHQAz5zgVFlrK73SycYjBfuMuzut6G9iRw9cozc8gr03z09nTaekGJjtf3o4A4Z5PdpPm3N2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780327474; c=relaxed/simple;
	bh=kuM8klwkYxqHdFaEbaVPJk67f2hvrwroe+zr+8Ab3VU=;
	h=To:Subject:From:Message-Id:Date; b=mXdBk2+vaCBD29/0Kk+8DuTrnXIo5kFlAt++dMMwomRdV29g9US6SGzevm9hBJHPmaXc/XxIYMmOxsK36pwHjk2ShdlPdWkuWG5waFHFcVkbi0TN7241hdx+WB+5VZGBdsl1HdHlP1D8Q/T7EgWJGXKiBbPV8DaANzhRjS5DKbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgXkmjh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgXkmjh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE2CC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780327473;
	bh=kuM8klwkYxqHdFaEbaVPJk67f2hvrwroe+zr+8Ab3VU=;
	h=To:Subject:From:Date:From;
	b=fgXkmjh+Pkx/z7MDQc/s20EbuJdTSkceRPFO0aF4YDlvCGrjEIUICXSuyUFUqOvfO
	 9I+9fUDj/6M3ruI9G04Sa4jTBqIrM6XbjU3tiXp3ATXnQOFoYq1mtqOMlAcj6ubkqF
	 5jXK514fKudcsKrpSacVl2KoAs/+kQoUu0J6JW53/0gNVyX+JRjO8mhvEnU+9q2PWu
	 x7In7TB7KRk1e8vg0b622FUBT3d8011Aq6YmDMq8CeOrxnC4Wny5Y8oD7YjlL3IBkz
	 pkjLFB/J2GdI9ppcN4gN4MQQy81kX0yu9FE6XIBwittXDvkGpwZPughXZ4oCG5Dx4o
	 Pqzxzl336RH8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35E8CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032747372.6680.1052566011040623327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58e08d06e9780cae60eb8ae4cacab8d8492956af6f0d31521017883d5150b8a
Date: Mon, 01 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780327473
