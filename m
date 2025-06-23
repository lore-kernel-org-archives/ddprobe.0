Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0F0D299
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750640393; cv=none; b=C+xuR6J3C1yEc5M4ch7pb65U1tGBWsHs2RZ58faByyVW2Vh0+iL2UlFNAJgAabKIcpzHvAANAxNl9hjicMS5y+39P6ixlBlvcXIt6mGmYExPLwXn31bPJ6aMbwmAQE3lTn2SiJX+XMfHLhQIRahfv7BPjpMA3w1vzMUU1wbdkfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750640393; c=relaxed/simple;
	bh=xH/VVl51AvmHIlO/j7j44+jJrm81xpxoYnZJcaIjrZk=;
	h=To:Subject:From:Message-Id:Date; b=k9KdvgpRutMBpN68uxW9M+MaclDE1/o0hbn2QW/dkfuRx+A6KYOq0A0PRz1d6sW3bpTWszPI1I3wKzeQ8DW+otUgOqkTLPakn/GpPDDwNAD56JA6MvWlW/f4qR2F5z26E7qqjsNQSMHJ/OT/C5hE0Q6fH1nNP+jPTfHZT1huONc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WS/K1ORz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WS/K1ORz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A316DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750640393;
	bh=xH/VVl51AvmHIlO/j7j44+jJrm81xpxoYnZJcaIjrZk=;
	h=To:Subject:From:Date:From;
	b=WS/K1ORzq/0QLqCFbMbVvc31d9gV+/nrWtfJHg0rv73Lvuyk/ItIXsZ4SIfkdmjYS
	 Fz6qXs7+UQmgdM4i2pcz7vK4xEofC0bhoO7iWhn1tBcknKukucQ46hhtno6HIYhL9z
	 wLPOJlij8lvYTr/LXImgZvixmZIhG0fRRXJpJyHOMcZ0e0oZPcletuZl8pygAyvQDD
	 iXOVYURJhGyJRUW77BgMWpAXlJNVPsXdyWI7js8MdMiTVAZMQ0mvp/cNU/agXV7H9Y
	 xFJtNlxQSSBlHleE0hiyzA34FgcHJX1FMqzbKQhIlvO6llY8q2u+ACbiZFl5odun7Z
	 v3fZLHV74pYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92313C7115A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064039358.18050.18427904775681665812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f63a41d5e1ad7692eceb94b4d087800986170e93b164d0b15bbedd4c887aa4b
Date: Mon, 23 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750640393
