Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE9AF510
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751845794; cv=none; b=TF11NxVisYb6c5n4rDpM9NWrtIiesr3JgH2Iw75b4bAbIojPjVjbItMJBMRD4odR01mxQOXlAdH3uDJCEbuGqrS5V/4gZZzTcmJj4zmzkEL+QUaF1zuTtjiZLqb3OUM6O0ZaOIBVTCMhJ3rqUSCFFaN4so3ej3jNllD0p0uBhAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751845794; c=relaxed/simple;
	bh=8p9Ppk/4Lk5IEXDKIbnhYf7CfIbNo3sIhN2fx8FBQMg=;
	h=To:Subject:From:Message-Id:Date; b=fIX79+WYFbuzSgjI74OBtf0ubclA/cOVKNf+TicMSNCNFqFZOP2u9Isq4pxFKuZrG1ZL0NkaiASuEX4StQw0Ynz8bjTm9PWVrLqz87nFyBC07P0tg68Mx/SZimMmU1cpolfhw8y240DH5VDcFb45d7MeFHyZuWlzzT22Mow7upQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOX8C45c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOX8C45c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FCC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751845793;
	bh=8p9Ppk/4Lk5IEXDKIbnhYf7CfIbNo3sIhN2fx8FBQMg=;
	h=To:Subject:From:Date:From;
	b=HOX8C45c0UJquwN229OVs/+lkaRUHWEB77GGImEDhrgwsoueDfo1WD6wuvIe3Wvfb
	 t2l97/g0WnKi9AVeoyTfdfu9RUj6u2iTqyeP+c6A6T8tflG5bh+xUZRjFttHOO/Z0w
	 s2qaaWg94EpWY6NJiPCfnSlFQ3hjrZXuyA+31KXuDFvIIGgsHXTkeHhr/aQt0QJOPn
	 9WnO5MhO9UaZ6EVmI63teIK2I/Q2/VrWeB3ksEI+cV1ExG0WmEW5GId5KWkZxNDVa+
	 ppTiGxKqHrrW10qJT4xfcZIveKKFaAW6dhFloStYTzO0PjiOkUwZmuGl89UdM57aYa
	 9sxPisdwhcKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075AC83F07
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184579357.13642.7674327065103821321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9d24a4a67efa30cacb37e1f0c3882ac0a37a9d2a35ded8bd8d13f666c7cce0
Date: Sun, 06 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751845793
