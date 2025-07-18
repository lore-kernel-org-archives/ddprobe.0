Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E37F17578
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752818995; cv=none; b=DdOoQ0lF+HAOcG7t1wisCTNaD6RHH7hT67YlObAvijb2izvxw65N+heY21rYbCT0j290apPQECsPBa2z0U9G0bNMled704dETTH5+k2Y8X7qL5JqrfcayEx+fp87yX2uO0ce0j7XRJzOxcGyI5zD9CAcJJeoVvDhsy7+7ew0mPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752818995; c=relaxed/simple;
	bh=p30hpNA51XOfuvmP+TjmJ2cUBIdPmOr598qojDmQLvs=;
	h=To:Subject:From:Message-Id:Date; b=uA22R59WPt6o1OdxuCyYmiXDBHQ+mJe8QNlrvqcH8MH//X52rM38xlbZxGkvNuDG6I3sgRCPlUTpSk6n+CteBxORbqFWH958OS3qO/dERuFeYU1nJdZHmwqU0MmLdt6USMAfqTcYjXmDueFfwWy6ctHF9l8+lWysQpi+Q/yhghs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4SCuQzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4SCuQzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4CDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752818993;
	bh=p30hpNA51XOfuvmP+TjmJ2cUBIdPmOr598qojDmQLvs=;
	h=To:Subject:From:Date:From;
	b=g4SCuQzOJOKfeRXIJ3x96d+2Ag2Nb5BpMgnJmvg9yDrxE+N/8kALeqU5M9jV0F2Px
	 ZjpEFQH0SqgKJnmLMcTIOaa5u6z0G8HYyRxPzUOJy68jS6AD54iVyTluTfvUy3SfCZ
	 K6CZkbNeoeq1jId/zOZaz1XcgUnkstTh1CEqS4HqC8f+V0yMenUZzQ4gosDcZemXQK
	 OM8tBt6vcUsGEkS+7W2nwshGNtaq3XGTBGp9+5ru/+B/9hxootugnsxQIN67Nk8s7k
	 FWPCdrfAM33L9FMtaLf6ty2bOUf4XaZsi8nakGAK7wJkyaWRxJ40/M5nwh3d28fCWg
	 vZEpP9fr6RGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58BC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281899357.31946.8962589747809573059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907e1aefb7baedd253c2d222441d999f36bc224cffc0088ec4de1e46d4f10d9e
Date: Fri, 18 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752818993
