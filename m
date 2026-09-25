Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E03360EF2
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790313034; cv=none; b=U+45c9opauLibl9Bmoyl5yyBJD11AvkW0NnMCNr1aFt1OEBR7p3DEgFP+FYEIujDIdLIr8oCM+QELRsyczXckwhmTdVPO5/WCD5wUtG8WriXIKd+ZCtOHaIsefiLXlZLwn715iQE5MsJ6Va0Wd5eHldT/av06Pnbrg8gLqx/5QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790313034; c=relaxed/simple;
	bh=aQrKdJbqLL0bdbWnshtxycnQD8+SSqBNi1WMmjF7ziM=;
	h=To:Subject:From:Message-Id:Date; b=uY3HkPZdeyYNfPGVgI9qnv+33SGuN5MyE23/t8Q77KvprSxQn4GZlG+hgzSLmfeDovpiyTF0H2Az4w5/ggaxiiQh1v0vXBs5ycZvsSL1z+iXaEd14gqoJv/ioj1IR0oY2Yh2bCJogLKGx/EfPfUhhAlylY07q5KxXoenxkZLV3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqNOB1lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqNOB1lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC8AC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790313033;
	bh=aQrKdJbqLL0bdbWnshtxycnQD8+SSqBNi1WMmjF7ziM=;
	h=To:Subject:From:Date:From;
	b=MqNOB1ljyIhxffBrgUGdoc3kVbLW2QufJqabeNn3K70Gop93jVbO23IoX0TUhGnTg
	 pBCbwZLStDx8qXMDo7ZvMLdAZLanFUrWT39L0L/l6x37fJQNY5zRFhcwimtCu9ssae
	 ANz54lS9jCcIusa9Au05dthpyyA2DTTcI1TMhGvTi8qkKqTf41C0YNbpPvLFH9seu4
	 JfX1eiafSSpgnXWUO8YPZrV+o3XXkr5/SawTOUHwAkoZWfUWcjnxTgDQkSmsfmSHwd
	 5ieMOqZzD5q9o1SciCZgvxRm4TnIFa3jpnP6Ccob+W6cZmaKFI0uIO0boRvVDAweIq
	 g4771fuBTeqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD35C98306
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031303368.22774.2656194647628422949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f03aa28bcc98e4b56754fc97763fb3c03357e9f7c24245550e879abaef09b0
Date: Fri, 25 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790313033
