Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F9B2BE05E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776682054; cv=none; b=md0Cp27KvJMRkaLYQH8X4Gw1Kr84r9LrecqRcNjvCUvdq4kpE+krct1ThyYk0UuE4i2+Lb1Bveq14Sap1KisON/Om4eon2hTo2os3FF4OfNlhQEJ2xcUiu5TWR/XPMt8MTM7E5DdFCR2k7f1xQ7Jjp7/y6RCTKQOPenZUAWsUdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776682054; c=relaxed/simple;
	bh=WfdmyGKxV44YnaDwZ8dlhNfbqjNMKzRepcNrhjJT8pM=;
	h=To:Subject:From:Message-Id:Date; b=V/9mgPIWkdgN8YAcSjf92b3gkjGcZ1GYpAnha+GDWRIZrHswd0JvEC3a9G4/MthbdqXrhXsv0AZitQ8nzdzJD4eP/Lt+b1jlqft/vlG7r1DNIlI2HC2U2VItpiYWhXYgwu9DCBnw7nexYQXI3U6XMJcFu/SFzhC6xeOzPveIzJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZZq4b81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZZq4b81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A1FC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776682053;
	bh=WfdmyGKxV44YnaDwZ8dlhNfbqjNMKzRepcNrhjJT8pM=;
	h=To:Subject:From:Date:From;
	b=cZZq4b81XW2bPymuQzyNJnik4BZrIRCLSsxG+V4+KxtTUh6eHy3lUD96803igq+fO
	 swHHoH0gHD1X3lFOzaVmnGQCec7nTI6jUwYNrX6S+Aa+vRUNa0JQ3vrMIi9FPyz0oe
	 YwIj8pRE/GTGXeVQs3MbVaA6GWwj2AECwuvi093aDJ1QCdCVLdolOUa0qSfgjmjA03
	 CzgQOQliR3WbVTId4pc+rjzXVbUw27Wk6OEz6gjfttucPluJVtJYzPWX0DCVBIDZKp
	 ENtvQgeAutnhaMTykoua2CxFKC3hFAgLCZ2n3rA78KcduJ6AzGQSi391jyzjzDN2zm
	 tMyU/IDOJp29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A7F55808
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668205369.31145.12059475193779485184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275761212e36006f010d7407e579a8c4acc0a8f1f49de797b9111ee7ede137e4
Date: Mon, 20 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776682053
