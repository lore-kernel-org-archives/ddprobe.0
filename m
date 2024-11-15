Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2588941C69
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731705954; cv=none; b=ZJAIWSOlFi/Cz9q/fgSEc6vxlRCWdJM4HI2L1YzUYczDqyRhOagQXKAg3copZp4ab0waW/MjCd096QDslbf2Trgn6OXjwHo8cbmehSP68vkEVw3aJ/VZPmpebrn3388qI4fa2LkHJ+m6gtt0+7cJ4oa76R5ClbMcPukecBZmux8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731705954; c=relaxed/simple;
	bh=mAWmMICyJ9qp+/eSMhedOGGyJOucB3kIOh8GqkU+F6I=;
	h=To:Subject:From:Message-Id:Date; b=iruHqZcWngMkkNsl22c1o2TJihvjH81LKSKyGzxpfGXOA1lpPJflKkUz2g+HvEnKYMY4/pUgqrU7m0YsBeloMrtwC90avEozzSyfLjbF/dNR3q8TgPz+A6SO+YtHaEP8Yz2iQBU5jypw1bayUNymdYutVlsNfGlixOJpErmq4Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS2B/YqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS2B/YqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346BC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731705953;
	bh=mAWmMICyJ9qp+/eSMhedOGGyJOucB3kIOh8GqkU+F6I=;
	h=To:Subject:From:Date:From;
	b=MS2B/YqC6oPKczhhst3HXyWML2tuCyOSruchIP7CT8Q9IFsTdddhe6w3nCsfPCtKi
	 ho0c0UE5B8IGRS/OXwUq0heGJ9y/12covw2mHxJlemvwsLe4ZCmaOO6aAg9VE8puUX
	 pJ7oBz8vUESikPEsFbK0vMpHRJ1hF1Pcpu7YO7JO4/zxhnE5e73J7CQesoyA3kpimR
	 oUBU7BvfjE8K5/pP6WIO7A0pBJSP1Pq5BxhZk8r6dbeaRvPgDr0+dBrZnFlMKkmZLs
	 kFFNFJ+wbNyV2EVkk70nMlIIrqYh42AYxnDlD7xvoE3xLh5/1mqGQrvNgFu3XKAc/Y
	 yJ7rRVlvPoksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9BD68BD8
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173170595359.10621.12979543543339261303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a28857a9ebc200006dcb013b6c449990383a364550612105b28cc72a9961dd
Date: Fri, 15 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731705953
