Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B842D0636
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755034193; cv=none; b=GCoeOpq1Xmxv1vZta6FjkqIQeL1k6A7dV974k3pUBLXLD5ntv74TkRl7UBAS2sW4wVpHMLEXZVD6M6JdKIjxcMnK6AKnSa0YZO+uTUt1nkqY/C7lc7A+P8TgtL0nfDmx6+h/hOcj4FJIEDOyuFJkcEAcOlrKo8HhFAWIK72qDew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755034193; c=relaxed/simple;
	bh=zmsltYE2uwOZURS7l4sJHX3JjF4Bgu7NGS1MSqwxP9s=;
	h=To:Subject:From:Message-Id:Date; b=QS4J8nmWgps/MfJO4a1xJiHWx6Fn+Po0ohy4kCDtU6bri/uVRVU7hnCgiv9V0dxLib3I9ZrWHMS0iQOBtSqLnQ7etmRD2AayYqWdUQh1mvYA5S0DastZFVho/mdKdPom6Bjh2ct7o+feOwNF7rzwRdsbDG7NoFJMXSx6KoU0ufk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFitk6So; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFitk6So"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A493AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755034193;
	bh=zmsltYE2uwOZURS7l4sJHX3JjF4Bgu7NGS1MSqwxP9s=;
	h=To:Subject:From:Date:From;
	b=YFitk6SowKqXx7DJTwjmGv4ckDY6ysCv2gqUSxQk0QEmDUaS0uWAaEiTav4X36f27
	 PqFCPn1IF0VUEsIsYvL+/qPaOiUIFBuQpBkoClo8m4ZWbq77eGvSaMksu9ouol9mEQ
	 +E/uGqdqa702/F8ncesmDZriIcKamQgxpucnK/OoUaey08X58eGk6DvsDUwjrMXyCf
	 DHcxdv06r/L/xIP9Ona/TibsxjhjWmnH3VKlKFZOGn587Vd9q5IG3Go7Sn2KNLTyHp
	 5IlNSVPJG975sMLCdkdPSDAKt01Da0g8tcXAv0VzGqQgrwaEjo9Y+iRp2q5ACKfjnb
	 dSn+2tEdnXh6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BFCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503419357.9956.5194103973058308016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b66bfb610176af3d11ef56b4a95d93c2181c3c1bb67d26b7b4dedf7a153347
Date: Tue, 12 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755034193
