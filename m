Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B55619E992
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771505094; cv=none; b=fIUXA5anVuThEyz40nwnnIVJkqHOraQbzev+7S1svT6CHcaNtoRn0tVlrq09JJEiu4ZfvjxJA2yZZU9VIv2kSW8M1thCurOxraURMGxIyIwny9UFPORg3Lgl/v8yLNpQe4077fOkFwwlEVz8IZsbxC/5giOex0wGrX0tR9fn/CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771505094; c=relaxed/simple;
	bh=sABRZKbqHpY10gc0coFH2lFAf09vcHBHdyWtJGSlY6I=;
	h=To:Subject:From:Message-Id:Date; b=K8ePS6QRepjGg/BwllzG6+zacg6HgdEvd4HXGBdx3BXuF9HXXSbAj2AnaUly+RnGBgXcqHANKTC47sBSCkRkaTDp0+huhK4pdayXd5hpGqhlcxCjOxHqgYp31zQFJQtCzPsyfXTeKEBHVIVsWUg1J9F5t2LGKdD9xxFkuJA5FVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwMt07PY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwMt07PY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3502C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771505093;
	bh=sABRZKbqHpY10gc0coFH2lFAf09vcHBHdyWtJGSlY6I=;
	h=To:Subject:From:Date:From;
	b=cwMt07PYcNEKGCg6FAsuhkUuF29iBgsDQep5VIDaw1LTvEeJZBMoD16oJKC8Jmpl9
	 X357z/gPvAQpiWTCndcUkTzWvTIdlN0absH0bBjN1oP2uQfebk7QPzF/vQpo2LPjGF
	 yan9usGnR/mx94+Idf6ZCJXhxoNi3YgD7tGgh4ev2QFBwov6jVcqL8S27fM9iiipQf
	 2upR0BmJ56FIBP2mKo22KjnHL1+aZuylMiZHl5NVO4CVdEiiRpMo577dO0/r3qlylD
	 HMU4reHXrwJHOJ9J2KqAvYh2hrhGA6h+0yDdm0YXYeLGtuyFI5olfb8lpCycMlpMOW
	 +wdbd6Op1qA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F08E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150509358.11825.6070065308356227100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa957847c395a0ce681382d6959a3518ecdc379cf3d6afb61f5f7b2b0f17cb2
Date: Thu, 19 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771505093
