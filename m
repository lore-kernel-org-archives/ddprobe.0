Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB6E402B8A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779814954; cv=none; b=bXF6AMb5qBiBxt335agB/gp2lUa9fjbZoYNyF99LFHd/VqVrRxdXl68dYOEqK2KcY5QuOuJQjD2gvCXb6UcBzkDuBzc/apyg/lpX+uf3Fx3oip56WnyztHLVd/cIov3CS85taZ/p+fjWpCmtNPSo1Cf8CagtkPpCXroO0AG13i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779814954; c=relaxed/simple;
	bh=wX6VPL4ZOMyercwkE0Bdjc9gNg+aiqDf2thr38FAuCQ=;
	h=To:Subject:From:Message-Id:Date; b=ILUnGvnaVQEldSv2JsKYOC4C4bPWTpwMfow9q9/6aySrZPC/wqWsn4v/AS6aPKun5LBTs95ztufRndgon1Gs3ex4eAgDG94ChyZPEdJOnWzH1Na9JPqiBKtW5Likd7qAOBV+r8D8QLg6PcxDyWyt9Gbyr9r+huzD8p3ZPeEeHKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfalpuRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfalpuRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BCCC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779814953;
	bh=wX6VPL4ZOMyercwkE0Bdjc9gNg+aiqDf2thr38FAuCQ=;
	h=To:Subject:From:Date:From;
	b=EfalpuRytBJEQ5Li99zu0p8I9/zi7CZPDPUyI1eAt6OyfNjSZ022RjEktiy9XnTOl
	 0aRvfQAk/MqoeIJ72hrZbVqzpExuSJevPjC+L/WMXeBXYbIdPX4Z400eWT4QJ8aBFN
	 tOtOBF9NZKXLKuYD/UcFEo56wAJzPKzQkRpOqu6I78b9z6u/WppEqUIAbdLOGxz8Vc
	 y3goeTYKacV5afQbYIexOJt1ljTqzgYxGFY+T2inRImia29QbvJR0LCyYZ07X/6SHY
	 x/p5sRgiU55nynkodBtOFcP8ZFSokeKoLXPcmhS53ueaLjqeVgMnwRk8sijNOnfyZH
	 D7GAutBqhNk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF80CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981495369.19299.9501346229868043931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba5e97954b0b4aef336b758e1719f23d510177dc4e53ce7dc6dd2bf02ee000a
Date: Tue, 26 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779814953
