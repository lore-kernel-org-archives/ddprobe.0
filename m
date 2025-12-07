Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8912D0C8B
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765092174; cv=none; b=AA1jU/p3D6nbEm7sa5vcwskAhLSfDBGXf433hJ/7WIfBzdRuGN5MY3fmZUqNVmslDP5PZmA1W+pz85yUJPNtQseGQyOmPkd4SI6OGuFQEf7zWQvA88oiGooyz9k+gRHsVm/8A+afE6jHD2vzdGHGQVEcUaOquncQVCmrQygxnok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765092174; c=relaxed/simple;
	bh=oMx4Zu7xeBdLHch6JLkw9rg+fXbv+x8JbtVV+SQw2Ok=;
	h=To:Subject:From:Message-Id:Date; b=YVyu5Tej8nKfOC1IipXrHaJ7x+yZ35BQO+9MUQ+S/KhoykrI4McUmyrv7vrAFMVbgMaWAcJE0FJGaEA0y5eGtGmb5yCdXWsgcHPrHtIxxtCo6hMyLNbWLqZQwml8zvs++zqkZn87OFxetBNOTIGC+czyb6811yzj5n+KlDA5FKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+QjEXyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+QjEXyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765092173;
	bh=oMx4Zu7xeBdLHch6JLkw9rg+fXbv+x8JbtVV+SQw2Ok=;
	h=To:Subject:From:Date:From;
	b=X+QjEXyndxHjm9Qi3lP6aanjlTy/JAe3na1zf661lYI3my0vAtiQ1Ulv834IdZku4
	 VczPooWTh6E5S+3JxrIJdIP++u3q8pKvGR+OkVkkH4V417cNKJfgV/eDOl5WQx3+tr
	 UPN+lJUD4gECvbjVX/5n5s1EGL8iLFv+CgJsgucvQN35HNmSMfX8Hy/wA0gg4oGokz
	 E3AEUMEuVNwQ8y4g5DzXld2dg+4dphfCyXKNIOJ5Iq6SY5c1JVLb9uR2NTsVa8u/0M
	 pqEQHjNFwx4WVOui+sB2udPpY2l1uuxqKlA4G7GP2jBFbR6fXTl9ngGmxiFNEGJcX9
	 ypU2/LzCnH5pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB8D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509217358.15115.8429858378237103485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3424aeacf6f9a070c3d1a3a4937ba69bfb12cc3c33a20645fe281ce56bad9eb1
Date: Sun, 07 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765092173
