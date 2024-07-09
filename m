Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B55315F3E7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720536983; cv=none; b=M1cFCW5LaYpb9LjT+mAxCsU1vLbqQI1WKra0SBCg5a1vbpmOVpE5QXOl2QV/I03Q2dATu5PUo2yjOjUvzUV4k+Eenzp3VrrBN2bhmF1hsIpKQ+2wJOXlp0O4zC3Ezqqtc12NqWewOw8WlepmWA40T0yX1ChHh3VLzwg2J+pMBvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720536983; c=relaxed/simple;
	bh=RRLtUOS179ZTX88fXd5vZQoP+N9b0/lhNGzrpsuhICI=;
	h=To:Subject:From:Message-Id:Date; b=EOZK42Tt5upIw7G3/b/p7ojmRTRQRjmyMiU5lSr252LePKbbDGM99iqe9+CYZlko2If9yiLXh8giObeHaRX6zdIY0UwmPYzIeMRjjCCQKDMbxg6IbEwKT5s9+wS8zw/H0y/Cb+OSoSRyLr8TiPqqJjTRzOtobrbBu4QSD30/6cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5BYShft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5BYShft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7698C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720536982;
	bh=RRLtUOS179ZTX88fXd5vZQoP+N9b0/lhNGzrpsuhICI=;
	h=To:Subject:From:Date:From;
	b=Z5BYShfte1Rpf8yeSPS/KtpjRZF91Kv5qWTw7iTo0+fIw7/c3ua4XP8+2O6Wb3wbl
	 NzsOsJNgVrE5OzIs84ckvDMStWriT68MMal1JAINZULx8F4SsZZz6v+a27g5rW51m0
	 2Y+aBuDtsDmkUgp/WfX4OTkYGjvZ++ZiobJf61sgYwTQnwW2U3fO4kjxi3jo3olmlK
	 fO2kmG3CtvAOMaa3YMqZT7FFaGVP8wRA+GDspfLDkyOASoZiZ3WnwZ3HaDnUYtannw
	 biIFJvo0MGKihGy56qrcwmO90zQLlj3+Cl0qDo446zc7dyfkmK3Qqe15BZnUXjOvwJ
	 1fzYcnjHayEiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C827DC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053698281.330.15010665729863400599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee60a682833acbf1621e8e48215475e7bc2bb46e5712d123663c6b437da0aacd
Date: Tue, 09 Jul 2024 14:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720536982
