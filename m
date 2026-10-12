Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455EC368974
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791788434; cv=none; b=JfvURcG2TS2dB7M61BImi+veoVGpta768XNHfa2JB0Bf41dho/dGbBSxgotXDSIoGI1WQOgjLJlnJL1MS+CmL8VkbwT1J8coN7iEmG8qw2NwK1eTMr/PjklGquBOmiWC6nIPc8aG+PRJdEyWtwbonaKNvWYProiRPW3OjR9ofZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791788434; c=relaxed/simple;
	bh=Mitnn52+s/7UIY62/IwWtiiBz1MQayjvkS5QrWbaRbU=;
	h=To:Subject:From:Message-Id:Date; b=BQajhN+TL5c4K4JFgpJ33JUIn7BqDOGVvWpmHDCA0cRPj1rwAHLc4aAg4yp6Iw/q0MgET3D1pSqSIlNbR0VFGyKx83p0ENr6m7NPyjApupPc8rYZUJKmiHKjM3LMVnlFsNO7crlGcxDyuOHe3Iiqmw9ouC6bDCRrsHzMeUITA/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLIeV9zN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLIeV9zN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF50DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791788433;
	bh=Mitnn52+s/7UIY62/IwWtiiBz1MQayjvkS5QrWbaRbU=;
	h=To:Subject:From:Date:From;
	b=BLIeV9zNmXEaGFYQJETssVx5scirSlNTCF500HF8G0XhJIYle6Zq/H3fngzuLX1j1
	 DduSThqiqT0zLkLGWGU4955/yzsaPz6BKkYnvIRzvSKHjMT4XCErqV6OqCqKXupyef
	 owFeC8nURPcvLROCeSJ7mozqaMOvPGyLFOyL0M3dpSEE7onNZaI7ebUWLpYlOF3uUt
	 PTbLEtpfyNbGTMafVQjtsRRBNdX6BWUdcggfqVf++/+6TQmt6Z3DJqP+nPh42rX5OF
	 2Jw1Tu/v3RFlPvJpGkiloSUDQJaYOiZxqPva0lkJ0y9jya8HAduroCAPs6TZZ5jC06
	 foxwh+V1jHiXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78ACCA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178843373.20386.11684103495003931484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c25a077fcf8b5ae8ec8c7df1c75acf9ab9dc2d213ee1ff761261bd607088668
Date: Mon, 12 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791788433
