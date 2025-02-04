Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EC7370
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738627554; cv=none; b=Vu6aYjMARzuXduaSy/9MQIb0P+2BStRMKGFXtC0vYlgDaz5BR+12X0qgcANcsr9iK30zi0G4VvV9OfATMcCm11qAW7UZqEJsLu+64hERO8YGjFX8LRcL93vbRxsrNydWRiW6XGbDdo9hLGtV59JF54MRIqRsUxnTquME8EeYb6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738627554; c=relaxed/simple;
	bh=yx2KC4uw6pqXdYINfR1O80jmEOnPTRqDaivq3YGT/AI=;
	h=To:Subject:From:Message-Id:Date; b=l9zrvjilieQuGz7VNcpAOGTZ3VJEfjcU6gXK2lX1CIgNAL7vVs8Gjj/t3RGg87xRnr933o4K72kLoK/cK6cJECSDZRyBn3Jorr+z0wRcOpY0RBXmGA9VLYgAulBOxON1TwMcVr1KGee+JFCI4E+y5PXUsJRhqHVzfsbM2wkqE+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq45JUgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq45JUgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B605BC4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738627553;
	bh=yx2KC4uw6pqXdYINfR1O80jmEOnPTRqDaivq3YGT/AI=;
	h=To:Subject:From:Date:From;
	b=mq45JUgi2A5hjz90rYVAT3TdkxVl/NrxOFXhKEbo+TTGgfAvYMmAAO9PJXSCpUtww
	 7gCgvnFoKbu0O1+mkYlOEW86nwjXbk57LQn6K3UgbYKDu/IfNyePQ1Y0BA6ZYIw92C
	 YTHaA/HgNTj4VqRt6d6qG+bFByWeLMIYJ4yqwAo1PxjFYyDA6jqDDvmAtE6g4kg2kT
	 0F+rpe52OBQMMwPjs/DI9wMaWm9QjmQp9JVDfER0HLzv7uOUXpHtzczCyhnMJOjfCM
	 0w4bosBHCTJ8tcvO1NqGko2MiXF35zPGsPdrz0Hv2UWz0T6WgrlMu7odiDGdCPsslQ
	 J4DMhDWrUhL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D007C02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862755361.7659.6565308634056809604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f5c540273167d57460ef75c4ccee02a686efa9bffb005a221bd9b061379057
Date: Tue, 04 Feb 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738627553
