Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DD025569
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705530497; cv=none; b=A05+IkdAlrFfVH1eoxbUh3Ls01e4f/NPmAiEWVjQQ/cPhtCpFQv4covFvdGvMWemeaMg2PII2YaPYEFeSJpq6dAixEEwGeGSy0ZsJ0svrCE1wBcXNhxMlZthYuQd3iKvpB2qN6EIv9NibT8kZrFxd3W9SQdSJTR3NNPDJwX6Fn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705530497; c=relaxed/simple;
	bh=Xn/s88Ra0Xc+SR9XoKaZ19pw9LpgZHqGok7nu1xECro=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=gMzHl7RQ6w6uz3nQXFtv2e5May7J2hCj3aApSGlli1yQuFIQtCBhEwAE4b1lRGfjB/L2YotVVqrNEsZXonM23K4FDcWMw4hNnhCWnMEcpjDHjGQHUYTe+cYfJMAPEZ93CwyNT4D/k0Dg9Vp8EMPxTbhmeKbAYFdAUeMz7sqeXdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RODLnDwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RODLnDwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E727C43390
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705530496;
	bh=Xn/s88Ra0Xc+SR9XoKaZ19pw9LpgZHqGok7nu1xECro=;
	h=To:Subject:From:Date:From;
	b=RODLnDwmz/+iOqydR87ZxnmMbtCg4LH3Upz2RtspL9vC0isIKetl4wTJW90qdW4OL
	 8g0OOLrnfpEhimM+SRXda8Afg5vpPKtwmRbqHrbIHHFy4CbAUfppqNiE94kAKG+8rN
	 fRM6EA78Q5wnOO2meFytNaQj+61nPmkCP0Bwnt2qZshYlYU9Gla53e0cJUFdT7mYBs
	 ow1/AjXwVlQQDxEl3wX+VMI0CTLoPqdmGJ1uA5qEnayAns2WZwVYFEozShAYD3eMPo
	 BgnYHLBPm9Sldhj6euW0h5VHytHptFNIkN2HG1G8qNMwkZ8urLPGsvFRIlSnPGU3KH
	 Ssnm01CRXhMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C624C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553049637.28557.14261407596037826858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986f45c55f348c47df64075aaf76c8acd1bbb7c2426f0881b9fd6bc685526918
Date: Wed, 17 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705530496
