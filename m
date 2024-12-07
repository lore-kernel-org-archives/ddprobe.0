Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E788E17C7C
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733553954; cv=none; b=UeZhbrOg4/6veHAa6nvpETnnnyT/1FuW3sfsGQm4JtbLKGY8iOiWp4/fyi3ZWg9g4PSUX/9C5T+J26fBiU7cdCqb9xORC4TBrsoTWdotGGKRjx0HpTJ20HK13YI8JQzuPXsZFfpXTEBbmsjuu/WP/J2dGZSu3/z3Jpv4kgtAPwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733553954; c=relaxed/simple;
	bh=AjavRa8CNs5mqkBvczjGc1GwH5A77BFWKAdXQOaK+OA=;
	h=To:Subject:From:Message-Id:Date; b=Z7usJUa7IbkQVVEk/nNkNb892HbjDpRL2UetMXJ0ssZhFecn21iXhluZL1ufHRc3x+1D2++Eceo0lT+awgbLQXxH9D/agKmVRwbj4Kdi6My6fME+oWPeBdCAwXkjgsfISs8hMwn75rW57Rsp7Y0XeAh/oz5Gum9N/g11bzQ1gXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjJsJDTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjJsJDTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6521C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733553953;
	bh=AjavRa8CNs5mqkBvczjGc1GwH5A77BFWKAdXQOaK+OA=;
	h=To:Subject:From:Date:From;
	b=CjJsJDTwuF1kOg4qfi7SvDhXCwBzEfsMSF1a3YzFWw2o1gAa3mL/Z0CFNGINyq+0Q
	 sVwL+rtWu48JMlyo36l9Fj4LREilDyoJaXzdnPTX/CeR5W375zpBDT5cvHJJXkek4B
	 pSQQnFpXujldkO3161Px2kPg1uq0EABeg1Z3hXDlPmilbZ7gPHEZwPdXmfHj3l051M
	 n4UrxWluLRl7up4RGyY80AId2PcBusAHEaqpYSugxEHU6GAUN03wvbdgpiUQ/BnKYX
	 P8juwoIuteCZ7Id0+thUSOAF5vgQZa4/qHelvrSWvIM/WXmof/AxIekzi6EQ6RCqg1
	 6AAu+0ooLc/9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B901E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355395360.26941.12289549971829033294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0cb69956a33f7796201c45009a2e3226ed29982d07b1b12669edf5291e8b96
Date: Sat, 07 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733553953
