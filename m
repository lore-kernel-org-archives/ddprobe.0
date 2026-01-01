Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDD4224B04
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767290034; cv=none; b=X+3feaEddLRvjnrfAzFr9Hht8u2UaM0aQUAxWXd+zVt/C1KSR5Nl3x4bvihDWtpEiFsdOZK5ittE59zkKgjgtiF6nm5GjwAUtqsKGHeuJGwnR4mh1Cb6NU0Oxy4EudSgu0b2rPmpQAS/ufoLl9jC+TtWA+V6HFn/9WNgiNSnOew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767290034; c=relaxed/simple;
	bh=24l2SBN8KarXr/Ca8SBfjRriPxy0i9Tqj4Drz/375kk=;
	h=To:Subject:From:Message-Id:Date; b=AR1Ez8QKedxOcLTctBjrG8/gYEELzOWM1DCW35CLlOO41ovEulb6sbQPRs8pnXfiaUVcOb415jeFsZ+e8TYdQSZJ9HBVIh4aa61h9IqvGzIsibjU5GsdCT5JXY/zfr2acdWFLZcLLTgGKYmNC4ICNWIg8d1FvGTM+jCjueimEAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE2Q7oIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE2Q7oIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767290033;
	bh=24l2SBN8KarXr/Ca8SBfjRriPxy0i9Tqj4Drz/375kk=;
	h=To:Subject:From:Date:From;
	b=DE2Q7oINP5JmqZxxLMDnii1W62OFoMFUVl2jjTeG4If26r6y3M19Au2wSWe5eeWkh
	 DLi9t1floQpQS1A3oAJ7MgfuMWu/nud/qASigu+fA4Ll/vMO8U4g7muCVV8bKcnHaw
	 V9RyJiBZsQhL7c0039FgJs53WMD9Yo2crhWsy+A42LAki2I3Kx+tdOUxltDnLJhtV6
	 0pA3Gm+Gz2q4bUK3K7XvOgkpdWW3bvqhIQuIqw/te194/I7Y2by8whqy5Yxa+v6Kk3
	 8cvyWteZBhU4E+4CD6yWsQ3CyRnqtUOHIsORg1mg/2PwcAhYaKP0hliWQ3CsFJoT1T
	 3OkLKPBTbv+Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F637EED626
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729003358.3324.2329033588940674303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92e95281f17a802aea92579210c09d243dc800d9409e378becf85d5cb80dcd7
Date: Thu, 01 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767290033
