Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD97A34A793
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769446433; cv=none; b=nKV3IGXXwc2rIy4ZkGwAKa/NA91tE/46h+ATGtc+x6A3vdbpAPDTzO+1ax4pDnvnGFiSMXmSljDo53HvqZWMTgadcsAcoeJ5o+1JAEiN49ang6eui3edVbRXe7tdkZ2vih8c8ja3jHFY4aO8ZzFUCP36U1nckhsUj1V8oe0uD0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769446433; c=relaxed/simple;
	bh=3OXGTn1KFikhwc8l7TFlOyRiDN5EebsxtDBSTC8QNZY=;
	h=To:Subject:From:Message-Id:Date; b=P78ZXrYDkB1u1RL4mNB2AI0pR7SObd+VrsxZbRwcZA9hvzYi9prBfvGVJpYATfhA+T6NjlOwIgRr29F/Hk4BpcTWHlRiHkIydeCyShDKAhRsDvBY0KXPem28ONqAXHsu6NpYHE18rQ4f6jcUUTUHcri/dVivRHMveUGZgv5b2k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFy8sFwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFy8sFwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769446433;
	bh=3OXGTn1KFikhwc8l7TFlOyRiDN5EebsxtDBSTC8QNZY=;
	h=To:Subject:From:Date:From;
	b=pFy8sFwNVIPlQ/g5764bMmbZMt98ryoE0/f6MeFoOwIxnAts+U1PDexifCGxTZWoO
	 cPlFWtEV0eI3wR3LjGn94QOBcJAmsZEsq6K6CQpr6LZ2ifK6UCKT0oxOSg/CliutKU
	 c3XztqJU2tLTFvA2Lkr29HiByJj9sM7oL2agv4mGyEGr3l/YAMZ+dRchKJw8sfXux6
	 eImHLXc/eL+du5Issh0QZ1i1xeMKK0a93C8lfSZMgUZKSQ5knAefkt/WFNyJHdHSm3
	 u08V6Ln3QnEelzao93YqCi4Sl9CA38zyi+KEO3gpRxKbiP2K8WVAhkK1zndDrEn82R
	 k9Qv5etr47HTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA10D19503
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944643358.18767.18060638650609578108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04042c25655c69f9b130fc58f072c5492e9e62f76c6017fa5ef105c0f5bfa981
Date: Mon, 26 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769446433
