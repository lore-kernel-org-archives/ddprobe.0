Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2291E50E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754830194; cv=none; b=WM61wAJ25GBpFlD5fVOU1JjwtLCAweOLMd5GSdKpOqWmUFrMsi5VMo9iwI9sR4m7rIKk1ZG9PHNrVwChxdWdDDkfqc0JtYMoPgTcS3Hgx3jyNEnpd0qxQrU4QNVz7ZQcJz6WFIrOyhC9m17DyYWqRmEec+l+AGdilMpCbCR2x/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754830194; c=relaxed/simple;
	bh=laBmdu6/NLOWfy9cp0xsAwdqClEpNGrirpWCoNT2Od0=;
	h=To:Subject:From:Message-Id:Date; b=D8oYCdBB+MT7XsLOTEcQ1cKAojX3fuwhR80c2EHtDbjlhs8HM3fy09WwSCUDsMsAm2DAU3uRovZteT8gfipxwPthsagnej1G/MQxRhZ4A9Sze4hy8KL+u/gazT6WxHZtU+zrHTiaqPKS05TRU6PbewrFUE5tMfms03lBw56WMbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5ib4686; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5ib4686"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6173C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754830193;
	bh=laBmdu6/NLOWfy9cp0xsAwdqClEpNGrirpWCoNT2Od0=;
	h=To:Subject:From:Date:From;
	b=m5ib4686ro44k8aTkr64eJL0njRSgvALHS4uolqaOOfXAyg5MFVouMEfc4Yqfw1n1
	 YICb9WrRTURBqLLHHp0DT6kN1AmXLbRAyXjagcJVWPbGaLH5XSud+ytT6LAmhNx1RX
	 jTpIif8OUtWnV9EE/Ex+sOOuThyIKGs9rEBpkLd/klMBLBb4cqfSUhD4ja17KZo5av
	 x8Xbc16KWvql6lDnhVa7TM4YZtjleCvUWRXVYkN/IlujPSDzQK0VGE0wJ9hIMIVDGD
	 bFWq9ZvJhEyg7fkP7sBTz30iGYXKP2b8yc7jH8NsRg3lToN2z5HwCJgfEzmhG7bLCe
	 LnVV8cweqXa7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94868C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483019357.12492.11173923199014326969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb36bd9e5323bad9ec40960cd53dcd8c6443236196f5a48da0a1210a56f58c0
Date: Sun, 10 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754830193
