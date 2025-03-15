Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC39205E02
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742060994; cv=none; b=KoqMsMobPkwjnCxXTIYsflFIlrsj0ULlAakx9suGMmAXFLF4W06TF6PA/k1mcDhLxsuQcOoPPQ6BjhkQnfp+4TXSQmCWAFml44GZ9iWSWYBauEB18M6GhQbiYf4zOirUEVCOPAa/doBPq2KF7vO37Q8em4ccim2rKR9HFwhhFOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742060994; c=relaxed/simple;
	bh=nN2eUF8GQy0Rs952hBL5ExWO0ZEgT3tzVGxWJ0jodmc=;
	h=To:Subject:From:Message-Id:Date; b=lPaKkMWYMoluSBqnJc95JYewAnvOU+lK8CXzkk+EKK4cvdbC5AToWc7qZdUtpf18JG3DOQ3Fp0KhJVa16Rg1ggh4F4BcPM607LXFssZ9D0vuaKAWBNCQGKnMRiJ8U1AkU98CmiTfO5J0JQ+jLyDe9MmDJXkjUbTJZeZnhSZIcGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4vqtN0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4vqtN0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42B4C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742060993;
	bh=nN2eUF8GQy0Rs952hBL5ExWO0ZEgT3tzVGxWJ0jodmc=;
	h=To:Subject:From:Date:From;
	b=Y4vqtN0txwyAy0D4219TNXKt3XRfsTD+P7CkI2SNtgypQq/HfeI/Om0LxNU4CbRrS
	 kyDA/vcHtR2oswklIzeuhXMjZOm4RNVwyFEIhTenK+Thfsaj/qGzsQWUI6rb31sBfQ
	 zxc2YKxdDM+HY4t0uXYtVmGSx2WkO8mG9hbhzIkB+QRMLr9YpiDy90+5Q4iYn+GhLk
	 OFUsfxeqh2ickJSTk/qTalAEOfeqPUoNCpXekM783BYcXocPtt3w9a1UiMuSEydzDg
	 en2hrDKVLf/yg9eyfzuZNfmkNVfj9TUGCSbnnqTkVRVrtXIufJKggBeXEBl36Pw2JF
	 FFyBD/b4E31og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0265C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206099364.11518.9390771850075682614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a3897733ffdd34811154a6b229956b1a2c741473fd59fd3b6fa55852144b75
Date: Sat, 15 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742060993
