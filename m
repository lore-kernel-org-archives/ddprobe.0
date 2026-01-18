Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBDF3BB57
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768718634; cv=none; b=qDJBrYCrKXyQuavnRKzJ3oEJs0fQoz+PQV+lDsAR8XKV+OZSkncMtZC16vLs2HlG7a7BDRzAppjFklFmbierC9zsAsOS2eaR8X5G8x3m4Yg1WH/xGuNNso4MN+IfAQ6D9UCtIJwFIHZ/7+ptkk3u7Cmxsho/TqeN2sQKuRjwPNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768718634; c=relaxed/simple;
	bh=Pp/ihzgpLWumKiqfSeUDpL8aLnexbtdbSv7Tgh1etRU=;
	h=To:Subject:From:Message-Id:Date; b=NKlgPC3p9Bg/vPoTBeUA6+Dn/YaltzG9Fj08IW558KNEzoIftI/FMIf+Kf0YBk5Kj011XwPoP6unvut/86qmXpVnmKbooa2Aosh6fLGnVxacGuoTGle4skUTlCzUTC2brXcVY98pS0MdsjXi7in26s+kMBBaKK4iR54W1a297KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQRTbBUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQRTbBUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ABCC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768718633;
	bh=Pp/ihzgpLWumKiqfSeUDpL8aLnexbtdbSv7Tgh1etRU=;
	h=To:Subject:From:Date:From;
	b=UQRTbBUNHAe5wNKX1sq3M5GtY2KUdbtPH23HioWNxSNHTdGEc1IQJqjKqT7ho48xl
	 yG+xR/mqyuL2OcgXUck6wLkHKV0wWcm8jfiYRL5am6dsQrgVv5LklJ4qpqbQDjM0pI
	 ThmYcRoK0BT+pFXNSQ/nnxz5cSaVgrh9q6s/z9701LaQFzRr1jCH0GGyqXeCgCmWtO
	 lfiLApmlNky7y0DevKDwAdfvn9dbhqeGb54s9sAwemRiixrv31c9peyxfndymBxxbc
	 O4kTCCsNuk8u1TJRfDah579yBwscJGhXDZ+FV94g/7qKYIVdOXfewoB8aetYJ8zuJL
	 ZAeq5W/e4glTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588FD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871863357.20598.767385001755983759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b6e7d6af770bd17d97c328415ea06366f3062a16dbe1c585b6f247bc7c1a7e
Date: Sun, 18 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768718633
