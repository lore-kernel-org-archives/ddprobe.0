Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3401B3C2D
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780149814; cv=none; b=CLLD91PlSPTCs4p3MsYYRayHAjSMhYPT78YZe6LJi6zNHFX8WawinlybCVjpK1EcS2sa4y+UD3zMyWCm9TJJDaAblKmUNmF8XyHMPvcWUDdvAuoVqyD0Vdob6FCFCoiXGl2GlPX5WI4StTxve614nauz7TxcaGVIDfeirlVxgz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780149814; c=relaxed/simple;
	bh=c2oesV0bOvD0EAOziYRYt91WhF69HYT8rTQFBzd84dI=;
	h=To:Subject:From:Message-Id:Date; b=INv3a8xQ+d2hX/WzmOVhBoqX66QYdG5n5O7JQiXPf57LjnW5JohJ0dvHWL6PjcQ/nRZSWQDlzwRaiGnmqz/3Dki85RGitlUEltCYXj9OjcLoQ6RylZiFcWPC7pXZ1DWpMNDczif/URLbDIu3AP1YGmx1GL4WpJ+7R98GwaRJrDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivpN31P1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivpN31P1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE657C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780149813;
	bh=c2oesV0bOvD0EAOziYRYt91WhF69HYT8rTQFBzd84dI=;
	h=To:Subject:From:Date:From;
	b=ivpN31P1WsOP7BLB3L6HrEfFROH2OYWtVINEyUwigI9sLTWa5nJrpj6mbQqdcCqEW
	 /ciM1PzByWnXOlhdF3FfXRvAWRyJgv1X9swOS3v4q0fuwPaapaYaC5VgzuEEwrMIoC
	 PDBB8Glke0ccBRWc6JH8M5aHpmrQYTQNTF53gAxSYQNC/Ae/o8G/QgOZOGx478JWdQ
	 1jQmN4dpElfkudmsj4x+MyKbLkJ9/dOUB55B3fCeECfHLWXToY4zg/ZWxft5xgoFX6
	 1W4R/VNhiVMziZjTYYY3K7PU87BOkCrXN+Z9WRnFZR5qly4NJOlV4Db96klmtPc1lz
	 Z5d3fo351HwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB71FCD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014981375.23139.8346563825272791488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92cfa362ad715dd4282c08f81097ad6bfd1323cd4d283f43e0ccb9473da95c3e
Date: Sat, 30 May 2026 14:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780149813
