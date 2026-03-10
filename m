Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F0E12FF69
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773107094; cv=none; b=lOBR0zIHlcymh7BzYK6IZ3drMN/zCY3DMD56JOXDWdMvtwoV7CMc1SN9JugIDYLxQLtd4Iv1W0OxFr8VH+8dr+0YV8KJfIZdREwhJkwh1DTMONPgq8h4OP57oVfItKcFrrGBGaz4zZDJ3vcvQeYYKtbP1Z5n/mX6jgeKffYmUNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773107094; c=relaxed/simple;
	bh=R1QcmxbATmrzMEm+2G23zvMTtBUIBOSA+R4r+lqDSzc=;
	h=To:Subject:From:Message-Id:Date; b=o3AV9kNgOlC0stTt27arp88+sdjrPXYOwP0WDdaz8Xm9msu9FvL2uBEtp3LcTpwC+o7HBLYuLf61S0Apg53e0qHmztlryAUMFTnta34I6NvxiX1dscd3fL4hUq2YI1yWIuYK4QcVn6/RQ2yr/a2aQOlDHq/oMF0BhMyTvCNVlD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Edx/KTqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Edx/KTqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75B0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773107093;
	bh=R1QcmxbATmrzMEm+2G23zvMTtBUIBOSA+R4r+lqDSzc=;
	h=To:Subject:From:Date:From;
	b=Edx/KTqSGNXhQe7ea4cw9FvUrIXnum7tKJ5+9vCRJ5gyr8cBPWeBCK53UoL354Hb+
	 GyoRuqHQCibRdB5PvJXL0b0EPB+oNKAcgt/FSLCBHQYTe8JT6IzWIJyWlTC8UlmfG/
	 VWQDG4J7VFOJgQLwEMhV+vQRoJTaS1FJG2dnlu4OG08rwPTNo6q+PP/LF4JTyu6pf/
	 SwojFkeKnJ3rZm/JK8nwzAOZQCwILErkVx3C6TVz7jdPSWIR9Y0BFVpV9yX3zuveK6
	 cUG1mHKicS1aW0NfPiyKL2yCRPQrv3nw6ZMxEJFtqicQ1hyTmSH06EKHyBhmFsiSHP
	 Rh1Bw5S83D/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5DFCC9A4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310709357.30600.6359755756779853895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b26b2d8f5d542c9b8583567bd1390cd2459a93ea4d87284ea4e677396f3372
Date: Tue, 10 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773107093
