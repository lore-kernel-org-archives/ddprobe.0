Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1B821FF21
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768157033; cv=none; b=PcTkE/5QS7nibGeJ3gcFNg8RjMewiFFW2r/sjMSmzoYZUNPCfVGc+QcnfkqY1ocx++uYs4ff9S2mWzGFZYCwTaCoFS9MC/uVeSYHhtUEpaYDRjnp1s5ziRWDzR0qtet6EdCOzHlxbVjYfJbxAr8h777HtOd7wVEC/FNSmttgqHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768157033; c=relaxed/simple;
	bh=7gWJaZiQZgcGNtcQqrbY6S3itcAGbcH0hG2Q2WGyg30=;
	h=To:Subject:From:Message-Id:Date; b=j06GGYuQWIInpv0uosAR1W6zT0+nagI2mTR5uwy8gCWghcYJ3Vctmn3tZnloqxpgEvq1Nn0sq1tmzpWQUKmSsA+vJNRQ3IEINTIavZkTsHpLgy2mRlEkiK9WgD5NZ+31UCReb30BEkG7A5CtzjStLXnaeG8s7pjIMVJbBun+Q9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBqekcao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBqekcao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF2AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768157033;
	bh=7gWJaZiQZgcGNtcQqrbY6S3itcAGbcH0hG2Q2WGyg30=;
	h=To:Subject:From:Date:From;
	b=BBqekcaobnCWy+KGiFc/c/7A+IYQAy+PQACvNTiLJTED23zDrHUvCzgmcqZdsOT22
	 2qdQxfAWdLsvUItSamOhYYN9kCreODKuKRMP44MPc8zu9Qicv1YI+oW49VGvxroqRN
	 gyMIwZGFCFl64ocXsKh+SFDl5ykq6nlO40LyVy0KiqoIEtzYRGWQRWHWeoAic4Wxqt
	 v238xlvUh5aZme3F5a6JQis8C1xLck5WkJyMFWfDu5kAvbRK4Yxq7AcKRcuXKAwDvW
	 o5W8646aF121h4IHJj6PovuzGpFWCvJOXoeL2W2Z5sITSHpKW73GcU4O3zpcPU6Jdm
	 YZOSVGITDccpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9496FD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815703358.11280.16780695148880257817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22def1a7e404881841ef722594bea7a43242278017517de0754b0eaf07d4f953
Date: Sun, 11 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768157033
