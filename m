Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1F01B0412
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744684195; cv=none; b=Sw64TFOaSAmC0tfhyPH9homwju8lYl3Y9YtLA1LvdL1jnrwvmmWzY7MyagOfnxGAuHXlw1PRItOnYqg+aZb+Z4iD+6qyYZIfgBxjZy09JWtq6611YvJc3VvaDbokdRC7uKEVU1aF+y0FGAMtBEvouGpzSgovPnf7xxMbK82YdWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744684195; c=relaxed/simple;
	bh=DwJhLzpF2Zw+rEQqMjVK3FJvTrkAT1hH/35Ag8so7IM=;
	h=To:Subject:From:Message-Id:Date; b=Kj0liIbJ0RrCgvzhs1wiz1czQoyaAyw6+Z8ro17CxD6NnoB+aMrWgDRf0QUENiFApPsPcNyAoVTc6IuWu1AlEPvxlKgNh06mvCYcqJI2y8ebPVknH+EAfHiEB9ra8D4BKDDuc32D0T985vpUnWn9cLIw8QWQfCdncvAdTYXnvhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfZxuJWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfZxuJWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB30C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744684193;
	bh=DwJhLzpF2Zw+rEQqMjVK3FJvTrkAT1hH/35Ag8so7IM=;
	h=To:Subject:From:Date:From;
	b=RfZxuJWnhAroyknihRTCMgyvW/mVvV8ti2ddZkPIkbOAI2ZDgfwcDVJNebnoJBnDK
	 kItMM33iWnWmTA/a9qlQeEHw2m+8qB1GH4WgnpEjLSda3y7pLnew9pXNb3obk6rRCy
	 cAyM0Qkm/kAK41FXODiq8BbYpRmWSJzqYJ9DMadzcLTqU+D5trL1AE37X6zqABNRFA
	 KblXLwqtj+Wg536nYCC5IMJy9ypkyA/HkEsCpDb80BWM4EWUJ0pH7E6C/TQVFe3w0h
	 lsrgA5KXjxYmguC4WwKyaUZij1HXBe7L1VpFFSeWunjWl9gIkqoRcQVv8b4pcFezgC
	 LUloqRV4HzBBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD730C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468419364.3930.12016800872105036742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa583f00b7efa6171eeb107fc5f6773a4eeaf49ebc9a76cba88f7c2a7aae79b4
Date: Tue, 15 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744684193
