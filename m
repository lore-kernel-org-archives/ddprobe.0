Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE441BC23
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720107923; cv=none; b=Rot1P7pr8f41F09Rau8PY3aM05cazxdt2v4dtmC9NVO6qeLllZf/37a9rTw+5GVKZsmSSaMSGFac19a8adWIuNj5a8Bx0/HjJlFEtnwlEWfo5db3F4N34f1dN/g/Dl5O0XZJw0fEVe0nYMxigtYd7oYL0kxDaL69aX3b7y4WVaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720107923; c=relaxed/simple;
	bh=pYYSfLcWr37SWjuqXoAssQq30WSpeZarGc0fp5dStmM=;
	h=To:Subject:From:Message-Id:Date; b=n5+7+oZ98+LZascpa4yKsEjB/3UZyC14QYHm2mtvU4PPpz0EC1xvCU4fYzqR74EwhAjeExEUNx6/kAAXlvNwm442lLW0nzrG41xPBat4m0BO5LS7q9ShIMjmo3DcP9OV12KgrCGCbSx/nksRTtw1cOUsuGTxQQgA3J2B/+pb46c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh+yw5bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh+yw5bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11EAC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720107922;
	bh=pYYSfLcWr37SWjuqXoAssQq30WSpeZarGc0fp5dStmM=;
	h=To:Subject:From:Date:From;
	b=Nh+yw5bqDbTa3D+zPeflaF8ALfWa+h2jWops+qCOL8Dhb2rGYPgzChRo23lV3+OPd
	 YWg6Aj3PowoF1x/3OW0AzoSWr9L6etiGuanMQVGa8xC33rqpuc1rpkuOKgXd13+Axj
	 +jnOMxhZZVoeT33ctKTvy83Z3oEsc7jYq8qniUAzpTYY/9sua8VPN0xcuRR0VRGAPx
	 F68xB9Z90cL/cKsG9H6fb9b1wllhkL6iBMFZ0QASsmk613zk0rxAfmbQMrg2+Pj5/f
	 Tw1pnP13COFPF/Kt2IXIuIXxAxyKy99X0MLoh4pPZ6ag+gMo4ObcfvsI6mjbQBoHvD
	 zi4JzNxmtqZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0250C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010792276.13132.6811654429332986224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27406d35334f071879e979dab6cf8bbc23b7ec5fbe35e4aa5e7cf9968ad886c
Date: Thu, 04 Jul 2024 15:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720107922
