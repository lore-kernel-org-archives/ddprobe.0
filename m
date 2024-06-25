Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D703155353
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719318803; cv=none; b=mB//7+EdML34IW6vgIlJGyf6RJ2ZaZm8UMgOCkJNVr6wswnP3hRgtKxrTGH+e6cY5vJuN/PiMc8oDdYO0S34T1LYDKrOlhyL3VrNmIW++k9yf+3Zs0GBgT4HJZU0sLtbOfDSyUcewrzIm0wHokXiga2yIMIEWG8S8Vgpgq2G30I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719318803; c=relaxed/simple;
	bh=QPafzugqLlofezTsINfalmXJ/sDpjFQ80mF9s4Dba0s=;
	h=To:Subject:From:Message-Id:Date; b=OqUNeQNxya17HGIqRnBcIC7B7TEbBZk0adKyxDK0kb96FGRO5y+EQhnCbqywLoeJiNliIBOPMrMYoJdOPzSSrHi184T+MgOSS7n8jUR/SJXlwoZiA5cweZz15UNApzpABxSBnwlvI0Z1c8lYu6WAk3pskM81TdrbQ02SnFipDv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZxtYy/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZxtYy/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3B1C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719318802;
	bh=QPafzugqLlofezTsINfalmXJ/sDpjFQ80mF9s4Dba0s=;
	h=To:Subject:From:Date:From;
	b=mZxtYy/6xUEA1Hz0t9TCR84G8ccjERoHS9ndq0lr00Hrw18DQZDfql6X6zASrgkiU
	 T0k5Qt2/R6yd3z8ocsrWvPmcLl3MHvlkLRMXsNtEs5NTC1PlvNnyBk0DeSPOmHNud1
	 4z7HHn5Jcnq/tPRR9cuTnkHAb1QJ2jGMjFEt/MUPgfinmg/y5XxWFbtT1Jpr5B/dZs
	 hu7OHPf8G/2fBoO8RygrnVgERQpdqBDWjI0RiqcRp7jNxLx7T8RlPVwC+8OkOFw1P3
	 IyDwk9IPVJoZCyy6q934KRri6Z4J9flyQpoNFFaBwQPgIE2TGCYfOvUiiNB3k1m8hR
	 EkpzXvxqKLcqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EFAC3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931880281.20508.2241957018701813911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14df2073c2c88645fb1c124f35d6bbfe743b11e947062086e3bb12595bd2d8ee
Date: Tue, 25 Jun 2024 12:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719318802
