Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397DF156F28
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748757595; cv=none; b=ECGgB9ZALiudNO8NPuSdkjKQ0WYz5ossebC0yjjpmKdLdcEa0xMGl9bUiiSxg5BXJ6fc/2pJ9mGze4IeHEZ1Lc3ERryf/i/uk6WsXySG933khgwqKQncXQTJFB+/KeWhG1KP+qRFKYRoMIkhIfn0L5DvS1cq0vZx2BFapQ3rM+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748757595; c=relaxed/simple;
	bh=c8REYz/nqV/Cka3whOVsHZ7PJvZ1DHL3dmfmB8GmJcY=;
	h=To:Subject:From:Message-Id:Date; b=CzPXZwzAyz45pNjmVMdIbE5+0NLW3GqyHC10ekcLkz05obFeKlzv8TUKNRAY0Z9ncowhlxf1NUGLY6rbp+qtKu0prqgFGjKL0X00FXKMLzof9jEtWlYixkKmUVVKUI+LKZ1wkzj0FjU7Pc0Ndo3gtgFp/kbQWJisWGp2KB1xQ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upd+HkQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upd+HkQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65EEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748757593;
	bh=c8REYz/nqV/Cka3whOVsHZ7PJvZ1DHL3dmfmB8GmJcY=;
	h=To:Subject:From:Date:From;
	b=upd+HkQ0vbZ7maSQTAQ6qLudIDXRJNT653BwDJY+7RCMUz8N7jiUqfyEIjq3Bn09s
	 9/J/fJyOpD/kceSyGzKInlfiZKz+szSs7uF5zO3juw21W81UDq2ELuQ0RiUAYRAQ6Y
	 qMq7e2zvh2sq8noOfnygSC5LVTBD91JfScfYMjz3pQIG7vjg8h8x9O1L/5p+CWuaqJ
	 UdYvnJyYSuzl8xE/mMvOx+IDkzaWf+Ai9dGpuYcV8IlWJvsYw2z5gOWSjc1SJRAroZ
	 Omne4dSTyw47VYK6zff4Pk4eKBA3lIKISBsD2lMEJeMo5lVFVgXn5nNosWDMXDjfqG
	 qXFBWsrlAkomg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94021C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875759357.26174.13422207171203749765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46f3aa1f3f433f4672263944816108f40d2e4d68f071c0d16a6bab211c57d64
Date: Sun, 01 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748757593
