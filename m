Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B9CFC1D
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744330794; cv=none; b=JeSbHl38S0kaSjkB6AxNnc/shfam2okmbceBg6o0tB7iyy9OlNV3ndCKmjQFXB2ZAxKZYR5oMo39WoUtBpro1XthE/HjZmrHDu1hSDrDBp3GNB0weTlUHNkA6nLnuXKOQRBmb9VP6sFIDUJdnn8igmvKOhfqteRwWfsXNh5S1KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744330794; c=relaxed/simple;
	bh=+zU/h2k9BZueY4CYFF4cX8ae5FxHg4O75YNpn7rQCg0=;
	h=To:Subject:From:Message-Id:Date; b=j8Dcm5XQhFi6tyMl3cEE8uK/MMYXaoCH5KiK1isyaHSADuxOlD5UXE7MTgJXJP5TPuW4BKyHWJ8diVEH8T8KcEqk9rQM+yeHJiIBfpMgvLM7djBqDmlSq9f2Fu0kLrM86mxHYxI9Q1MTDXwRwkUr93kR1FQshLl75velOSSoJqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrzaeLma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrzaeLma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B27C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744330793;
	bh=+zU/h2k9BZueY4CYFF4cX8ae5FxHg4O75YNpn7rQCg0=;
	h=To:Subject:From:Date:From;
	b=VrzaeLmaWxBmVgp/jQdKe4XdRSEOQ4fsKYnZpGquQeKcBn2HsWjowx4P7dWjcoL6O
	 n3MkfkQceJNmkO3AmsDrBLFR2tpHc5ay1sunRGLcxG7AvBM4wpFlbqav0keExc8MU8
	 mdn7dyIffJZYXLXMf8Je6D2Bo4nq1SeXeMCluhCogwXn7kNby+pb6K5YkzriAg1fvf
	 SRBaDOkUpovLmPbwKJca07YJMjwd0mZHsqjZ3bpyZVLTCJWjmYT53ogiwxkbPQj16x
	 betf0T5U2B7IU2ExE/LD11GYFerYUby5i13lOhu5CFBye1EBIa2SU23JXV5gBNYEoy
	 A+NeqNX20BAeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1DC3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433079359.29046.15655085350094506553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c1bfb5313aefadfa33cf21780e521dfc00f5824958b797c7a2d1569b594f5e
Date: Fri, 11 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744330793
