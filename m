Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C7BEC5
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736817954; cv=none; b=LP8f+87th9jh0dheuzTLS1KGQoVR2hiGOO5iNT9dzmhLQnAJte/cIV4N8XX/tiLTuXjKGzfNNR+cLMvFnkqmGFShNXTpS1m+jEQVJB4t8jXaqy/j1T+fbqcp4sYed46vFP0aT6M9NMJBo/xW7pcY55WEfyqRgzzy3XChd7tnpi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736817954; c=relaxed/simple;
	bh=y8EMdmxYlKCrVY6aZ9HkSw2cpqfMW/KNV1FL9iZ3gaA=;
	h=To:Subject:From:Message-Id:Date; b=lgW6FFbT3NVY4lOqiRz7jwg8PeAxu3lXOAqnFJFWsmAsZFZZlXRCdZbjSl+H1x3JGHlyoDCGFNP2x3rpWo+V9p9chKO937+nTGFR3O44f8/zyJcqU3lhC63o9tU7Znz5lExpp4mOJpX9EmN8lQV5PBmiNOMON7G5aeU1NT/fDAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6GeQzs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6GeQzs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C6FC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736817953;
	bh=y8EMdmxYlKCrVY6aZ9HkSw2cpqfMW/KNV1FL9iZ3gaA=;
	h=To:Subject:From:Date:From;
	b=U6GeQzs5vRDeW1DReXLRb7K5gUMMz2AJdbLB24npJgJKewh9C6UX6D559nuTxAJZR
	 dAwgMyVTGGFRJvFu+StTx4JS3kItEbGAL3WW2O4Q8M22rIGJrTWE/SXGBwIpdL2DWY
	 5/DvSbh8FHLu/ogh1jp2i3qtqjn0rriiTeVQDG69YHe8iBeQADNy0f3Q9Mqqye0J9Q
	 morwxXIQxkYljLd11eddVBwfwXVfbEQHREE6PJQFn8YvBn6RLpJXEe41U2HbhzK+pH
	 jSqbwJgW7nlAxdt4IsL356X/XC9IWNyRSkaW6YNo6/lGE+b26rAdAvXnho5onA0/7e
	 j/5u+81E1Q+VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1250C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681795365.14706.17088609846214141274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7065830bf868921c7ff4e3768e812741b880636c6b29e1446182498e333c2a1
Date: Tue, 14 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736817953
