Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C33187346
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777205854; cv=none; b=p6ZsYQ4sTJiTNQbYTEO93Jbi2vf+XV8ILXG4a+5vmvlccYR6R2Fb53nJOfyTZAp51kK3rbkiIeJiALZ0jndePNjlPrWN+3Hq1j2WoBqosBAJJLtFuwJaWEp21uzdomOjjxaM4FJjnOkhf8Pdk9z1Zyk/WWKnBpC3MHyMja30vGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777205854; c=relaxed/simple;
	bh=H5y4SfNz0yPzoFiG7/89J/C7k8+Tyl3TN5WHAA26eC8=;
	h=To:Subject:From:Message-Id:Date; b=TdKVK9DJ5MMnzW1O/5gnsVxA4DWLWxONREOFj09sXPjrpegLoVvlpqBcVcMq28KX2+SjzVg3C0PVzb2VuPcqsGhSNrC/luARTf0AWUqMSvqPDt3wWwVViW2ckRdCTjDxXeIHUSHYNW4zEZuxf9dPXmrVEaAy/pXryOZOoc6UoWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcg6Zokw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcg6Zokw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD1BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777205853;
	bh=H5y4SfNz0yPzoFiG7/89J/C7k8+Tyl3TN5WHAA26eC8=;
	h=To:Subject:From:Date:From;
	b=Kcg6Zokwn/MzK1B9i+0d0nTS/IuRWtmxsl10Mo6ddzycBHP1KxjV2StNjq5deRzGd
	 DbJdU2IK1djRgI/XPS1Q75F7cIZ1DO/POVXXWrgqH38cCQn/F8dqYNPyGBTw1zVVZk
	 RZd5AZBq8phoB1+Na5J+lNZwE0O6p5Dm9R19OTujOntIJsEb/iyBtT5W2jOx9jhSu4
	 0fsgC8wCQFkiJTDFlxWHl2FJiuUhHyITkIkMxybAJOcFO86+/lKmoz8BpUFoBd94Y0
	 fGzOOC4wABl9g8xDepQAfrn9QXsjbnhh+2YfjMcTShdba1tClN44/NvyD/IJbeNdzV
	 /P4vqnO3NJStw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E9FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720585369.26896.12802476045685777153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11acb89e9f348593bf8619783a33ab3fe1317685d7e1f37b22b7453f1d1f9d2e
Date: Sun, 26 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777205853
