Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6465634BA33
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758249595; cv=none; b=SPY543PeMeu+z8ecE3HeGsBqCn5iZ1HtPW6ZJnQecahl38xKasCcz0uMOzX2bi5sw5R39K5d4MTnjtoUijs23jP1A4G3zHdojyjp+d/qcUlBBBMBEUqbXTkNW+zy25cd0486ZqNGAHrkluu+6SK31CJJSp/LWBtvU0fo6yTHOOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758249595; c=relaxed/simple;
	bh=Dl9/SqnWYkM7n/zGOB17lsT0SJQ2uv6rxm2NZq3j0Mg=;
	h=To:Subject:From:Message-Id:Date; b=fnJLSIZz0NCwOh+USeLlpSd2aw0ygoHafGz3WbVB5IAuud7beAPn+GQtmO1KXKJG19kGwMsp1WE4cQbobqweO5UqVLusnwrhiSRyC5XFI9pzSez9qW4M0G4rJWI0YNLHP73fGnypKHR7Fk7n9q7DMvWJbhKnF68I9pDtev7fEJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cA4VlWwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cA4VlWwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6023C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758249593;
	bh=Dl9/SqnWYkM7n/zGOB17lsT0SJQ2uv6rxm2NZq3j0Mg=;
	h=To:Subject:From:Date:From;
	b=cA4VlWwJZwXsX/yVrBCqJwC5KWHsE0G86kqPFzmMtCNIHKmtPBaxZQcevXILE2/fw
	 eDQd3KVuyFpRHRnIUrbPVjn0l/qarV3A0MARMH3/eDsfLVyNWAM+ZA09vzGo9joZXu
	 /CRXzam2sci6jUpOACeoM8xsNvK66YnQIGNw4frpmSjK1uGfiLezzvAuSvhZh11Z9c
	 mrV68CQeAFHhCT1ANOrRC2zop4rObZx8+sR9ctSbdTobpqQpPtixTCm8+UPYwItIzr
	 1tWXoK5DIiBDkSBZyBv7SX9E97OnYb0LV6fFCxykWLIAOzf9o6UQ0/PU+uO4ugHk02
	 3GShBdEhjqd8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C87CAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824959357.20690.12893243587078003971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95eb2755ad8dd1066062fd4ef981643ca4f6c4ec97ebe970521ce56cd805793
Date: Fri, 19 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758249593
