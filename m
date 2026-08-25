Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B771F5834
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787653834; cv=none; b=QR0lRXOwaXz/DSHAKzZ1vq1apFpz4TRUdpwTAbSbE/pxqnmN6vy3NUPUk3OOYrRkejRaktxocfQkSOGhggIRjLfGu0nd7NiL7kDENfvKresozcYYPDWR+qkQPeTZn0112daNxaJeIawfO3qUQZ9td6gNp6Yz9zQNhcdfM1kCDIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787653834; c=relaxed/simple;
	bh=/QnR5WGGVKJC+pRlvdAw9J52vAUDhMyz28kuS2g9U2c=;
	h=To:Subject:From:Message-Id:Date; b=E2OmDpL5IwB2KPI2uMCzg6R1lSgi6qRo7lk7P5xCiYB5u2rnKjBcjl3+uUxOVqplDkYZ2aoNShBhBxNrxh2MXpqKPFbwCrTAuJjdkkVE0Px8op6ty4uz1+zu63ZW2AiIV7oPTjerl3odMp5dXXeRSnrggGAsbO1pL+w+OBpga1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdb4P07b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdb4P07b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF013C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787653833;
	bh=/QnR5WGGVKJC+pRlvdAw9J52vAUDhMyz28kuS2g9U2c=;
	h=To:Subject:From:Date:From;
	b=gdb4P07be2Rw7ASbouPsU3AN9dRQIX5SGrm1+EgXmqlxFq27MlshWgIzpA0PRrUV5
	 26JwcRQQk2FJKD5g9T/2zPcEBOYLJvdH10esyUrWhBnt7LprW0VuhpbB91p07V/14F
	 9dvL2K8C84bTPr7SwN4CTPuJcnobHjtKXAklcEbQnO1jq5FlxDybGeU99vuNhqrtaG
	 VckP6g/AiiHqLYXcgeO4JDJ21bMpv4O5Woz2t1b2CQYvTyK+TnHKfRHO07SpRaSWk1
	 /h5GdkmgfDBhdULA3SN+GRo3cLN3IYhYVP3PB7YMqRizjzKG60jsgAuID2Wp26a6yH
	 taGiyJEWC6YPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB154C61CE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765383369.24903.10881279052631559257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b554dd47a356f1a964cf26e2e6d41835db932cb310aad7bb384a448d54dc6a
Date: Tue, 25 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787653833
