Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CE0293C42
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764052374; cv=none; b=ZtFpPRe4JBgLnPWe85rTOqExAWjEmUJXUeFX+XygF6V/x3xFuUvdF6bbYWEE3Ss/IcDtH6rLKJhaxPay81F7GsJridHFtIvzCBWWDN4eK0UbgcxRmrKcSeUH8kXbnw5wworhdeAptoFy8NhI33ZR0NzQ8deDk0EtUm9cnm6ckPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764052374; c=relaxed/simple;
	bh=YRy3bALh7/V8Xuq9NuXsBGpAjqx12YeVj6en3wtl1ck=;
	h=To:Subject:From:Message-Id:Date; b=lwtMBdXGheZYkFijNXvA74GaLsHgTLPHZYqrsZt6kCXze1ct4kZ2nE+hwJ30Bne9VmOG/HH9/4nnHY3fou3OverT8gxq5posGC1TsVfEYTmbkDVXxVn70bwZO/Ye/9VgD4Xk3JaRYYpbuWQhPFZMh7us7jFs+Ppc1dGn+OHuqSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaqK8ArB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaqK8ArB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F1AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764052373;
	bh=YRy3bALh7/V8Xuq9NuXsBGpAjqx12YeVj6en3wtl1ck=;
	h=To:Subject:From:Date:From;
	b=jaqK8ArBzC0kBn9hnhudXjzAYdNMyE8M+vUkZSXzv+lFyG/Z+VN3FhzA0+aqbxxKE
	 VgjXbQ66hXx76exUmRtS5ZDSv5W8GX+V+9ygDbD/yNHgxPmv4AtVq5UQ2eolvRpcLH
	 7uyUKBbwSb4yhSKw69ao0t2087IeOhK30nVLTRkDQeXktTVQdku638FvMkZ57DLajf
	 wr5itF4DdaPte7L7tN9nFIQZjGPgNetgADa8/UAm7FE9VRByqUqoAlTRL92BHzV9gy
	 +Vu0gwdY13FHJdb+o29PAv0mpeeXn4WTYRHcvgIABKaJGogj4t1vKKgxtJYFiy7Qre
	 a9d81xhkL7HtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F029CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405237363.5881.8277677492720564056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6bea56e00c0ab31253ed8408cdc7980685ff558a40798aa303882f520e64af
Date: Tue, 25 Nov 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764052373
