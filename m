Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39777823DD
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779496954; cv=none; b=BfAK6fP8NXzT23pmU/32juVgnTmlAh3qhNusr4Ctn9gYr8mN1yl9DZn6djNILnMsWQj35GZc8Iv5zroS4d0ZL7F5IUeMaHq6OUJsXiGX6e0fKOLMHUBLK/lM5gff+xhIacfo6gpGSg+qQVJRjjzArwldE4VNXhSrS7m2ZvKTxnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779496954; c=relaxed/simple;
	bh=SNcnFaHQGqSjqhJIYPafcoYu3reYnBLFefl0m6FuM7s=;
	h=To:Subject:From:Message-Id:Date; b=EIKoHnL53OR4dICiYkMfE0t4cGqDwmqbc++7o1WExGVR8g8UmqUgiBvkAEt6uDjDMkqGLTCpbDTsjZ4nTojSBFbXhUv4vIDgGPdG78hoR0UdueGfV0zO9nMgyTFxryHeYTAGQMjIJrydl/X7RRK/1Y9pZ+5oomr9tCS6eHd/WiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqvmF9Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqvmF9Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3633C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779496953;
	bh=SNcnFaHQGqSjqhJIYPafcoYu3reYnBLFefl0m6FuM7s=;
	h=To:Subject:From:Date:From;
	b=IqvmF9HxTln8rcbyrATRaMPdLB4//CCOG8QoS+iCRDkv1gsyKbpQtYq7QBAd9Ra4+
	 EyRF/sTs+szmqMYvbqRh27y+n+aMXUbfpdgX7MzCFKEDT043tILmBxpkj9NxGdpcWN
	 gWxYNQP9Qi5Kw/qrwPF9+6pCGSC8fftSY6WYfHKYfCHs6TC1pyE5aNuDtr+oMHfWhI
	 MYe2E8/sCpeWzaZ2gdaRTMr6rfcGYokT8LtT4ARiOX1eawRXCO0Z1fYj0w36QGWVOJ
	 DaTP4GQgYcl3T/amuvodleXz4BZ3Mm8yvotWOtaZzhLQ9ExD0OoVxrpACNQGq9nXR/
	 A2PQGoONLU1Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA8FCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949695369.19704.7944397974417984111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e3c3bc6d3969c39fe9c2a34e9cac6f18276b645ae093f757dff5e1536f6d24
Date: Sat, 23 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779496953
