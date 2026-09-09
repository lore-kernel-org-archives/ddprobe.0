Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A3656C62D
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788969034; cv=none; b=GprIHEEej5nJj5oyoMKxJQf6az7uHYtsh76AwB1k7/TH2jC4AoV9AdGWsRZxXvKQmUGBR7SvhdZSI41pXRTAFLZz0GnAZvtHI/a1O+zrgMSs3S4cE9Sr8gwAhk23mlhO29RkDrrzwlZ9f3AtnW/s+TH/fnuiLB5PJm9sBTk/PX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788969034; c=relaxed/simple;
	bh=mLrtGWPfSnpldkBJLf9wmrI6f58j1rhmmbMyUkpp4TY=;
	h=To:Subject:From:Message-Id:Date; b=uBM4a56WbgZu7Y32aOBRXuyr8MKTp24b6NdRQFmfwbkGcLtaH/8MCt2+fvXhd2FovM5tlznZ8gI4hHNNeWLIIiKKjXJs4avdI0epdFKlytZJmdbmxQYq47ZJz4S3wQ4YSOVfW0SSHN/NCnnyVKGE6+d0/wDX1eeOkO1qExdTzHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbXGiBBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbXGiBBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D635AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788969033;
	bh=mLrtGWPfSnpldkBJLf9wmrI6f58j1rhmmbMyUkpp4TY=;
	h=To:Subject:From:Date:From;
	b=EbXGiBBkLIA1DAbGgz+H4oAJGAdlJTiWZPgCwuShCrW67MTI4caiIx3yHxHB3x5ZK
	 Hhbu4RakhZqKuxp4xKbkq1sL17VB0rl9UfEW+suZoe3VRSvwFe+/9WmwAdOHaRuChZ
	 fz0aifEOxarB81SztAm+2xYHxN1nVeUFO6C7lCk/D1FCMNPH0ZvoEy0YaBXF4vIpPC
	 s+XJNetCbk+Nl+EeECQA2lEMvy1cqp6Qh7bzK8ClGSzGUkzO43BSTeEUIJK7OxAG0d
	 ofh5NneZTJwHXbQUotQ1a1nOtI/wXZ9VHn/HDoarP2KLAPSRc3TcY161gXfcP66REF
	 QfIEL22XaLLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ECAC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896903371.29239.5310696717121598391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeae24e513f4f89665444e21955ce73a6895e3700ef9d826030fae5d9e5c5a57
Date: Wed, 09 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788969033
