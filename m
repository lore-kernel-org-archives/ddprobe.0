Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9850B416865
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790224834; cv=none; b=ciUAAvZH8kOTtcMvHNTeaGSf4j0ehk72o9SQAa7Q3/Lk4yXYJS0+hu7robVnT4jgrqxaEyTgwX+JRCCE8vb1bDpYm+cF/4C66+VlTyChrzIZwcmYnnNCiToVEvmXJSjcm47wWPLtrPxVmDzVutkvkE4pGpHfWV5HMX0o30BYKuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790224834; c=relaxed/simple;
	bh=mXYjd1b4dWmLWZEySmNthHE/N0Bl4bco5Ln0fEBtoV0=;
	h=To:Subject:From:Message-Id:Date; b=tWC8rjVbBZPyyaGRe2tOiKYnztMdSUIDt47MTI7zyskEr/tQl/NqoE6TLfep3m/dsfiZLyMBh2JwfiAFk0QraKFHKPmDFIZUQNGHmF24V2TuXSxQXy7jBRUrENVgWkJSNgiYhflzQETpIPy9ZoNJwlol2pD505F6xkzjJINfBMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L34eCJRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L34eCJRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CBAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790224833;
	bh=mXYjd1b4dWmLWZEySmNthHE/N0Bl4bco5Ln0fEBtoV0=;
	h=To:Subject:From:Date:From;
	b=L34eCJRhAAWQoIgtZ3omS8fPjRxdsskZEIWkonbmHS1w04DHRH1g+41gijrTrJq1s
	 hDMTj5LHQ+r+cNj28hAat0BbC51HpyIKNiZML9//bOJ/zaH6touvlVpZtd6DVZm79i
	 jgOM3sZxPo1FoPJ+Ayx6YI0S6xAt1wN4OVCkXm+Qqt129wjd4+OZlU6QhKONtVoY+G
	 5rdvOcj8nQ/o5s8AndYAkhBaPfADCP43NA7kgubQyTCdPfLNqI6yHdTi/nIk95fdZa
	 eOIvfCTaW/qzvLT1VguAzHhkRGqhc8cbNlitZIgxgfTLWPCn0Rw3520gOmuVbVQ1OC
	 8SDmAi77izN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE85EC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022483373.19426.14355348186932979667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391461eb6ef3e4f52c576a9329813ff0653d189e39af945b45a09c7139a49c4e
Date: Thu, 24 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790224833
