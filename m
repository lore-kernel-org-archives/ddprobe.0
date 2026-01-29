Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE2313534
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769649234; cv=none; b=G/FPUoPGI9UW1elr5noX/JNYk+E+hzNLCR/8Tx4dPvjI9ybPfmRTt1eAVWqvXa8K/ZTtJpL70rDJQTm9qep2NxWCoPpNzWE7Gec6buCHNUBvneC3dky/CuAoLEquQl3qgV6OBd7Q+NiWk2wx7NcndCfzbJtgNDrZKftmBa/Cpx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769649234; c=relaxed/simple;
	bh=hAj+gBmYh/r8bN1p/NsqShS60+B7qNamu6XdboLGCps=;
	h=To:Subject:From:Message-Id:Date; b=P5zT/uEIJeeeGk8VG+OghLkDcHqeLMtieGnyu+7X5jyfeadlYx2Zb63V4gyZrffluh67/eYvPGsXztwXU1lc3VXGaQBOt+NFx5R8uygcRa5LVw4PZn7omkKIdJ8pRnTUGgKiZeUUe8PidcFmOAofC9PUnY897MOC9LCkbuTk9+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3EqXINn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3EqXINn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A92C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769649233;
	bh=hAj+gBmYh/r8bN1p/NsqShS60+B7qNamu6XdboLGCps=;
	h=To:Subject:From:Date:From;
	b=K3EqXINnrveVGqzOM9EB6ce8d80pv658+a8kgz9cqw/wKocVQEBrf9W480VjiwEhm
	 C0lSKnTRhIChDK6J3SQYrPkamiMMIY6J1HatasHNZhIAOY5bm9QfOGl81yvx5fwUHq
	 6xgrXBIFRlxinNmvtKbdgBvOKn/aW8+zqhS823AMUwOPpiIGyrrGQcDR0FxwqQoF88
	 35EZXDiU5uHpn0mLc4nKKHme/bsSZtXg8DKfMAH20Sjb/ebcWL1/kJXD0V8seYIEC9
	 zt9Wq3l6xHBwzSGLBBstXgWHahpHY7BTDWeq+lINCqy15Vm6IcWfRyghMaNbZ3RTnK
	 Rt7JRGVBQfLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B2D46BED
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964923357.24287.10058487835110850500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb4bc7162890aad3741d3689eb2f628da2ed8445cd9ecb3b6927432b24bd121
Date: Thu, 29 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769649233
