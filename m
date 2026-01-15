Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A3E17C220
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768445633; cv=none; b=vBxCEw00ZRH4zAmbeCCpC5/3qK5taHIl8ms2In42egYtjRCU73iyS3QEeQuY1KBtGNvvz4jDFJmlbhgBe8hcAsotTIZcBDuFxfuFKrzTyghoiPwcdjiHbxPaQuF+D04iKH7ebVNcOzKyBgMDbWZ78j8ThkMRJmg9DZVQYdM+75w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768445633; c=relaxed/simple;
	bh=CA/aBU9vXfGcBXKD/sMXYaO2fcMlb6tuse5ZxizOpG0=;
	h=To:Subject:From:Message-Id:Date; b=ASkmL8j4aqmUwYAk6Z5OkFvv3+ftQ4J85z7mOWBJ/s5Vve1ZHP8UgL67WOI2RDzUzv65ETPSvAApdz4CryeorSuapeIiO/VQdZbjWKVIzNWFWCcZtfrXOGcC/VOUH4Yo0DsP86VH14ATvlEtVG3Z2BMvcnBOmGgcGJXbvhZ+F8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNWuF30f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNWuF30f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0279C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768445633;
	bh=CA/aBU9vXfGcBXKD/sMXYaO2fcMlb6tuse5ZxizOpG0=;
	h=To:Subject:From:Date:From;
	b=fNWuF30fGpEWUqOdow1gV5yZM8AcPhWNx/E213iV3itYbTF//oAQe1CEGb943rEv2
	 4hXOYiY7MZst8I2pbR4McYn7Aty3ytwO5GWMhW/AA3QoeG+lmocN211L1yTKT9/VRS
	 akD219PWbf+MZWNoodGzIBcI/226aZZfkhmO/6sWfNoZG+G6sseMsZd/kSkPIGyOCz
	 5papgdkkv5192g8RdQWkA8YpvgqNFSEbA62IESVxCG6RmRUwWBWZAV1p4ASU7aGphG
	 4VT8gdKcSAUwwrmzh5BlEbRJMjSapoIzRUW07CBnXYjWAdPC3QRJU5l3xIY7DCzzIU
	 nuIWmPj03VqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47FD3CCA5
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844563357.9377.14871022675281460686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1dddded9fa05df9cf0b306eb698517b77c27d33f6dc0403505902601a486ea
Date: Thu, 15 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768445633
