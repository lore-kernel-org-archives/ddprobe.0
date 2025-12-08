Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241FE2E7BC9
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765232574; cv=none; b=s3vOQcUQcTneVvQYKicCZO0sjkLsLWEXQypiepoCI88+uTgVDPSdHQwuUBzLjxGFNck85/xvF4bF69cY0Dn+NIM6g9m9DvC30UVKKj4bzQrQX1wkK2wQ6iVd4sovNPKenTfovuTcbqJDicNA52z/dwUnyTjCYs+5jH4CzO1nfcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765232574; c=relaxed/simple;
	bh=WF5Ly/pLLQ1H7ZE/ICbKHYcNzV6d3/L2tOimMsHC0fQ=;
	h=To:Subject:From:Message-Id:Date; b=XNm6iPn84ZBMF0IMCs9HedJCI45R9/Pq7UwLMljdmvdqj/GtZ8holwR6+Hp/37+AKeHvHTMObbBf5jtVqm/8s1tNB6k0vqSKLtPOdmwUK/QpS8KzUVYB+xMAZavznYYIyIduQgZb5lmDhAH4EkrNCrtiSiJ4gROmRh0uj45PKpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2fhcOHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2fhcOHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD736C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765232573;
	bh=WF5Ly/pLLQ1H7ZE/ICbKHYcNzV6d3/L2tOimMsHC0fQ=;
	h=To:Subject:From:Date:From;
	b=Z2fhcOHvshlo/jMryFYRxGnfVL/7G8pQIe3LVJhkydGcL6yIrlzv+539EnQlctdQh
	 hUSulE0rCQejLznq5/z9uyUXJNTNFIrR1fiFHHmtk/F80zV9yV8lUJNuO1LplmSFxy
	 0v2R8akoirAIJPVVyEyfhYrCk6fI+kRl/mFvATSa4Rm7q1c8o2KYuT6d249OsBkj0e
	 kRcC54Viq6LuU0FeQrQUNSOhM5sjweRg69WflQ34SoU1mNpu5ctM5mwMvXL0703HTO
	 /1uu8BRSrpf6jSQg9tVAVmsNQ40ku8RjkQAOfUqISU1SfudMu4P+EU2mJDvxMOfVf9
	 7nl1d3oqOq89w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95929D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523257360.4599.10281634143355394288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d337a2c4d679b21364905779baa934d7f4773ea7c69d74167c9bff924792e244
Date: Mon, 08 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765232573
