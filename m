Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398E733CA
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738548954; cv=none; b=u38r3jq0R1xEERsozWRUMdjaP8IW6xFpzbzajrwcWgTcyNhdsq29RQEo4Xqkcy4yqGzqo3dQ61KoOxU+edavDkOADkEQ9MDb37DL2ra/nSC5kO+DUwLV3GB8IGiMr3IXJAlDP6R7j8Bfsh5clS0LOS/PbaqJq/3Wv0nz1ZtZ1bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738548954; c=relaxed/simple;
	bh=WhuDr9mztTi627tLlLOIJMjbpa3Oh0boB3gqjOhf/GY=;
	h=To:Subject:From:Message-Id:Date; b=KYUsl35j9iMiiuNOgWUDcHSjIjfHBf743jgwDCFi8aWH9ZhQ4X1flm2+f/TTRMRJ62lGcnszi7hMQ9sNaSZQyrGG20DMfE44tulsCNTnwqV9l/IMdhjX58lkFJry0eZuOVqiLDIYF2OPxIKVp1eslt5MTpEistrIy2PWqvnw4mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0V5Rjfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0V5Rjfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A6C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738548953;
	bh=WhuDr9mztTi627tLlLOIJMjbpa3Oh0boB3gqjOhf/GY=;
	h=To:Subject:From:Date:From;
	b=s0V5Rjfa/Tdf/sTWNFxrwa3cTdNlyssQO+/OvmuplCauFBF/n+BWw3J44q/4w9Ztr
	 W71uwvTfXGK9ck/MNvV4ZHWmMAknOUWlmWBYzyBhpV9f6gmnsWsjU7h+uiWCl7gaAE
	 ZtgaEn/yp8sFUobKWx/Pxi8UhVvV+SCTZtqrxYxnYeLPgLDXsqwOw9VhAc6pEGY71Y
	 rwcUX3/L7YjoGS8jWlD8lt1O9UQq5DQHKwaciL3jtfdj9c2Wcwh2qTTUbAMjSL6DLZ
	 4b//sBrQHBcahklQrAAGvq6k2W8JWmOpkjFQH1Fzz9AydYmTUO8aYAN/2PNGTj2p5F
	 dIr57e9CTGmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC6C0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173854895358.10600.13144136751326690294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf4a2d5f2af16b4ac708f91189c29659074fdd780052944f451ddbb59e2c665
Date: Mon, 03 Feb 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738548953
