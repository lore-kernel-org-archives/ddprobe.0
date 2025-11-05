Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F38257AC6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762310994; cv=none; b=KwVaGgFnyqIHbaWgJVpAit49BzwzNx8CGMwT11Aurc/jAO5q5OUT6dG37sL+NMktqU3A2v1DB/sAzxRXWL0JjV6xDpVVwRPYY1dDfGZq6vBP0h19jK6/uY5MsmguikKIkDdYJThAvzkSKpANlKHqttDvG1tRm3/UJdGSRD/uowk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762310994; c=relaxed/simple;
	bh=chV9A1pXlWoL7KnJqAIqI6AbBMcVnVYP1smR+eZkZQo=;
	h=To:Subject:From:Message-Id:Date; b=YvUJ13uBtcAfWZoegX2cKJRH0RtO10ElJbfxSHK5L/O22vhgNDPfXMjXX47qwoCgyvZsl2w78+WlJqQNcKUtRbfwnkAbdy3M/YdDeceRFiGBB0zls/ecWD2XOxE6qkFMl9oKLfKYXn/9t6nRgnJx+AAlCPvAXUJ8vJaWQsWB0os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzFa24P+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzFa24P+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0086C116D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762310993;
	bh=chV9A1pXlWoL7KnJqAIqI6AbBMcVnVYP1smR+eZkZQo=;
	h=To:Subject:From:Date:From;
	b=HzFa24P+nLNK4H7wjthBV3dosQyIKCEwjWPK/R83h9gO4kJqMveIeAWvcF8xDfIKx
	 RtacYCzWyVTOEJx7MH/bxaBtHwLfrbVFY7boRgjnp1+IK++SF2fqtfM55s3dwBGWFt
	 y206AoNC9509kTBpziIGjetgRMHsn1hExkMT5wkMGGOJSIdJdbPDf1hyUeguC/ksOV
	 dPxhjMSpQXUjlAdHjLKJP3dyrhyMp6W5JewV56YBnpH/g6yXmvdUX8Yo2BSkIJNUFM
	 OqfziXdW620akTpW3JJu6APVFikTLTk9Fez4NPpT0eiuPjshqW2Jje1Me0Q00tVIOT
	 iwR4qpURPaOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A99CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231099358.24331.13470390662993776960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd0c812ab72b0bb7f420359b480650fb43c50ce39dcc79b7f3fad89ba3ff567
Date: Wed, 05 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762310993
