Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ED6EEDE
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735491354; cv=none; b=fHCpsFQ68WGdc4jW2oDQqax3I7yKmLHRSFiMA72i3noo2TwrUYrCXv1ivlqIpw5+H0rUgNDCVJd4kFDbgTT5UwYmrikVQPraAyLqfByEpdh9YrSYfFKndWKODYIVj8G1VYwambctVyszzrflVcpbnuMtU0K65M5JfRBAe99pZpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735491354; c=relaxed/simple;
	bh=/dFEXgpedIr8CJ1rjvBkmYfd7Sn87ZXZyGH/CnUrTKw=;
	h=To:Subject:From:Message-Id:Date; b=T7zqFcqNSfQmyVpc7dCZj4hdWjcAqhcJw+xbz8llVFbI6txSmEVpfz7fg+sQviNP+rrqtkOmhIdXgSoyCbLZPRoIAk/Aha9an527VvRmn/wrUhaGTTkZ96NoZGZQbhzTNOBlhdSk5Dzcxh/BOYrkp4l8F+s139Fvugj2R9rhG7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPKMEBJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPKMEBJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C86C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735491353;
	bh=/dFEXgpedIr8CJ1rjvBkmYfd7Sn87ZXZyGH/CnUrTKw=;
	h=To:Subject:From:Date:From;
	b=OPKMEBJops/dKIiHgBFY7j9CsYRufnFctZ54R8CGST5ixe64FNDwqDwNkrjIEFNbk
	 WqjaQRhklOJ+BtDCeneK3jbRk2P0gTQPNolf8ogBQqTx0oIe00x9HXrpXdZOmfJUAF
	 XftyHyM0RX45OtxNEAmRM7Yks0rh6cHRjs4ZYnX8CFEXwvY2cp35mydAic30/PVcLP
	 UCW8900CIJjfo0CxxjmogM3KxH0d5Pa/I7KkOtwjOX4tpjjEQIIgtY57qsZRQCKod0
	 03tUQKrH6Gbha3saJ4/hPTqX4fAtCXppHPvfDhA6KkSqidNlyFn8Z5PinLf9Hp9v9W
	 qZ+5WEpVW9/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97272E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549135360.18845.14577215923678416366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9186ba1629e5f0865d78e67e07ad5977ea5822b80082518d559d21d54b4fc12
Date: Sun, 29 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735491353
