Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDAF23D7DC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773475494; cv=none; b=qcoF4z1dsIRciqD6qqHNTWSdLG5exdH+bZmvVSCoi0d224GPvH5IkFgys+3JVWNytJcnh76yimtBR5AIOqQAMN5MrYDLyJg2VU0qDY/s6r7VGgtjf2E4304c7ONdM6IIf3jaVxMbbpcEtxFpeuxpJXUGZGMU0+cLazlrkuJX1O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773475494; c=relaxed/simple;
	bh=gcFBRxcWrWDs7Z75KvpawCtdyjOACalcVDF5bcHwYRo=;
	h=To:Subject:From:Message-Id:Date; b=Po7+0zypAUGcHvxyHqyO0/frg67BUyX2MD2OrYBMwc5Lc/ytG11BGUmH3aeFjW6eUDNjRTq6+h0v3SUmgqENVRpfAP5XwU1hEXxwghTY4lZIXLJbx+JDKQ9kTWEw4TAfswjjUfhlp0uMMxcqWLzc3p3CJ3VYy5fDXuwpJ1Y03q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwDsWZHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwDsWZHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF4C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773475493;
	bh=gcFBRxcWrWDs7Z75KvpawCtdyjOACalcVDF5bcHwYRo=;
	h=To:Subject:From:Date:From;
	b=JwDsWZHvJBITPv4ixJucC3g+aFBsFC1WeLoDoGmJVBGM7+nAFZgGbNN6S6VmA3U6y
	 yLWsVbjMr8xdSd1Uti+MzqI8bTO7M8YgW9yK5QsoLBAejYXxd1j92kpCwhTtIdVWyN
	 6dlVrDbOjjVYjzzEmN61iMLUftTPze8Lgft3Lkgqi8A5Rf35bFlTizWkzNEvjqTn7X
	 gUw5lOBeF0fWGWcz5z2bBnfQCZOeC1Uia683hzJChPv1SuC2bBjlstMIPpSjCH4zSi
	 liUWBabtouLD6V0caJEcI4Q2cOw25OdJ6J7dbMtNtXHRLU8Jn6ITPfhjaJvhJNqDc1
	 YUmBC0W5e+DeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E6E105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347549358.2737.11063696575459962503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d68e601c5e495197dac05c4ab560a980be0e0f64dff9f0bd19fba7123bd189
Date: Sat, 14 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773475493
