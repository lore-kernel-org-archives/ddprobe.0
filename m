Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA9A12BF02
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732946154; cv=none; b=jdTyf8QDRZvBqXcwCRktkWuW56CTgNvHSrUxUVptch8c3FCJItjOncSpI+3wIeWF3DbonVcsdB2P6RE9m2AOt5Bi8E0DfCP/cXhVnkgUe1lE1/AOYw5TVzVB5DfPpBhecEBkPk/i73eapiTLy9Wnpk9f2HZmu4S+LijDixG/qY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732946154; c=relaxed/simple;
	bh=GRikw4EESIb2UwWQB86EWvSf3oloTE7PB5mI1tf0Z10=;
	h=To:Subject:From:Message-Id:Date; b=aEjqgnxOLYRFEKBQObwijVM6hqz7thYgCFVZuPM1LGzWk3/Xbia2OI47m/tGk+saY0fmQMbKEdoicBgWnel7sKeMShpW5TrNHZgX6xAxFC7S0fjjMhEyNcm5lgZXf4Xf0fWCebNjyQnmdqhm+3x9wHgdOyxx46iUIciKC4anJ3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hb37zg+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hb37zg+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7FAC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732946153;
	bh=GRikw4EESIb2UwWQB86EWvSf3oloTE7PB5mI1tf0Z10=;
	h=To:Subject:From:Date:From;
	b=Hb37zg+GiToiWeEBiBsAZAFDDbQMUapzdkX6Z3tedrHyF2QZlbXjnvKPSMzOybRsN
	 39UB9kPH4i1z5Nu3Olsq2nVSH1RzVelCcYeeglJ1/QME2NfkPSaF8Mb+MXcKb3obFD
	 NZ2go2PQj0zLbe2B6QNEy0HzlfhWE6BSt2HfLAbbtG1fXbUSi3Szrtcmgd2Kn8KGXD
	 Jn6i2d98WwdJTK4ZesRxy7rUdd53nCK2KrqnW8Hs8eCNEq2vli/ky13IykgDinTpSA
	 2h8XC6NwdrSNY/yyAVqYNAlBb5CkQBsPyRDM3vOcutpahgAnhYqJO5uBV4JI7RdecN
	 cO03tFW0I6rMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20D1D735F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294615365.10632.5449875156565644213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db224dea9202399ac34b2dde36ee08dfcee8b45f2efaba58e6b05c527e39ac38
Date: Sat, 30 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732946153
