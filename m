Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A2C8F5B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771032894; cv=none; b=CLM/kCHKTgJEcpcJjeKD/pG2U/ZM21jYAvXogFECjWSrLYttSzhmdMoXaoOqKfmVLsUX8m6MMu6GS49F2N4e1XYDKyGHeD7y9qB5InBuO5Z3nfvYeqc8SHSAtrla79H/WjOFjKdW6QVbopbvBILH9gDv8cWSQoJlp0X8bVnsBaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771032894; c=relaxed/simple;
	bh=dVEhdk+303IkB+ym8kFFzo95e1pB9SHHviJfpFfpxNg=;
	h=To:Subject:From:Message-Id:Date; b=DUq+WIKQIZ9Zq4lyjy02dp3Pnw/OGSOkWU4wXYQPCTzk0TC5eSTiUUr7PTsTHH7ZWM7KOU4Xk9yHwfqvURiYyI6Zu2h5e0MJKwuYTpekhyl3WknoRyoSIDgya/xy9kzpOvv2w2kncl2SuxucVYZWB8TwaJRxIko0JTQdEonOvas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjUj2jdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjUj2jdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FDAC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771032893;
	bh=dVEhdk+303IkB+ym8kFFzo95e1pB9SHHviJfpFfpxNg=;
	h=To:Subject:From:Date:From;
	b=BjUj2jdmf3QngckKzS5sfycRuf62a0Vj8qZ5Od7U7jy/TEEuTk3dBTzjAHWb0fYVO
	 zUNcgw7eQsPyEy8Pv6rmilhOxUfwvx2nupyR4QklfGh9EF4s2J92SlLWYLovfPEWhz
	 3aVzBUGBihtwzZL/ibytmhPYxrfzQuBqtUzERLPffCqQck5Vcyr+om8R+D78IYKLMH
	 Ql1jEIwp6KcM4Lzu/+vT56voanhwqujLUsu7iDTluH4iZ9pCzscZtqC48hzPolRTYf
	 LDDN3I58QJExd60GaZpTYJaKsGnCBoLQCF2FuLnrax4twUroUursPVfm/YOs1SQvgx
	 r5UpjN/uVutow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94733EF99EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103289359.30881.542564183918992121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ed4cd4e9fa51bfb5359a2aa998569d87582a6ac8b6fc7e69cead5bfb9155e9
Date: Sat, 14 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771032893
