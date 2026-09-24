Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8433C3F44
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790288434; cv=none; b=nr/AdSU9movg0bXqqD8E9d8lRsppwAuN6CfbN4LQ7lpnsorM2VsSvv+37IrzfCC57jyKdN2KcxQqAHfj09f2x89F1L+fswEIoHqBe2wCDZL251EYDc4fgz+yd7y9HXzro6JG1NiBQ9zZ5YPiYVsFbxyA4zwn2i9Bt06NF+NOZNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790288434; c=relaxed/simple;
	bh=w7f2pVxGz3rXhRlVVmSDKP3spBFAJRzk4/14TwO2irA=;
	h=To:Subject:From:Message-Id:Date; b=Ky9jWp00ZmI8dK/7umqa0XEHQte/CfIGvBxE/y8OBDexwtZZf8TTWQP6oo9ygRu4npbFoK8RsK1aJm9cd90UkDqajmbg1trz41zXPX5sBMikK6/UH1K5DlnoeE0J7YkWac5DbQZowFjpx98DiRf7OUQ/pY/AVacI8WQwfDbuPFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5U174HB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5U174HB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71A3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790288433;
	bh=w7f2pVxGz3rXhRlVVmSDKP3spBFAJRzk4/14TwO2irA=;
	h=To:Subject:From:Date:From;
	b=C5U174HBbIUqHXx5EF1W3jkA7Gvg4ylyYo2fyzSzBKtwJFmqa7at0oPfSPw/X4D3p
	 LVO80bqmFRLTLn3+Pezjg/YsmLD0C4VDfmp0gM64Xjr0SC6IV+Ey/XsaiIFsEOMY07
	 OlhuDR43NxNqLpDiLLIXYfExtoOw11K3E7rJR3KJ5MhRVO5wylksmDGamF6ba8KcBl
	 KxyO1XnhlFtvxV7ECvSYf79L5lErnvh5aFBGPkeoWQaENADBfFLzdrm3U4uULpLsVJ
	 6/HKiD+1srJ+y8ydm/wMANI3nWeHMYEIq0FWYTheTBserIHxJJwOrkApkld8ndWBRo
	 EC6VV30hjCZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56F9C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028843370.25517.9872412262022074107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3793bf418f60f56ebe4f200a65359fd7be47dbfd89f2781e21e787cc96e338
Date: Thu, 24 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790288433
