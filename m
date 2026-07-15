Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3866737269C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784078314; cv=none; b=LIec2vTOrjpRBIJu+nS1odrQgsab0xEXJ5gG8S4Q302XVLP+pRDxZlXKCR54GR/B20PCVQPqgt8GeyohNubJ2QGvRge7ftgib1+T939wT5RHthG82KvZczmKBNvVzsshashzn6Ej+e6BlkcAJNVZQg/J+/vDqjdsrKW9cjzvznw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784078314; c=relaxed/simple;
	bh=i++oNL98mw9TOlp8oeYWCbps4Z57LDbs9aBOmgIlIeQ=;
	h=To:Subject:From:Message-Id:Date; b=lLpnIcm85SC+uod34DAEvfMK53nWcvdEwqDsbBTKq0ATmxsSNNtJI0q9eYx+nTEmqOAW9OAOIfN+ON/OvOguGDT81a4oXG7YLx3uUS1YZUnQAjvO223pqHflnXMHToDF2knfs01RaUFIidLNRRY12iJtarw2cB/URDc2+ec65+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DS0XRRxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DS0XRRxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE6DC2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784078313;
	bh=i++oNL98mw9TOlp8oeYWCbps4Z57LDbs9aBOmgIlIeQ=;
	h=To:Subject:From:Date:From;
	b=DS0XRRxE8On4xfmEorFQDG/GjPkdqeCRQCeXlhqT9XzxGbBmw3gbnoc5ARW9aSjrV
	 fda8r1A+/36lTR+V7G5UizrbH4Ms2okOGf5c9XGzj6jv0CQ1sHzN4xuf6Iq8vuVtY/
	 xOyKllycTTUzhGvdqs6yHMcWfitoDUuxBAKeeeAN4VSylWTOdHdq4DpucDP0HHo4s9
	 i2zwE/rqpDGHqHOQOJB3KUmyM0NNZTWb0GSm+7pmoCelLi6W6LSzH4dQZvD4xFN933
	 0iSBvakOtihUjNWzSBbUEkj4HQHAsNP597k1Piw7cZ6zEZisFLPfp3v4ivKnvIV1bK
	 hH+yv4IYQ9Dsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9572C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407831368.4268.11212799299382399917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece6020580829383997604a670e6a03d8a5c3df127765d149ec20e45e813551b
Date: Wed, 15 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784078313
