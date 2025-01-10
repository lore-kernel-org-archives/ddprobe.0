Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27C192D9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736543754; cv=none; b=dL1bbdge9FrV+04C4+dy+uLPAgICpxaGEizuJCQYAysJrWRRXp3udplF0p8KSNzkT+dD2fvxeSmHASf9zAOWJjU/6RMojMAA9JG0Wua995RjaQ6WIqJl2XN3XiSon/N+TnGAEcGrHaXKzBE48RB3y2Ev02CXbOWhNXalEwNtugw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736543754; c=relaxed/simple;
	bh=PnmMzUpIq7Hynw9rdgaqoJ9Qr6kJy7V0X0IKy0SafrE=;
	h=To:Subject:From:Message-Id:Date; b=Prkvd0atVGiyJJC/BLEMvvgwlbY9fHofbpRJNw4ldXBATrf3fl3qR8sIbYJwJrFhsMgj3NJpgP5pFWCQpjxOYegiBs1vMgO/vBFMSwJ4bjGEJIF/uu0O/MLTkrBsl+C+8AeamQNVU2oM/Stq1vN0FkSrprH5KFxG5E5BfSwlvGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSO3Qm7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSO3Qm7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10ABC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736543753;
	bh=PnmMzUpIq7Hynw9rdgaqoJ9Qr6kJy7V0X0IKy0SafrE=;
	h=To:Subject:From:Date:From;
	b=qSO3Qm7yWwPBVHDjQvNFo9hQryxZnjUWDJiKFIsRCxqlb3tt/9q3PuTLlFNVuslJO
	 5o31h4iQp5V3L9PmsS3Yds7w2I1/TbrB9Gu//doW/uiuDdxM90lWd+kHeTyOJEnHdl
	 mmAX0TPLGuWSAOELzYfC1Y2yTtmUNpGDCyQSLM+O+u695YSL73luivjIHPTmNiC4sn
	 WN90Py7BWTCSie7rYCqH/YF6LExPj/mdkfoMMLN0ED7ZFG2IoUafjNnTxOUwhQxLbV
	 cxgOm/BAPRfz/ml7Yj8RSQRRmTw4xtJr5ChX4KVHmHoIAbKXeU2XvcYYvF085ldkHU
	 WxpaKuZpnsQIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133DE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654375358.22449.14600376669762960270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee3f98842dea72d8355e6cc215d70971f1950e58e5f2c9fe2ad4c609690739e
Date: Fri, 10 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736543753
