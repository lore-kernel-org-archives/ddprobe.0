Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD4D253356
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757452195; cv=none; b=d5GUUWW+Chy7Z1u3jJpPUPyFe4wvTdWbiLEs33LXO5vAd8QXB+3quY1H/9LshHDKXy3Jm+goX+Q9AzJ8A9NafIphMEXzaf7uVGn2WuOyzSBP27ZxqDgW1DmBuCHSuOW+qJZ9frjhiX4Dct5EhxpFexqCeIBOeUcvX77FunUA3F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757452195; c=relaxed/simple;
	bh=xHjoU4g53DRGJGlCvvy/u7yis15Xt0O4tTGcvG2TNnk=;
	h=To:Subject:From:Message-Id:Date; b=bszfgQqNU/izoSQD3+8DWTc5DyQQSV4wGDa4YbUNec8Ora2hy94IWBgnLfPOdGv8s1cKefY7hfzbo8CjM4mioloCrgpf0QNwlaUxpk0/E+PmMKtE4OftZ7vWC+4dV15vSo1X8wAq6WkOUnX45NkUsxP+SP3+fPxC4hqM7bfDiFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ocdf3K/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ocdf3K/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6169C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757452193;
	bh=xHjoU4g53DRGJGlCvvy/u7yis15Xt0O4tTGcvG2TNnk=;
	h=To:Subject:From:Date:From;
	b=Ocdf3K/E3Uq3Op1oII/tQn4YsCLtdjPGneSz9sTyaw8PvLn94IHjuiDGnJC+jjLNV
	 t7BIhN52rcZ+st3MAaI+kJQxeVgz+Nzz/2Kg7QsNYkAReZWQV/link5BhYuU3iJTC5
	 +Vfg0WStX0jKLJd4yD/BjAPtgIoguVVbTRDy/yI2yZekAJVI41sPZh9DPhY/LS1I/8
	 Bq5auAwpHDq3at80Fj2WSYXeOpqnHcdlt4d8GKsgAtZEpA/RSThuRP/2rojrksxm7G
	 Ujpdn7fcSG9/yQZghG+Er6xVzEzi0lUQp/F3HifiW7E3TK163KAgG1u6AcyGVxv+IV
	 Hf8i5GRyAyvsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9696FCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745219358.4167.7166985429510932652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fb8ad7f70e8e0b957621bd26edf58e749805001d897982eec3c87573feef00
Date: Tue, 09 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757452193
