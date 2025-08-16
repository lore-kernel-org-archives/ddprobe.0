Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1261D7E31
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755360594; cv=none; b=XMeEnZtsrdUDYK2QeHHE15WPoMyQRg3Pi3OiMCczQBuS7ud9w8pJEIRJYCv5NCgE0KvVKZbGiKFgF3PDvYYNg4yKx9roqLHgljuoFVXYVEM5mD5iFsfQ9MdNcvpSdcYsb6yCir0GmA85axRDHuDh8COjgSeUWf81/+AVJtcmqkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755360594; c=relaxed/simple;
	bh=2H6YAgvpRBBuUPWV6pizExKSoA7Sru4XKC9x8zVs2QA=;
	h=To:Subject:From:Message-Id:Date; b=u+fR8MtnA1S5t/2UO6tFYGG5SLvzrN1INrtXZ3yqq133GtaRNEVUMjlvkkmnSU+rAXQf9OARcY43Bp52Tcu6zx4+LZY9nBxM4HtoA1trSPoftDJVb0eVJWw9PkKwlUElsWtyVvHpYAW7CqfOrCVyljEYjkJ+BuDSFrk1MsMrUQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2YYhK0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2YYhK0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18EEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755360593;
	bh=2H6YAgvpRBBuUPWV6pizExKSoA7Sru4XKC9x8zVs2QA=;
	h=To:Subject:From:Date:From;
	b=B2YYhK0vwJtW9YQGnqKwDzCvs9dpe6MPDrcqIZNus4L+IYcfoT+5CrPt689edBJsv
	 PgNjlzboPYVpr25wvWLZgh/aze4zcUJRBAZuGV5xJY60HmVKck1w3mC7tcvqsWdYqy
	 HjesTOlOoQAmnD5liKYyUMtTwNLr+WJ28uAJ1iR0bos97fmp+2trFytSnBbtkx8Gvd
	 kh/e9cByXafQ2bczPQutZnXTSH6MLoowi0WDVX7WaHHR1mVeRx4vd2EUeIpvgpI0sH
	 21BjQhtmAlFh88pzGTClVIMY7v0Gb5vDxu/YoUHW4AtjyEA6f29OwDJQ5hxUaT8vUB
	 0TZCt0kdRQ6KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DECA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536059358.15806.258407805082876131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730cd801a83564c90a4be9fd8d7004a16dd1f968e480f83abd576edae8b2b6b2
Date: Sat, 16 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755360593
