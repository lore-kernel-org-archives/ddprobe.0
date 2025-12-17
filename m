Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DF42777EA
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765986834; cv=none; b=hO6B+KKUzGA4KIsrpNbyN5F4eVuSjeQvRDR9nDzeMumCMShM5OL+UMvmuM5SaSc98WD/jojaFIc0GVPZuMb7HzoKaSrVyMz1KcUkant6D9TfSM1n+nFbxwROUfMNX8zJvlpiUBT3kenFhW0m7U4cnFBO8XOiouGTQY6gqzc2w9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765986834; c=relaxed/simple;
	bh=TVvNGdiCnMhlnsCuwdx2r+vTgXflNeTfSZ59iBdDXiM=;
	h=To:Subject:From:Message-Id:Date; b=UHyP/96BAbU3O5LlqwTQ4mPC528yiwtSFOyQ1B+v0WGl5+xdNBijlSZySwQwquVy3ssH67xaQshuN7xojrTdi4YHCG28c4GW/WrTR71VbT0magruu8rbQ2xTj6r0CVlpKsy0BwPknIeBw5tSjBsepIPdD5CZir3asev2NEztnQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvefp/o1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvefp/o1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F797C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765986833;
	bh=TVvNGdiCnMhlnsCuwdx2r+vTgXflNeTfSZ59iBdDXiM=;
	h=To:Subject:From:Date:From;
	b=bvefp/o186CbP8j7fEjQYITMcf/mrgmmSMcOMbKircB1qoHVa520mZPg24AXlqf2t
	 C3QB7L0zpFpLfd/y+itmcOAjBGIOOVlGlPQBAinUn7kTkVtdg74eSrafwAZStrLCfP
	 l2rQo//RNTIGA3EX2BX8Tjlsd5lAqpPN8IcqKgBud6TWepkOz34icww2QgipXgS3ri
	 Apn486CaZ4zjTDATrB3qinCfUCVUTV290U17BpiUHObVga7YN/u+28QRWkq4VfGhai
	 f5STjaj/BDCJ8vXf2Ree41PSZwIZ8y3b2kginLaoAB5gNTxEQwqScxjb1196bZIqa1
	 LliR0a+yratZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905FDD65C73
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598683358.13181.16563929178556803981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410f246c85d2b03f50b192301e524b23eaa8cfc50fbcb0c690bdb0300345980f
Date: Wed, 17 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765986833
