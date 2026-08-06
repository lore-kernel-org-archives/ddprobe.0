Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1C4385D9F
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786008634; cv=none; b=DY//Ht3GmAp/qFn6LyYV97DlrSvKhgYLjKUwKaDg+k4OKG0FfCWvJvuHUtZJgE7Z95HgI+/9YkN3oBRSk67UOpx1RO4Y9a4G2MzVzLuAszIhh/noiFIRwk8/8F0Ad5sQFe/rEBG89MHubK7v7ZI2+9Ei8LfBWyMTnAHK6IkO6HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786008634; c=relaxed/simple;
	bh=gw8iC+QoukkorBhDl3qG6G4BlKb+DbQkSne5xIuU/kg=;
	h=To:Subject:From:Message-Id:Date; b=Fr4RDivPXYp1Q4ABvZ6RkBbBX5QlbXIeX08aoNgls3v8XicP1fT13CIMZ04F5u2k34Wf4OSzYdE9n/Wmq3g3pzgI48e1zXRYL0+bKINwGr2sIozDOO5E45S2rjW1QrODAFF+4QyfQKtHSmgs22Ps+znOdi35mBFUcCxi0Tv5g9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHXfBjiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHXfBjiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F0DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786008633;
	bh=gw8iC+QoukkorBhDl3qG6G4BlKb+DbQkSne5xIuU/kg=;
	h=To:Subject:From:Date:From;
	b=DHXfBjiOxpYq5DYTVhCI869nmStfOlWLIdiPzkW+JK44FbP+Fff8S45T44rBsj2X2
	 DBrhU2bbxzoE+MEB+iB5bHwra9ENaSbQZaDD7fY3Ac8ggrb7nw2uhF2XWJwt/qz1R9
	 4172ApGqhtz4MAW1hhK4b3JXlmwri5QPV4VkyiJOXYr0Rk6nqF0foQrCabfVUmMKXV
	 lyVo/7ABQk/jhv8nP77voTO4ekYV7qv25uyKmJ8lCElK7PA56X2I4ILYeY6Svb5gWG
	 lXi0CibnO01Aq9n4Mmxi3GYnNUe2AUv2fCPpYXw6dMxtQARThEWbrzUyR4AehQ6sh9
	 ssrmXiYx3WKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F10C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600863371.2345.17765427764011349664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a40b82c901408e73fb03f5348835c9d72862e5b07b5cc877b375dba47b4808b
Date: Thu, 06 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786008633
