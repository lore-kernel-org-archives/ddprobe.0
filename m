Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A15921A0B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705506497; cv=none; b=mJUoyOMZg8t6CsmAbASOwYfH7Cv25Z1LT27MUmc/HuLsVRJY5i4fJG1899DqUBBo+det7yqKcAePme5wRCm3Kdea9Af1/An6gAGV7f4Inntpz3QtzuiKOrBGO0IivElQ5HeqIZs7Zq0luKDpX37UZ4GMScVEpZPFWoza0uJYw34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705506497; c=relaxed/simple;
	bh=7p8HLt4BRfaiIDEpi1mJg/pC6FdeKIVMm83LIGJVu04=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=t5ccOLOvDds/nI9eO2HuRQL8iZdnN/tv1LUKNKm9OVDUp02sQs0G2rywlYFCt3MUdsaauxb+m+gU2RuKCnM6RtvA286KqQGXhKL2twGrgUfF4qnACh7AfoPc+xyv0SgnrnhNZhPmjBtEDZZKYCNMEQRI8uvEnkUl0gjN+g86emI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9WZM0YD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9WZM0YD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A74FC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705506496;
	bh=7p8HLt4BRfaiIDEpi1mJg/pC6FdeKIVMm83LIGJVu04=;
	h=To:Subject:From:Date:From;
	b=n9WZM0YDx+4ziooTh5fwBJue8mqSo2/kvbuWZKziDIGikLBtli50vsT7EjIX/eRkr
	 Pn6ffbAd6TNu9RNjPa9VINsKqgHuAOYFVmqyinQ4c6KTN3smBu5eI4ZGHv1wX4Hxt2
	 0I/EaJQLs7yE32stisHkSxAK2XMmkGoUb0YNONMxg7564JCY6WbIK3R6ktRobfeEIb
	 aCkeB+gcS3O2QA54A4QAZAPtjWFcgaiDKb7cYinQ/LIQp+VwDlhP2SkIpMq1//5dT5
	 nfb1Q9gNOo56hICO8Aw3+knGvOz7LGwJD1EVCn72qfnb4P18o2YuRa4+D6qt566RRX
	 lwwYGM8Rnqj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F243C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550649637.3074.18116109747556310051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaef02343d62b894efbdc71c70a2deec70ede1cdf697cbaeb41632c71d83c54
Date: Wed, 17 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705506496
