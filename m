Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A641FD4
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764636774; cv=none; b=b6hzxgxpqH6Vc5clfhggaAMqHk9kn4jcq8xzUvea08rCiAMJX6caICcL5twt+zSP9+Vufiat5ndFm07F0ywziggLflVJLzDjJg1kkFkjRlLHndqUnUh5ZLj+doQ0W8h2sWaV0YTMZ2YbwN8PbkHUtqs1acQ4a7wXYc4VEZa/hBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764636774; c=relaxed/simple;
	bh=wH8sGCP/mHlx9d2o9VVP0Zi6nN08RfImwUUZ7aVXFxs=;
	h=To:Subject:From:Message-Id:Date; b=oaglJMgkFyz0UULlnPNm9QiLQk5T3+QJ6Qpt56R3oqUbnlacjesXe1UTGgfquf2j2f7owSL5QdH0XZjjAd34yb01guw4nZNwcNPglcUcSK/WdyQgtEpEtSTBtyX0cMxKnkjHSi9vIBkBC1qBcNfcVPJh0b35cCVOQDi6xNt52xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueNDhyGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueNDhyGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A496EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764636773;
	bh=wH8sGCP/mHlx9d2o9VVP0Zi6nN08RfImwUUZ7aVXFxs=;
	h=To:Subject:From:Date:From;
	b=ueNDhyGHHrCKgz844Oap0+Aq7o4Krx2oU7HFJ2FgiZQtvi8JdK+CQdG1D9cBSSEhS
	 jmxYEMe6j9SZFki2ItUX6E9RYUXbR6NQXrIceTBMQ5f/bqvpt5ajmXxpYfWqbjWqF3
	 AfAUan/JrbpkG4BkVXqFokShIPm2NsNQVvGz9OsttzIFqL0T8PSKQXSohnDq+syDCn
	 EwtjxEDz/Ssyf1pG8qpn7ZVqmqldQANX7wz6zHSg2zfRx38WCyU9j5sJpcNwBAzrPE
	 HFMjcaXjhz3XTdvvShYVlj+2udhefL/4F7MwKhQBYwxVv8dIkvIZavXdXbHHuT/ESV
	 KDOtJNEECmanA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1DD116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463677359.14673.15381209650690176328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e101a58ed5464b85fde37221686792cb53cef461877a2efb705c79947b08a4
Date: Tue, 02 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764636773
