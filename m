Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493931CAA80
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745095794; cv=none; b=c0ZLXVz0QCbbDAnmTzMN4G/w4wGAWv+Bi47tt7DfWYOWH3fW2zZrxltJJTq/bOvSMA12EFa797YONt80+aaqn2Dq/vmmDcT3Zmv7lxQ+ECCp13OqHC1ioPFYnkGbG9C6KPBkA48NhjGieME7A6v1nmPrYGDAw02KccXE0cMJBvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745095794; c=relaxed/simple;
	bh=IlcPhc50nLoYCNN0yUXMeb0e/gRPvf5K2PHzI65R7KU=;
	h=To:Subject:From:Message-Id:Date; b=WbHGRtjb3vY6qSJ183ZyUjMLzva9e46PFYHBET3GgAjz3guB1FA2Qu6csAzkAg/DLDx01FZsa4k+HbArokCzZ8BnUPSVNwizpkXTvy8NqPlGEPg9BMOBa0EAFfWhRduBhky2Jy2FD9Si8Rn4UXp8QeAqPLEm9UMXxI1sp2qoZrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlblAwGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlblAwGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE46BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745095793;
	bh=IlcPhc50nLoYCNN0yUXMeb0e/gRPvf5K2PHzI65R7KU=;
	h=To:Subject:From:Date:From;
	b=YlblAwGTodTmKnMP6XYuumgiGOZtOTME9qsF6SKgVYxrEqkoDr2CAy/vrjIyyszcu
	 dcVOPN89wW2bCxgBJn6OEkhsf3HY+OdrrUZ/VHGYmNph9cna5EncmH+XLnRvwr1yEW
	 cB7uxiB/HvYEvv9T2TjrY1kVffhdvxapaNzFWEOwDV9XWwRKa/YcjQR/s9bSsJqzcr
	 9AeiCytCb6rWDrWLp9IRAS3JwWRjh1DRsgAu1PRG0xsSWh5/WhH89ApvwyHUmyyK2s
	 vgNY/suehsf7Ln4nD7qrTdBOFAgqtMr5323tkhCqUoaNTj3EZ3ceTg5lkRGaIRquJq
	 QDzx4AiYpds0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5557C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509579361.5135.5258392216645928283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6a52326c27856f7e397c2e00362dbafda9dc48e5faa855973979a02a920676
Date: Sat, 19 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745095793
