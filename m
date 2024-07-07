Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64139EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720362383; cv=none; b=rSenfIF7kExt8/eVa39mDCIXl5yJBtZafWbAm1ZlZsaizaH/YelqhWTEqSaKjfKYrdEiEaS5rgd90eNJmx+2Gq0OWENSG+ETWhQzzLqXwfeiknJS4yEq9jP9xnr7iM554l4vYkzJ8jfwKpGDnlse68xSY3l58polurDy6XSMazw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720362383; c=relaxed/simple;
	bh=AvU4BHiW/01SRehm6GgFo4f2U76ETQZ2uGNz8Pq6gb8=;
	h=To:Subject:From:Message-Id:Date; b=chigqSZPOxlrKxzFEprhVmE/3Pb0GGLxv/m/5vzWdd8CpH8JT5MbuvO5xfHb5xMx/eHyc2vQLD8lRFQm9POVZ70HkA4fspNr7vNGMHRszemeDfyB97ORhe2JAAm8YgLJLZYOTk60p7D5W7xj4xBWxL9ZS8DCYwtvApSkyyNX+Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aee+vA6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aee+vA6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BA7C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720362382;
	bh=AvU4BHiW/01SRehm6GgFo4f2U76ETQZ2uGNz8Pq6gb8=;
	h=To:Subject:From:Date:From;
	b=aee+vA6EeN5M5T1kA0NKVhQNFFq0sNp8ZhkTEJ3afJiWUvzJz954ANWW27MRzx9F8
	 kcDAXvHaFp6Wg+bAi7w9cxGulCaOf+9jlWE0KQG5fhvl8TrCcd7YCFhNgJjiCCsjA7
	 WwEgqXxoOvlcTauP+lQNwCsML16VzP2615K+baD6kIQaEfNRQNAQTWUJWxaZZMbdBd
	 jC4tB7ldg6eaATh0Su/OZNwpmEzUuDdJ6UYr1nxq+cOssWJySXGS7sERO3T0p7+bD0
	 dM6QcF8PDhnj0iv95py+lylKydiorxvB06BK5cndGXuffErMrznqzsvFvYrVNF3SDe
	 g/W5f5ptzBieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8F0C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036238279.18534.6430267242243762529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e03799b0a41edf15e785a146e8e42e2f3dfa1f793d4e8bd98dccb1a8fa70cf9
Date: Sun, 07 Jul 2024 14:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720362382
