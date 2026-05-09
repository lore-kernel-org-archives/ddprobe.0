Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B1C2F8E88
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778300254; cv=none; b=Yf/Aj/l2o6KUh4Amy3PkIFV0P4T9WVNxqt2jdw3V8ykwQNTgB4n7fjlAfKLkzrdUFatoT2lSg6gH9ds+1ZpSUE7Mh7lQN96RX5nOVdaUrKEEcIWR1r0J58yPQUbC/pylLYIzEyG0PrThuTXxArBVSJFu5uPOvZcsdEbT1j8n4Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778300254; c=relaxed/simple;
	bh=W4swIF9GCLPpepTZsmbjqPNI0sPXiQyi5qS3qqNoQko=;
	h=To:Subject:From:Message-Id:Date; b=Lvwt0S8jD1BF8TN0Br1DAdTChbJi1y79TdSc2E25weCop8swsZbqSqC/KwTMh8IcwVfkSoPqptBbMPWaZ7lkAkNfnzN+LFdEE2JMU7FabnqzZb146Xa9PuhTQz4Lytl5ebYC5ItAVCcMECtvynK/MJNuDimkG4IRo3sIiM5O3Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUakCN6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUakCN6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C274FC2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778300253;
	bh=W4swIF9GCLPpepTZsmbjqPNI0sPXiQyi5qS3qqNoQko=;
	h=To:Subject:From:Date:From;
	b=PUakCN6lAGWEwF2reSsDcLQ9xz+SfOnDFNx+cB8o0NULiq/CoJz1sa/q4HxItCD6Q
	 +dGaeAmLouO1kJ8P//9ytVAij4/wMZUJbeerRY9k6ob20++FpkxDv42ZKSXtN/G9rV
	 ORDqIAKndFuHGjk633a1g472ahMgBcXCg4BCVD1gKCxwGSAic5b5tvbLOVffRHNvtc
	 goz6pwvRZQ2UywfjhDvNf8O8K5TJb3jyeIJPuzdgydMevV/Q+V7rbpS6xgxRUrEh+m
	 eBSAzVXzw51OBSMSR9fezuPhgCLJO/9sa9R1k78OuI3gb2HfxBXJE4aX0/u/Nj5Yp7
	 8mO5oLXyK6ZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B174DCD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830025370.16928.16768699589677242544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60de7304da010407450e0cc33339dfb1271c0c1b05d0157fc7fe96b2fd9654f
Date: Sat, 09 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778300253
