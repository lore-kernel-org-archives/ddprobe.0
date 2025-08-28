Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2314DB665
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756341594; cv=none; b=sAT8T4HB/h70U6hwkijdVEb4TIPJF9G8e7B36u/cuaZ2T68iIwAVLb/NCU4y+Kn4L3xPEaPzOHdACyNenxTp2klgVq9UECgGI2FyIvyLbFUP3cLnNUPNtXuind2xkehx+cvlKqP7Pvok81NqGZLt7UYpE58s3w60dEh1DxYSb4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756341594; c=relaxed/simple;
	bh=p8p2qB7VkbeEk1Eg19DTPrqC5AK13Bf2ghLTlO/BmQ8=;
	h=To:Subject:From:Message-Id:Date; b=VubSECdKRlJPD/tUUU9na3byqyN8Nn7UMoliEGRjcQSdGiE94EENcpYgAvmvSekSWXAyGJXzyOcJvFui0K8m41NSXulJPg7sG3AboTYrUm84cGfJlm82xNXPitE6omTiaU0xhHdw29/wVyOslTdv4Wa/tGG9PPtBcdVMPjes7ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxN+UlXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxN+UlXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E4DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756341593;
	bh=p8p2qB7VkbeEk1Eg19DTPrqC5AK13Bf2ghLTlO/BmQ8=;
	h=To:Subject:From:Date:From;
	b=UxN+UlXRk6hKNiteNrCTfVM65hiVnvVfj1Qw5LahPn4uEyckcCOyKp6u0VP74caQL
	 p2AOqxUHbxxq1RaZHoh1s740ZASdlgGN1V7pFbLQX6sTL/2sBJS9xkr0b67ZUuZEmr
	 U4KFiioUIJeE3lEx39afCBCBwtxrHlL35mySp6aAa/kfDXMz9tgEJ2AlwrEqmNF+Av
	 jIWfSwHIg9//tuQ/a8Hy1fvPF5etoecjPFTNvqbo1OlmsWfpQKGoKUqT9JUcOfNOnM
	 rjMqpwHtxtqB5denWsIhWRw/5k4ezLXYWyteLCX9rzDHKr8T3xn3LI5aDViZri4U75
	 jSPEf5YX7MHCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB1CA0FED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634159357.27561.14520905536308905306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b9448c0826a12bd786f615261bb08ef53830985a56c7aee08184562469a761
Date: Thu, 28 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756341593
