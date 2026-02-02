Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E14D366052
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770042834; cv=none; b=pW6sfUEhguZFy/OKYMXM+31X+IxNlQtUFJb90GxKtMnrDrWuE/D47q3bp0aAQSgn2YW9CFtK3MT0eDilQJe8bMTS/v2v53JUjtf+xfajl1fy1C+xIot+M5WgkoXJyeA+MXwZuKE6VdmnaNrgzjYrxiq0ocmRLU+W/Nrlu97zjzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770042834; c=relaxed/simple;
	bh=1PkMJRnh7GH2b4KzzqqFx+XreifgLNSqpfMWOFPV+z0=;
	h=To:Subject:From:Message-Id:Date; b=faTPV29EBHrS/l0miC5N2PZl8snQVW9pjiZqFmwEUGtJqMPkyfcvpXX7kaRs7gsNtAWCACEJIyQR/TmJj7NahI6VDVOkmfQeMS4OPIIpwyv6abzwK+Rc+bFoR8GZ2erTChz4U6uwEncmM2XCsga6+Ct+xNEVeOz02EqbOFkrUys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reIrwJ7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reIrwJ7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D6AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770042833;
	bh=1PkMJRnh7GH2b4KzzqqFx+XreifgLNSqpfMWOFPV+z0=;
	h=To:Subject:From:Date:From;
	b=reIrwJ7GC+RqUE7ANzrOXIuO40KkQ2gRB9xve3C6NbXYGSOFgZQkpnFH/oMpsh7dM
	 rutIQisvfnEKDvM+49IQBjNBbB24RWbvErN42RRJpj88szoGkiGel8QS6Wl3uPF5Vj
	 HScFIviFgmtfTBl2e05vkZOnPDamV1CP3AHiydD0bVVynCyof3vwlAxwS0CrtnOwob
	 ZVzg0XskClumgO1OoF2/2KqLhPNMwPaj9dv+NXKKUF0jsQGePLyTwKamuMxWH5NQSP
	 0cuPKKZtNd046y1aSzyNduiFEVOXMg5Q0UGX4Dd+nW8oohYoANEmRuv888+AtMo2r6
	 GpiYLbGeoai1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE6FE7DEE3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004283363.25685.16231057658373317231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca28c29e253e31789829e7569218620be6ddb86abe0a066292cdc1ba3bb1bcd
Date: Mon, 02 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770042833
