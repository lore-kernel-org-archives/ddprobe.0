Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2E5DDCD
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775411134; cv=none; b=sfkEc+4QAMn0iVK5YRtwVlHvBwlSj9VeclEuz3kqOq+XyapdejTFWnKua4vtMqbkVrneIR4+7QoC4vis2qQbako4pzJ/PiMbbrgTVNtUB2wN1XxDC4QGqGJ74yj5HSOebI1PXpJQjvGDSrU7n95MfDxEOa8dhP2HxSJRGK3e+NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775411134; c=relaxed/simple;
	bh=TVRaU+xyMJt5d8kLalBFfVy4j+xCrafbUWc1OHi9cTE=;
	h=To:Subject:From:Message-Id:Date; b=MJedTA/Zpl8YEXzBFNB+zdg5yWz89LXnUxDBPvpwq6MCQPdgKOySMU0UBKoj8e0qbJo+rqBfxXYMb43MwIExzyevj7c3YWbDTzpoQtBbObbi2hrhsKHMTdZOS8+SsPs2LRVppzC5HxH2amQOJgCuIzoUcAzGm16/GactLcanoCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzJ432uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzJ432uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4970C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775411133;
	bh=TVRaU+xyMJt5d8kLalBFfVy4j+xCrafbUWc1OHi9cTE=;
	h=To:Subject:From:Date:From;
	b=bzJ432uEckK/LdEstLLVDzMB2ydCzpb60SPlww716E42CcO1lCNv/ImepbhmbiFoY
	 3LYEg5r0g2TANd1vg8X47E5eZGUKleOtTjZamOPv5hdIv1do2fJ/lpE9Kawh4JcQuE
	 90Z0GlGaf+hwUg0FDhoOgUQ5JVfzD2cIRsDihYG9c4FhzbpzBWZT/UAFH1/ddYYoHp
	 il37bi85udBdfR6OmkTaEd0sSbJ6s3byH99JW+zIjC6wOQmMrZiYPZASLzNS3xZoR7
	 1sCs0yvE+/7/Db288lGSrnxtZ2BWVb3kqNhSiJpeFUh6FrmvjYIiCpF6C6m4gQKm4n
	 0y4T8lgpe26EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C4E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541113368.21494.14037740632740050901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a563def7c7327c7a9b46c9170e80310de038a4127191943ca5fcfeedeeb0fc23
Date: Sun, 05 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775411133
