Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8042523B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721016743; cv=none; b=KzsxgCpzetlD7QZWMVLM9W7CsWis382VDXiCaXA8TJlXpr5lICroCKBNGRbLAak6po1dVBIGFJjRMhqbq3VAIgBWbm+NrJ+eY543Q1vBQY/EVFxkim51WSAQButXWBzb6kng/uTZo+uDh4FG0qUQDJvC8MRRL5oxQtwY0eGEE5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721016743; c=relaxed/simple;
	bh=4Smaur+st6gN34Iripq9JvHGMUKxzd+9V3um/LBI3Lo=;
	h=To:Subject:From:Message-Id:Date; b=RFxGiH57OX4pBVRBzgcrwAxjEyZtdl2XeOpt6r0CEozjzGAC5EQTCjO/8tZd6urz0pMw8itaR1744QpBk2r58rL6Jt9VTpy0QGUGeYs6Tf7swyZEzCeF+Vc/SqgiqCR50qgpmWOTtMWih7hqOI9G7XYk2bWLAc1K8BTlj+Ya02I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpATAZ+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpATAZ+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DADFC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721016743;
	bh=4Smaur+st6gN34Iripq9JvHGMUKxzd+9V3um/LBI3Lo=;
	h=To:Subject:From:Date:From;
	b=fpATAZ+cCchdv+1FP384xkyEINrMBSh/nB01jXFwDh1PeKkB4/efPtd4yJIjBCRMk
	 NsNk5bmaLnXRWcF9NiKkkVCwyDWWtw93IuJbDBg3aWiLS/OZ337f0R0cJ2+Tkeyfbz
	 vGH1u19kr6A2SD7VzeExhdO9objoxOB0mQnpOAhYLIVpnrrYOGTjFIJzHdLvJ9ZtxO
	 RhZzJQqHmAIFPgdHZRl7RpNGTC2GXeCXS2vdfYwhZF3hRKdJNOiW5H5kX6HRNBUedv
	 xBlNxFphq5piX/cW6ym537KUX3MpcBlw1Tj5bUsut1HqJHOyXoDXG9YjjCXly2FFs8
	 JAVRGFcO3VlvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEFA5C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101674287.1765.12679526471285721403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946206aedc020919553c7617954db70ebd06b8458bfe1406396fec69e97269e2
Date: Mon, 15 Jul 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721016742
