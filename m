Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2983E6DEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786960234; cv=none; b=Pf+wA3BeCYqZojGTGOmeFwOALY39qghDftFGW0XPP1IbHQV62ZNsef8yLKhz5vRjliQdyjXdwva3zWJ9YddXI3+igRmHUwAvCry0hx5auIKq/fln17M8mZsfu8Fk08UneVsPLTnthcMvJfE+KXORIVJ0AB9ta2gs2RPSotxF1tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786960234; c=relaxed/simple;
	bh=BcXPqyMf7xDfy6PpfZECmZnJkIRQuakBuMmcYup6yXM=;
	h=To:Subject:From:Message-Id:Date; b=O+YXovgQwA86Juh6sfQSMJddgPCVbK29YYh5R5NPyq+i4FFQjHIWZ0w6isMyzGCYUku0UCbvfWk2zW2LCogZmVFrh4MkkPRFNNd+WlstGW5xVegiiKSnHQLUmYs5XOwNomW3Ti7nZ1lTZHRF8MdbleORbCDTNI1+TD4gtuArpds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAWIZTqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAWIZTqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79BBC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786960233;
	bh=BcXPqyMf7xDfy6PpfZECmZnJkIRQuakBuMmcYup6yXM=;
	h=To:Subject:From:Date:From;
	b=PAWIZTqI2ADHRgjNAoMhw0VKrSCNPUNDJAbxnTSOXmb4gUYzM9PdarXqYhoOmxqmm
	 LguU9yHg0O1mLzzq8xWqA5I7KHSNvGmeLIAvSKSmfh1tGY7pmB+I2v8w+7IhEk+Q/J
	 FEL+OINC7QTjv7u7GZRgL5NHg3ZM6hIOPrdzOQs5CDt54KouCiA8n4Cer62ReLGDgU
	 retr1ADEGVZl9ZK4puB4g87g4mtJTEmyvx6S/UeSkrmq11C30WHB1KIEm3L0Ddd9Us
	 HL3P6Gqdxqodj9LTtQZpgWNCQnWJb8jmU/cI7kp4jII7sruVbEZ/8ThHG0oXS0vmmJ
	 YPUeAXHuo6/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC649C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696023369.21053.16687604036163304655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621829184da8d4d2c433d8ff7ecee2e0449bf1bc52a2f29cfac1137157ed1697
Date: Mon, 17 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786960233
