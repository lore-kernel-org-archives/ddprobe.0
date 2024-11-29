Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF71184F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732862754; cv=none; b=D5+qSoWNiR4D/VxuyoNKjFRCCSn2qUrdaNI6VvFApc6qD0GoGHP/Eh9faAB4iXT0QwzWmqIOlCwEG8pAVUTueWhEQW4CkjvnaUsWJs28TYBOJtEgTHzUp9hW191Ceqx2vof4EaeTm90MGysB9HUFU1NiwV4GYbBmwnSHueAR+3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732862754; c=relaxed/simple;
	bh=ek1T5CwWfY1zyugw0rifxhZw+OkbnFoSt0gaJtqwJyQ=;
	h=To:Subject:From:Message-Id:Date; b=DPC1lRhkqBiMy5FPjpQeaa7xS0kKGw/F6XlgYFxTUwxzSHa5N6Wa0v+Pw6N71+vcMWU8A8+Q6xwiL8ip62lPbVvo7oua8M/9nma+Ch2MNIdnA6MQf6KKv8kOZoA2A5OkowJqiCoNOir+Q7VOG1IfMhQTFYmJFPZmzlEJjZGn9P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5D2IE2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5D2IE2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB28EC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732862753;
	bh=ek1T5CwWfY1zyugw0rifxhZw+OkbnFoSt0gaJtqwJyQ=;
	h=To:Subject:From:Date:From;
	b=A5D2IE2KCWXgzV588vPOVmtg6smrQhbvpWvTWiWTKzhPQ77f/htAbICcWfBieFdWi
	 rBIE++5tgp7zggQJVsA7Pk78JFsp24pEVrnW2TxCq+2GQv9j0v7GBnF7FSYqTG8QaB
	 PUt3fVUjJ2agL1VAobDx3NeijoHfAEawyg5/MXYLq85oCPPPJR5pRa8RdtnR9N0K8x
	 aQJ6lPsuMltYSErlqwcDhMbH9gPCIom3K/wj7zVH6r94ae3a9ilHVxXHVyP4S32SXm
	 OWGbBan32eBB90J/mLX5xus/uBw4DOPeCv++4sY1Lkvfa1hhtDH10/DJmaAbCpBiwf
	 p1xfmCmKNfMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F4D66BAF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286275359.15408.6851312511481812666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4a72ee4f711f3da677d12922642941a8a50f9c294f76bf87e6edee0c4be648
Date: Fri, 29 Nov 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732862753
