Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BADB183960
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717059863; cv=none; b=fcMwU2rNbo0+/vLSxMBUkHvGEFeHNjxx1NrziuF+8CsxLV1ZgexEhQ8Zh9U2hLmW3bqcKmObsDogliMsVgGgXd12k682bL9tnbUma0554Jw1UoqbbGL89UOqn1Y+7MFAv7zeQLUALtENUXuOkXY0TdTeOZrO1RlmdQI3/LvDevg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717059863; c=relaxed/simple;
	bh=RlyQSBQjgUh1a1GGG1S+oaHcbosfQ8Hw8u7ZFUdTZrE=;
	h=To:Subject:From:Message-Id:Date; b=TfxL59KZA0oE+Z+9XN/iY/gMphMaZWzuxgGR++akJP3RwMWE6RKIak+Oa3pxhQBd2MbL+Qv7VAAbyDbhWCfwi3PdntQ+97jZPcBAWkLhF9kftxFvYb3Nd4BUjdoe71bq701sirIdJR+LYryiOOBPyiVr6Is/UZke2+chQtk0tKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACVNFf+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACVNFf+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D452BC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717059862;
	bh=RlyQSBQjgUh1a1GGG1S+oaHcbosfQ8Hw8u7ZFUdTZrE=;
	h=To:Subject:From:Date:From;
	b=ACVNFf+rt4W5knaf08XsPRa6XE3JHMqNAQhNdXRNSfuJ90HIdikNO0RxGj1Ihy9ES
	 0C4Eunb5tdy4ddhWeSGFUj9akMqOgSWJ8GoM7K8zv8iOwaCcRcvv4bUO6YN34wZyeq
	 CN65U06v/6TXMokrCBzCcd2azX423An8g46TDuDmQV/aZnbJ37QcvYTXNdDXCHV7Ef
	 qn4VzQVryBCS3uIbBxNCuTp1GyZaD637BvijRPgokmk5On3kJQtv5j63dz9Ry7YFRf
	 E+6pXt6ThuBK+ZwuvqXhUc+tumDG69W7LVykS/MxiEEVsSy8j3YpqZYR6Daha3RqxG
	 DOGOyckcJRLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3A0C25B78
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705986277.27281.16351123998243657047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7151f20f750019f7c791edf3a79c0f36bcc058222714f5aa1a04a105965b0cab
Date: Thu, 30 May 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717059862
