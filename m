Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96C112E5F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706020697; cv=none; b=EfZPy+B4b+i5bBqYAvcfbb7oDrPYTa+rtyHZlbUUvbjojeGS7f2Rm+0qrdjncteqP+eI9+V6RUNwv6CUYhu/0HRExtwSpqGiyDsmBKggSnLhJVRxGe6Fyn2SXjZRrp0DUr3O8Pesv7PFlKT67k1q74A0wgA8eblh+Y7x6U6bKJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706020697; c=relaxed/simple;
	bh=f1wtWfkmrquzjqMUYAnJXqnJJiPjsHJQzrwHoyWbQmI=;
	h=To:Subject:From:Message-Id:Date; b=szi7DqVYTihNGYIKbL/laEynacYm1tulSAhP+z/569ZCC6uG9e+DqPPbNQd5RVA0p+2XvSyqFTTyOkMTnMHeRkXFiNm4veR4wXsUCyo+uS165dO4/ghppcbCoiWW0R3wHwFUAQKHK198T6VfUZ7IVqCCF9JfilT65GdsDkMvCn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7K3oK84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7K3oK84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BDDC433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706020696;
	bh=f1wtWfkmrquzjqMUYAnJXqnJJiPjsHJQzrwHoyWbQmI=;
	h=To:Subject:From:Date:From;
	b=j7K3oK84uxySr/ZdxLd8KznQPk6XOQrATc+29EwotHgJS/NkzulmyHA+uV8aY3roH
	 rkXZnrMhM+WM0g5eV1+826l2BysHz9rgh3hzzasq3nArr2jzY2OFdzBL8L35Q6kI2k
	 3jFIOPbs+lnATiaIVdPtRvR84rT2o8dBWV57Y8q8xATQV0xHqO3DKRcPtdBNz4Dxbt
	 0s3EI+zuX7vTxiU5r0d0uUTyAQIWR+P8QBYCjkEVEIxfi9tSADOmBT8AdvaQdT6pT5
	 5CaayGho/cYfIIpatB/Ozt8y4EawlvLSNLQxyvhyciOXdE7VZK4Rl1lF9UDXyJGuWX
	 FqNUWyDiWiegQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3F2C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170602069637.5365.10980937618873591934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf37dac42a86c6d6e95a50cc08c37e2d0ffa018b7e36b995066efe7865bf98b
Date: Tue, 23 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706020696
