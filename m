Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DA1342524
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783184914; cv=none; b=JOVfTs/ouX7HZBzvYZfnpfMwSuRrLrC4JuzzcveS3j00KXJtaFOz4iUJluwnA/L/x/4U+Q2BElOOuXc45FAvhmjCTw7IMs1TFM7nGbxu+mkqEu5vjUIXI1O3KmXW2VS8bhrbiPIpoU1paDiaXFVr9O1fb3HUNDjjUrel15Dp07U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783184914; c=relaxed/simple;
	bh=rQjs7/vFqpeq26uIXsV5REUcZMD8lJ36y01BcgIMyts=;
	h=To:Subject:From:Message-Id:Date; b=axDtnDHc4VNs9jDFuszB1yX1pbULpgyg0o3wwq6V26Et3nvErYzwZtVr1RRrAqeOjetibPRSi86sIp2CmwC0bCQL8NokYgdG//vmZoP1y0Hwibcd6cQAWeOJJboFYoAB0G4Wl9Sa07/CbOC8uIw0dFLquQWTBEFrOwQ44AYudJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezfqosrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezfqosrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12B5C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783184913;
	bh=rQjs7/vFqpeq26uIXsV5REUcZMD8lJ36y01BcgIMyts=;
	h=To:Subject:From:Date:From;
	b=ezfqosrk9myBD2SFOBZhjDsGcYDH5c0qRuUkLSlYPgrKBLIUsb81JMPSvgwzJEoKR
	 /zQX/3J3MgYTfg9yA+28t7ZBBIELHrgjIYu8f+4SybJTn/h167NwgX788OrDU4WIvY
	 OXQBSH15qfdAMIhBIXd1PP5OplcwJ1fQBhGAu2zmwXX6CE5zRx7Z9tsS7Tp8ROQtN+
	 yJkrPN8zCD3FdD9YvNreK9wO+BK+75ARYzU3tfiXGTnKeFvRphNDFynkDVZY3SyZII
	 qeW9uEr86rauhcJMf/adFFErSRMgTcuwO50bBDe1wpWQGgOJq9X5vBm7Ao/n6mVdyc
	 +VqAcaAG1NGEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF417C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318491368.25396.10980129453949004365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f461aaaa6b04ca12f37dab7de73fc52a4315723b1370ea4afccfc00c9d8cdb26
Date: Sat, 04 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783184913
