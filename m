Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384352737E8
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755545394; cv=none; b=kZh3R6ZKqZwAhuvzhvLG0dRbfzXVZRxF/fCk/cDrhU8Ew8zfcReqg54vICeSuxMy3Zx1aHKZpbPVDOElUZwNOonJKhHhueT+jgYoHS7nYerQmENY8K0BaWzLlMf+Pl1P3hIDfnYtGA8oaGv37vuP/ampacAecngw4ALpY+seEkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755545394; c=relaxed/simple;
	bh=m2tLFjDGO6HpYMQoIdg3xw2tcmoAqOGKtWOyxrCZHM4=;
	h=To:Subject:From:Message-Id:Date; b=RHUemlidKS8HgQTtFobtICXf3dzBcAVleyT60awudXMjIhr2eKzMgzPitNWHCiUuSJr9SvogpYi3GKLwPDoW0ukC9YxXEYOm7G42+KUo56Wv6POTHfR81fE2WoPxGUu615giiaArg3fEgBI0jhEQLU01A8+YoEl92p/UGt5xfPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLfbexcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLfbexcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B64C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755545393;
	bh=m2tLFjDGO6HpYMQoIdg3xw2tcmoAqOGKtWOyxrCZHM4=;
	h=To:Subject:From:Date:From;
	b=SLfbexcvZ1MZ7mLwIQW9/Qfzi2ljq4WxRrPq6ZA4dY448HQp/oK5CIOArI+GepwoP
	 8p500lpjUB3oz9rCcwDMF3UWcFKTqKCVZzA6sYRunBEe2Mp6G2yot9w6bzaNfqmXsQ
	 k5ed8h45YnsYBsoD8uK0qLojr51DnEU5Ah0TTEq9mpJIp+dgOVLujIxOZ/4vMB3yVd
	 fYL6KlLpOSHPEp0uDrVHumKiGzeL5AAEBMZXj2xFaJqCtX5lqiwvbhNjAJR72xeTxp
	 7R14le8D+re7e9ix3Q1psYjENSgRhSCpB/hflSVFcOUqrM4xg9tmy1jKl8zA6ausTE
	 T9AdLgTadIuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1BCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554539359.9959.2542904903804950896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a9f2bf608ebb6d6727feed12df66b8fa771f20643dae7f390bb49ce1aa39ef
Date: Mon, 18 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755545393
