Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2020674055
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722249354; cv=none; b=RyPmoP87WjLTYu4679XZFHiG7VcoD2zS8O8tPBGBULkvFdazLdv/uYCy7hNsupvGdYvquVGkymstUcrsAk6rxo+HER8mV/9J2vI//FZNJ2tXcrcxmIrjlpZ2twdXmb7GrFlxCGn8GB/7WzVVdJrLeMBonrj3tWM5YC6OmQ+AJF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722249354; c=relaxed/simple;
	bh=BKguq206MDIRypUjuj9NmRklqUEASaghlfBz0gst9LI=;
	h=To:Subject:From:Message-Id:Date; b=j3DXv96x1deceJKBOwdJD5Lz/UWV8u4PctVs8HmD2ROv11iWXZG7WDglHhBoOUsVpxs4m5GsJ764PKL9qk5VY7corMGEAaUnqUDVnHgvGRW4Lu4/E3KttDNHss9TLg724D+y9uU4BNzS0pgvekxEz2cozNeYScmSOuJz96FQlkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKsfIjh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKsfIjh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB7AC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722249353;
	bh=BKguq206MDIRypUjuj9NmRklqUEASaghlfBz0gst9LI=;
	h=To:Subject:From:Date:From;
	b=HKsfIjh59l6lZxtRF8QHI9KV6vzdHIiNykwqy1nboRQlHKJsMLAcOP6eJuLywXm7x
	 tEwNPCUXw5YynLvPd608bmeZJloWFM3KUNR0UP8s0K3LQ/grul7FE5PmJwRKjX2IZG
	 jdATwC5NHrVxt4CQkaCvbw6s6z+4Z7Dv+Dq1mc581DAe+/CnMT6MSvwL2nZTw1ZJw1
	 3gVWk9NQoFlhcZ/sVWaKJelBEWP2B+IMZZyCMmVZ0477B9TZtK7BDceqlc/JAiFJZ8
	 p6rV1RxpDi9hp8dEr2MaqbL7Sn9ZMEux8ME2M5bb9wcJalYz8SOhasF5NVVz1fhciy
	 8iISHvkg8otFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90470C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172224935358.28868.4583384089747792011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd4c852521711b3744af6b71b440afc22231fc887d187c3721bddac61151b19
Date: Mon, 29 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722249353
