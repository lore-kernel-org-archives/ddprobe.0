Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420D8282E1
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747022394; cv=none; b=DC+H4YZPipCU3JvOIiV2Z8QSQl5vhl3LxSvpPg13TL36IRmkkjQfdspdCrJE/vjF18NEqPaiE0T5FbQ6gml/UENm3a7xgmGbwDNgWoOLI5MWh9A9TuBoemEA9jWTQgCMoC/me6csf6akOO3fn5PhBMXFj57MLVjrrigOAy3ORs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747022394; c=relaxed/simple;
	bh=ntsdvKK3J/gtuPobpT3YmvxmNIpfdbcnXgSxJarr35M=;
	h=To:Subject:From:Message-Id:Date; b=bdYgCrrDcZJjFDBWUF3r3ci9/uhVQj3VwG7X0Lw/0TWee2r9OGBRB7Bu5B1krcmBPGDwcuGbQVzgew0jYqmUsMIGYbUiMh6xth4tKDXW5Jgotoe5BDmjkjZvU2fSMTz4qRKZ1rO+rcp+zo4phrHh8gftNJPZMY5AGD7bJu+nHuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNwEvYju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNwEvYju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECD0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747022393;
	bh=ntsdvKK3J/gtuPobpT3YmvxmNIpfdbcnXgSxJarr35M=;
	h=To:Subject:From:Date:From;
	b=oNwEvYjuvn0vH+qxtNV8CUO3+OGzeQcw+IvZmmitoGMzWKuq5ZO8DHUBfIa1XqYbi
	 ZNz6SPojyaI2FPlJzZ7HCZ2uaZNvYiKmJ8hyt2lbvseyXbhxtusqo4zEhuFflkCRvv
	 D7TnUi6bTLzznOQOicbWebSN5dQmvk3xEaqONrUdG12qrsGEUtk2VEeXZxNNVD9jcJ
	 863ThboScC90rAoHvtglzerM/HOvDiPo5NgpScgMJx5fe1yD/HNgpco5HA0QsfoAF9
	 6ouZfxDLXTN+KC0r98U/4+shs0vjn04Fx8kgbTVFdIduZ0lgEbRdd8UQFbWrf8hgmo
	 9bYuVD9bDLyJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61AC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702239357.2059.13077124365925215278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9593daa07ea4abd1130676c4fcdb47a9a7b590e2c6e2d94e280c62b1f81f2b5b
Date: Mon, 12 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747022393
