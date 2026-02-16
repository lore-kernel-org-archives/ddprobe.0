Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1983F28FA91
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771266294; cv=none; b=nUhdbiZxuAGKTTmqBBtQtuAhTu4fHhgC1zTnDU5P0/a8yFmAJoJvODFFtdkI8CJcF5ew1lyIPv3bZOo6IhDq1h8o47aAQMiQAFP5gxa/uynKdvxAecObyoEu/8XxDpP88/MXinMXZT3h3afL25hGZoet6N+jmWGPfNiDvp4EC3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771266294; c=relaxed/simple;
	bh=s/JL74GwTouvupxFKFa7TYrbSQzIFVeljMdiEkBQubA=;
	h=To:Subject:From:Message-Id:Date; b=Yv4sm43VRTcmCyrzBkADIjk9pDfYLuzIz20YVlWLaVfcwUO0kWDUt4OPBMpahv+XXuL2d8dwy4zb5epxlcdM+L2zKJyyrbz7z9sNmPXe04Iucp4rNZ0OYp8B/bAJPYyWjY9E5AqrlgObrDto5yPGKn1yBN/te0tJgT+z8P5/OYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceo4AJcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceo4AJcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C1C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771266293;
	bh=s/JL74GwTouvupxFKFa7TYrbSQzIFVeljMdiEkBQubA=;
	h=To:Subject:From:Date:From;
	b=ceo4AJcQXVIODZckbVrsgtPJdTTijmRv9Ihwx13sgu9Kzi0mBp1VJIOAz62Z2Ssfe
	 1Ue5EvLMFHWcqgek1y/eNtpIG9B6VF/QPQH72k789J7wyct4MQpTf2XJrT2+d2N8iz
	 wMbH1pIOQ90a/1mwnbdlix7wL+mBpOTW1SJjflYVVYXV4VOJ2UFsKGUmrl0tlTCkN/
	 u6vwukq+E3Vgoh7bQxO1vqB3OiUQv4NX2foJ5+KqE/4m6qMkkoB7yCpszl02uey5bO
	 dLO7Q6tgGARh87H4aQTw8QaqKRXLPkq7/icsOXMElZy78SVPOn5duLeHRfwKVKSkd/
	 iT0ZTpY1PDc7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C03E83822
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126629358.27491.870905851502052358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f899316e275c6f757b83b19522df6d6b1d6110d926946e5d50e5be0f09573d3
Date: Mon, 16 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771266293
