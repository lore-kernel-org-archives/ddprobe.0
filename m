Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571CA1CAA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 06:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713077963; cv=none; b=pXkiN7XiZvN72q1IfvlUXOkHchSoCT9EiacUInd64ZCZFG+wZ4r2HXfyr+SVU6nF8wPIyzMUERPEKZNWTR7qP08pkdxCeWGg6LAZZqFIiilyq3srpfoRfgmZKm7aWREyIM9kL0n2RJte/SqOryX7pBypVtbXCM1Y4KlMuWh9Bco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713077963; c=relaxed/simple;
	bh=1UWiT6ClW5W1dj2B33pT1W1E6k9SVUD8PD2UPFqdsEg=;
	h=To:Subject:From:Message-Id:Date; b=R41b2d/RVuZIy25l/6Kb998h1kv+7TeFFdFDMRkuj60qIEwxEbVnx1tYz6ugzKuv8d/0/htPog7x0JijrM5VGWCA9OzEkkWJPw9bRhvcLke6gQpd/fm/aK6ey9wqOJMF2IT4cz8NH2XEQ3wwCg544CzUomDjq65k1759j3wkA34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Drth4Okj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Drth4Okj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD49FC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 06:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713077962;
	bh=1UWiT6ClW5W1dj2B33pT1W1E6k9SVUD8PD2UPFqdsEg=;
	h=To:Subject:From:Date:From;
	b=Drth4Okj498wsC+Ov4yjNDTO66dpI/8ITggwGwaNqHWh4qwVw3gLIC6rBGevYDmER
	 4j6EAyxGu0EuIxEs/TGAlXIL7g90q4POY8k/xoQse9/3wQLgmnBjbxoYUNLmxAQ44r
	 nccjATpJFtm5rl6D0m6UXdC7pGp7Igxnjg5U9lo93F1+3yBcy5dM3R0MF/DWVYXQcH
	 AlVNRkUY1/oJh+7kEzH/5c3ozEVTgfvTJSi8PWi1/ndYuwy2c1Cxe7Yowq03Fam0/v
	 jvyRDIrLILHLsfS0BOf1NDALwiZVBVAPbIfgpoQgTgsQax1X8ITMIPrf5BqAzanlcC
	 9kjL+doVM6fuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C919DC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 06:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307796278.29404.12073278051225877533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96eaa00486a2e4a1b361aa03ecd9fca6434edd5d30381fde8b10d32eef872ed
Date: Sun, 14 Apr 2024 06:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713077962
