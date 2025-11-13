Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169F1312831
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763029794; cv=none; b=nu2Qj9Wqrj7oFfAQYOm7IG1lHQ2ME9OGBjJ9qd2x70V1FMWc1kty6sRVKaEIWlCMAUz6vUC9ViwC+x4QytOM3LPux7l4+1ZtLubXoQdjh734G7CQ5yPABCrfPjlQhvo9YfmNpiGi6O5xZwNIgrW9uqyCC1BpgWxvU6iGDshOaMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763029794; c=relaxed/simple;
	bh=f20sYqn32iL/72GB6U78E1FTmoMmlb3523GH6djvFXo=;
	h=To:Subject:From:Message-Id:Date; b=KtaxSbgjGcMim0tadd9nmTU9OFSLa0C4IztGj0f/t184boiB9Vk5GIYhTiZz+xhaIIfByHySFnPQtdHZoaZ59YyY1MHyOhG2Vceh6zOFQhQ20gQW9tWWW0z1wmmWIrVFXxDYhcXbN7WXmq8o67++b/dZEv6i8Fkwzl6qvUrN528=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJ5Cd2qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJ5Cd2qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F499C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763029793;
	bh=f20sYqn32iL/72GB6U78E1FTmoMmlb3523GH6djvFXo=;
	h=To:Subject:From:Date:From;
	b=UJ5Cd2qSF8XWPssBjk/0AYAFKfUZX0xWyXI7BA2R0Su1VtXUgfBfattzvcKZz7kbH
	 b02xL+4bXBnVLFarKmyG3KBHV2+aZLcbr//7n7/EzRcUM/Cj2NBvA9xNSWOftXGURy
	 iBPm/vI1R6B5W9dzvA+hYHHRCMxysPihY8ECbOBjYCtbsbnrGVGctoQQf7j9L22lIS
	 oFywj0vKAISK9k3tBK+Imy9C+qWV3HlIvMbeSV+BTXznlK/blhLn820s3fUaqEtyWf
	 Y6zwUZ5uF2gZi/xEycafXvh38gUXrUYO44s9BWpThMDQSW+zkVtuVrnSFs5UjHunmt
	 0pBtfH1Ej/mlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9120FCD5BBB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302979358.15183.15805660617159785043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e873117bb749d65e93068914acad1377eebdf405b01c6704ee7b1d96d3a049c
Date: Thu, 13 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763029793
