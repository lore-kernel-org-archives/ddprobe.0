Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269C820E6
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758512994; cv=none; b=GS6QttN53P0FxlZ/zdLvb6FO4a7rKo/B7jyIQvN1NVmeZwV0TLwN0eo5DDGBWtEmJtCvtKNmvjDthOGpxBfl5OImxCAbA2/FZvDzneb98Lg6QcHK/1mq5Rw9vYm3/C7aMV5bapxntcf32yUM5NE82DyTkk1IJsHdNplUdO2wm1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758512994; c=relaxed/simple;
	bh=FN4mdbNjw21CjGIl7bsGaJJz25FauFSHoXcj3g5ED4g=;
	h=To:Subject:From:Message-Id:Date; b=thyN6N35vUiv+Gr56uCEv0CfCpW5uO5xebO3xqOTC/t5L3DCOXkyqsNAC92LAbGo8LbKHJU4KDa2rmR9xI1dmKOGt2QvXHTWUDru4b+7T5L3Uqe9YV9emgmEW3Hhmh1eoR9b6A0WkRBNVSDeGEikUcbNsnbsPKwoFCs/ctEJpK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrfQJoYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrfQJoYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A7DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758512993;
	bh=FN4mdbNjw21CjGIl7bsGaJJz25FauFSHoXcj3g5ED4g=;
	h=To:Subject:From:Date:From;
	b=GrfQJoYPeCHubGup6z26YQbhrxgWpNEuXilKGTL0TCdZiJDW/rPHxxgkjLzB4xIwu
	 xPd3lH0eyn/XZjQo7H4PTXg3CAJ8/6EF4cHAG6pSCoKHzcBNgsiM/gL7n7C+ygYKKM
	 vTAAUefVjHfDqepD7OdU0l3xO+NyCW45I1lNUbUZS70M9l7llUpbAj45Q0gNIldrnV
	 9qCOnNKb9vk/44Liewl1fxOE/eTXjQDPX6sfiMLtDFZUvWC94Ofs+MSaIerp2Z/Iok
	 ygwc/1+FQ03jUpXkx4G+0r7Wj4opV3G67/Xu/YiXpy9Sgb3INQaZBxsywz3dcUqcxg
	 JFSJBedmMlJIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90420CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851299358.10630.7824810782789125795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06946ac984bd289d0a607c87036a30d516a1f90925d85c2385e36247d5c2a23c
Date: Mon, 22 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758512993
