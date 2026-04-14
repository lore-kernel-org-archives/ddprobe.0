Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EAE2609EE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776144454; cv=none; b=kkq5DyCuxGg0vEczrOI8dp+P0UjD6cv9r0SnFn66g6lN6jschT5ajusS4Ueq88pK+KgI5iHPk6aX7P6VlU/6nJdjbDwGkCVh1iLN4cVYzIAxM6rRM3Sw8yk23VgeVdDbwIsKUs0Z+5o1TvvRDpDMDtPZq3lmYBJTZtPbN31O+Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776144454; c=relaxed/simple;
	bh=HCYpqTyoPfcxtYV2/BwXXLgtpXHC5KTphQd7PjySYFg=;
	h=To:Subject:From:Message-Id:Date; b=J0jm2mru9uxcjH4tywM4hFI5v0/ZbhuA+sySV4yuiwtUy0Y637asttS8Fo+BS4qeOzz+xWb7MmEBJk7jhiZ3DtL/kZFvgiFJWwHjBTM45a/e4vVK5lRdeh7a4VUdU0vV9U3vl665gvuXFMUerAE0pKrF6O0PFXMabBzDeCN9NpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBaFWi6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBaFWi6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1790C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776144453;
	bh=HCYpqTyoPfcxtYV2/BwXXLgtpXHC5KTphQd7PjySYFg=;
	h=To:Subject:From:Date:From;
	b=MBaFWi6+eXjzjWMTWQXOMz2shJvHFOd381ygsfYEjFlfp6iGMpC0f8TNe+W7nkd6g
	 FW+bqiXPZkD0u61/yvbxVn55Fr+eqBFeQCUJ1J0BHoyWo1m3PQAS/IC8BTj5OcO8/0
	 SPzkySn3rzfhe7vQMelTuZOm0W72uAYZO6ExEunPWhKLrZHECHkIuFQrUmgMgYQI2J
	 GIBaJr2lnyTaX4yKnrxGF29kge3Lf1JXJPZ2d1xGQ3D9dEwnQR594DpO41tQ6G1nC8
	 erbtfXcPMJdyByAWC9Sp/hiOCc8L+h9boOz13NeL8pS/hqjMGDtCIRu0OVgwnc+YO5
	 r6NnG7R3nZXsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DBDF45A1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614445368.4649.14518798260139764350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8749e97fd054eea48671e881a5cf4c4c34b323a2cb6ab51918a988d27f95be0c
Date: Tue, 14 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776144453
