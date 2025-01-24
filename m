Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F091E495
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737718554; cv=none; b=dgx+lqN16urkr49d0dNRRojb+gO9xz4zT/KPQtK8RZqqMyDgcClC6IR9mwGMzg5n+9KQcbInxmRAeXgVQIJymXOfRzAP0aekplNn+6ZDRq7XRVIIRaU+hbh8C3HcB0cZV8qPD41J6GPwxhsKmzubcUblarLeYUqpKl14kepicyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737718554; c=relaxed/simple;
	bh=3qOLrSa5KK88n4j54nZwu3UVICoq3VwNWGiWK7L8mic=;
	h=To:Subject:From:Message-Id:Date; b=npX8Ht7Xj53dHO6P/IZ6rY4NfGwMhnB+JmbcKaHgjGYny1G1I3bkUO9UV3Fy9AiZ22IpJQ0ZvskAv0hVlhrKyOHEW0hzWSKQ0XgXROa+E+qLk+ccN8W9DStzV87kjXDo86XljA2V2uUYTwBNFe5w59qJiiqBldBYGZZzGM/jo5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fifvt9h2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fifvt9h2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF52C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737718553;
	bh=3qOLrSa5KK88n4j54nZwu3UVICoq3VwNWGiWK7L8mic=;
	h=To:Subject:From:Date:From;
	b=Fifvt9h21NlZlyxivSyGG/RdI8LyTCIBuwVg1h4t/SkHHCUcwXb+Z214XrzObuMyD
	 TDhSmgC6PHaMo9Ur1tirWLKmH4VEocm64hwJfHKHsHmw0lPuQFF8teRjxbo2cqzamp
	 n8x7+d42KqzcZ5mwJ1ynlu3sPhbbwcZIn/KIJ76Ww+zzlIAALiGgiJAxQEoIn8BTAn
	 X4XyoPaA8lYSEykJvOUqjIlrL66Cwb+6CazJ5Gc8vTZDGLHr6ZMbVG6F/ew1esr9Om
	 jQsKBF3L2SwFFP4H9wVcmw24C2vKehJEstf85BIWskcNB/LuFk5eByPvDxpOEiItMd
	 Om9JEcyN4Gapg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A79CC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771855362.2233.8279083751819867602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c9a6f7ac37673c76278659ce7ef0363f93e633876b63935b9877761834b4b0
Date: Fri, 24 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737718553
