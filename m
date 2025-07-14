Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4369823A9AC
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752524994; cv=none; b=hNCLExAX7yhQNbsgHPkZ0C+ME6ACQ3bHTbbgj1AQq1xsdSkCmj4zg7ChP59xVCW+p5+s2VF5G+HgVnPE56/Ezk2Mk+6XM9dTt91dUIW6CV4po2NWN4vvaEcjKaeGsoj4BTQE3jMVZhu9sWhVEDp6MW60YCdf9MRTI0LPU1irn08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752524994; c=relaxed/simple;
	bh=1HfL2EgWCzBdMBh6olyOiwFGDtU75lt/eJ7xe3lpyks=;
	h=To:Subject:From:Message-Id:Date; b=s33Lact4UIYeFq4t+0xuTr47bue816rSVo2UgbvyA1tYTK+ZEDWPHukl6LJA0WH3D5OHeMM/y1LVJ9CNCytF734lZcqi8n9NGuJTgbP2EH7v67KUrgsEsep9yKMXrqdbuVLJ1mE8iwOB+GajrUOKMQE28TL+TdxQTRymNCBrMv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry5u5ZX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry5u5ZX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BCC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752524993;
	bh=1HfL2EgWCzBdMBh6olyOiwFGDtU75lt/eJ7xe3lpyks=;
	h=To:Subject:From:Date:From;
	b=Ry5u5ZX2OpM4n2MdPo1TKjOL8j6zZkrPhpY7HlX8ROT4oeQq+cH87yDoCMMkKfWYh
	 xZd4Dk3VtvqtDWjHKKISuRP2RsNcMjD2ys+3MEhmiT9nEN64jlWv0vZGX6CruI9Csc
	 M+uy4UJCDfRLR5HG/QaWPtTPftt7OgadUvvz3e4zsVK7QSxYbFxH/zlhm/dmnCURwM
	 Tr+8Gqp6UqJX5M9CybD99myDDtcOI9MqyjQcNjqMbSkF6EkEjGCydgvEcLRBwWO/ZX
	 QxD5WsH7B3XQetnuDtSWYCwfgsaeg9Q/u52ma/q06U3yzpu9ry4E/BLl4rVngMtaT2
	 V62qn8J4iacaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91093C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252499358.9114.10009683883027992020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e3334eaaed9393591c78c54f62164f919c2a8635d631a8c32d924965b951f9
Date: Mon, 14 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752524993
