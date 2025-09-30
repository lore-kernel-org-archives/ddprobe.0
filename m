Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BEB238166
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759267194; cv=none; b=MeATpFrfM5b0jpP+qCH9WiFAiINmZB8YUJed8y2KPr62r8uv8rHR1fLrPwCNKzTm1LgT3cikoMTQT3HQgMPSau1Li4StfcH6AqLuugoFKg/BY/1yetUc1KzRIuhSHDNzDKdZUtwDjJRzjaGg++aLMNDWFT9J/iouP82qcQ2IG0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759267194; c=relaxed/simple;
	bh=ZI+flCm5/1MUXLS4thGzA/KU3jZrpTN4UIn9zDrz6/A=;
	h=To:Subject:From:Message-Id:Date; b=iEytC02usDdzgkmN0RhnwZnmbj4z3n1f48gV8LfV9XtqpwiF0IpvwwJ1FK/BcYfrOLclGaphDA1LQDNT6f/+OcYdMXQx4pyKBPKYTkz54CrQDahv3QGQQ8aC6pW31wUVGqc/eDzgafCjfYaI3SyPYn2J714Clc8q5P9gq7+qv/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7EQl7ZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7EQl7ZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0E9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759267193;
	bh=ZI+flCm5/1MUXLS4thGzA/KU3jZrpTN4UIn9zDrz6/A=;
	h=To:Subject:From:Date:From;
	b=a7EQl7ZE4VoGJZywXTGXfTIIW+AwoueNj70F94H14+IhHJput2J4iHt38wgr6kNUQ
	 Yo2/iTWpAXIdurNI2IvcgPz3Ok6omTqTvwqKYEYW4M6cOFQwzMpTyKbcdidkX6LnOK
	 /x+Ekw0ZeDU1oJJ5XnobWR4aC4zy5PCGWvBEa7XS92wRZE2OXLC5YrnAQ/37bRNv9J
	 i/n45XmX1UrtiCeKsV5GZnMv+FtAoWI6x2gSfoubKHILUyBQ2kVGuV/TOgsgCBG20v
	 tg3Y3CETYbChCPYUhreB61pZH5U1Ywq5AAFr7mAswg/KOq7wd+2KLRZ86axMzIpGNZ
	 7KQr1/OVgIoYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96057CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926719358.21817.885982509015257760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8612bc036f2ab188acfcf08df22f01776ed49f28c376593fbbfee04c017d4dd
Date: Tue, 30 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759267193
