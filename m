Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC5919EEC2
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758816593; cv=none; b=UfJVysyBHsLh0f91jHXQprL9OHWAd7gfPdL9EGULnP4/4fTeS0m/WDVog4Zef9X7ITrl+62J/era9dpf+xww0o3KSTnOvJsAWhC0QTC0E5vNj/LpnjB9/C2PS7vJcpLcThzJKwkzluUJm8qbPJo0R5rjnLfx2sBY6HMhitLXLeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758816593; c=relaxed/simple;
	bh=rGgfiIlU6PJAM/ppPgS71XBZWG/9mLoajCr95zzq2uE=;
	h=To:Subject:From:Message-Id:Date; b=bE76iWZFRiCdz4Wy5QHiK8b2if+DqiURm/IeKblyDxYHvs40o4G1RVn/bHtdWUu8mNindEFDccFmoZVwh1thbD+CPuxiPUFrteL7yfx9McANHXjFtn0FQSCSl1I1IYJdFtYqUwj/xGXp91i+tKuqe7t01Q+kuPX18WUoRpLUh2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzzUQQUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzzUQQUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3479C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758816593;
	bh=rGgfiIlU6PJAM/ppPgS71XBZWG/9mLoajCr95zzq2uE=;
	h=To:Subject:From:Date:From;
	b=TzzUQQUdD2TZzTe/uemLwmzJi5CokTnFNXxlqSiR67zpd3ME9rDQ3rfvZpYYuOnb+
	 Qu2lCsCyQsU1078vDpKdCR+0EZXfoIY6Eqv5ONAkglSkn6AP50Zau7n0GT/KEax4LN
	 akvM7jHxg+xzJMXZiBqPvZW0ju26sXrd5nUlLA3VVDRoAA5IJk2/st5i8JLBd1XPpb
	 dpAOkn+biuN4kVq+Q69X1B7RMYVInWXfUviqrfNWDNEa0ieTn6FKMd0p2IXoDu5LG5
	 9P3rK0R+Xzo69aY9R37OHwqVKzrkd3cQULNLpLX9FPcXr4eYOllvf8AdJaea/kZUXd
	 N50+QrZnfYgbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA7CAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881659359.1928.2795796059508647159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a828ff2d2a6549f7c53e0348b27dd9e3efdf43b5759c5f60b8f3c78880c51399
Date: Thu, 25 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758816593
