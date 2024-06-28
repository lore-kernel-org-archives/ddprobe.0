Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE38224CC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719549863; cv=none; b=NqYGKN1D7DnbrXbczqssNNw2x1jJxLZvXiYYnHP8wFtgsu3tiygWYOAanHzyK8kv+4aUF+1ZDciG/qlMp0vO2drwoEd1HeVL6JO50nSfsddQYVA3xqPI4/Fno+bg5Om4N+ncbV0I/xS8c3he6mpDSaRsE95MOJm4f66bIO+F69c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719549863; c=relaxed/simple;
	bh=0nBKPon58QIn/3nK49y2j1whkMEYTh9EGu6/LtltZGE=;
	h=To:Subject:From:Message-Id:Date; b=IZ1ztWGzKvHbJjrNjpYjn697anZQZL6yYx4OXJ6kqNwc6WZRoE3sh8Ajq7FZrC3LjCDpkCeNP+PwfcPEUueleEuLX7P0LUYaop88aCgUuh/pRNYBq+Z7daT+jdHvLSvpEl4slXIhKM5cw11Xei/5yzy+IQTjoygQeKyF4qKRD4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZJQi5XW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZJQi5XW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5448C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719549862;
	bh=0nBKPon58QIn/3nK49y2j1whkMEYTh9EGu6/LtltZGE=;
	h=To:Subject:From:Date:From;
	b=oZJQi5XWJFfTW1qdNHykgCWHQ/bcB9ysicdeK1e9wGeMq4KaWuvy59gFKFGPnTV1C
	 IY0EDGKGj1xB8X9Ilf6OdG7XxyjUSCPuomABldrJfpymTJhgGFKyanrEcwOCVvVvtV
	 nbYWEP7O24QlkWbreH30xTo4H4KAaSSWlyyDSqTR/YdcmBX1rAqekOh9hVI7eWjB4K
	 BE4gwrRf0rmFtiN8lJfHR0ZIs0olhrMQOHJK79AuoTE7zKVRGYS+bMlTJGmzkA5Rzu
	 RUn4GjY4j7uPE1AhwAmb32Hsya/K7Ebf0Z2V718s4VQgesWJ+wBKaKRsc2DpQ+yWWY
	 oQT7ybusfFhjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC457C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954986279.14706.7243380873104612136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1e2ee79ff273ecb72e950c9c11a82fd4d150d8e0776d687d050d339a88d26a
Date: Fri, 28 Jun 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719549862
