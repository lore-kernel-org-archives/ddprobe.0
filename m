Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354B428CF75
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750355994; cv=none; b=G9QyJy4SXhtmB9NCmQdLYLcWJnTKWjApgTkaOFX6mKfzLG8m3luayDZ6Y2aVhSYxX7SfPi36sJixTxREe3PnYQbfof+Tfmfus6tHetkpnWBeJZNZqFUX6jBKzktopWGBIyJHjmPH2/CbjMbw2yOXi3j+vXe50O8aDNHNrXL7u9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750355994; c=relaxed/simple;
	bh=Cr/iEyw2Bxe3CA51MSXvUxKRccdFmlXvH519xZ3X7Jw=;
	h=To:Subject:From:Message-Id:Date; b=dPQOZ6DJTekrn8phh9mc0clL8TANkdEJn9Jhx3Zn94eTkX86IWwJcyw8SmiK8wlOIPK8zn4U2e0Fjm/v9gC+8wj5ndIz0aO9FwPcs8w446P77+SwA+Gh3XLs10xuHWmQV0dgY9ehA4NJuk+E0WcAMNg6SLkkEITVQj0JMxTKzwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo6pyuEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo6pyuEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4913C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750355993;
	bh=Cr/iEyw2Bxe3CA51MSXvUxKRccdFmlXvH519xZ3X7Jw=;
	h=To:Subject:From:Date:From;
	b=Yo6pyuEono7HSyeXzzIcXedU1m0jmTG9kg8I4JfJGhb0VvmEMR6aOBNN20/ivKQoz
	 aYdiUKOAPr89TcKdsoNchiVeS0HOrlAfKqEYlt7flBXVsCnWtLV+H4L1B7PUZhQK2b
	 X4rafkhQcxsYpvK+rHH9OQjfQNc3ANGWEzTwSL325Mp2bg4PAAhbkSrKblgfpdJU6e
	 8LzndjcZCC9mq7Z060K3HLsN+K4S4yizGOCpDODcuiS3WZ4fM2NrUQ+GNqv6bRPq2+
	 RxnVTvYRyK+Fro2nr8CN0N3pd6Qnjbui13ciFl9P7TE7n3CvZyD61BebqE1PKj64y0
	 yuxWp/A+Up1mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95121C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035599357.27263.15602342947569365638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f0797c1b0976e7f1bd7c748e1f319ec2ac9652d63dd5a20c95c9aec40f13af
Date: Thu, 19 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750355993
