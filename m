Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E809199FAB
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777078054; cv=none; b=sp3b5VNWbsPKVzZClnavDa0z1kQjvlAyIyr0sr1EgB36RXldjr8RbU3Jj6XmcGmaHLdXEIuePA114g9XgLJ5YLtnnsqjXL/K5I+qWrJrKoFrkbftI2Yzumjt56mb6yqo0X/dSteg6VU1gGw2yditQyaKFSwZdK1uE1bEzxz3n2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777078054; c=relaxed/simple;
	bh=Tfmo1AoOn4BC8qxQfcpVBcBO3DZ6bPDowkWdJd0YAZQ=;
	h=To:Subject:From:Message-Id:Date; b=LPneD5DHK1kqjA86p3aORHqltKPsgqHMNzenW1gd144Wz85tt9o/+SASha7AzuJQBtIHlv1155pbNG3kZwrHgp9mwFX4Un0hNUs7paVc+RkB6ICUhycog0FUSMEtpxUQNYWSLh/MwzUl2RkNtPynm2y0CpAoqzyTipNul181xw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoMCIjw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoMCIjw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1022C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777078053;
	bh=Tfmo1AoOn4BC8qxQfcpVBcBO3DZ6bPDowkWdJd0YAZQ=;
	h=To:Subject:From:Date:From;
	b=WoMCIjw88clvH4Z5Cw2UM/ouNK/E7K1GZxXvoz4MSHCLfwfO2iBWRXkvZpj990Bfy
	 p0QZPtL8vDW+7lYEO00f8zzVnmK98huQkpGenmaa/AfaJhD5iaCeaF+UoNAFWXC60b
	 1jfcCpomclGyodIH/vWsrBPBHCxcgZcMMkc4XM/+wecPsqiOJQYllDfUevRUND7kY6
	 QhNfxvT+MyXJhPZA/rZ0ApxTPHaKkbsFpPUWPrJ5uRShRZxoCNpLXJ5cwVNkfw4s1U
	 2LQu8cIs6lfWK4NDh/O0KUXlwhwgtlU2K4jwipAi/IOG+ybjtXIkx0BXEJXFydettd
	 k2ntGrZqHbRfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DC1FF885E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707805371.18385.10940210550478646204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b74d7a686f009f0b5d447f35aa27938a777694dda386a7b4a73c151cb08eb29
Date: Sat, 25 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777078053
