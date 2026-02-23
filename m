Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132A036A03B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771874094; cv=none; b=hvXKpWQSGSQ1y52sFsiwD1aRNYiKgo1/V3s0H2Lc8WIXPW187MyjkRBgE86GnORUyEuwrKAvLRu1ugGDe9APSMbFZ8Fi7dmaHRLNvn4XLKhwbS02OQDHdpy5lF6+jxj5zEQDq6Bz7GJ9tN9Z+DQLO3WBPA6+sXrhTNsjEus4ULA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771874094; c=relaxed/simple;
	bh=t77o6R5CXugT4eqM1FhbQlR3opC7IolzQ205AYj5dro=;
	h=To:Subject:From:Message-Id:Date; b=fRBKhy3HSaUimmHSTJLr3ZTF0Dn0CdoLx4A3H71td7Tg0s4FDzvzx67kWQCVOZGzYUnaRx78x6LcjVt29CUC+GL97ACnZctqZAtPbaHMRrt1o0ndIghxRomQCl1/FCRbjDyllHAD0HyaUGhcmDwq9QmnUFQCIdPBfbiz1iE6YIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLCVwK0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLCVwK0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4823C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771874093;
	bh=t77o6R5CXugT4eqM1FhbQlR3opC7IolzQ205AYj5dro=;
	h=To:Subject:From:Date:From;
	b=ZLCVwK0W35g9+x7BHPN0T7XoIgbkMIGqOPxL1KEpvFk+zZGrgbVPg/6jJERyT5apS
	 CY/BkG0UsSkE7Ay8vS01Z6YcBxvbpdC7+tYSOP++mmja8n5agosAp1/Mot9J6wyIc6
	 EYSAUfmBfOxnAm5fhGumRp2CHR3LEisFMl4DzXptbgHguc0O00yPdKkn9vv7qf28x3
	 7h3AHlDbq1I5MD6Q5WGgu9bXL7+Jv/e+CBIJg5YzIL//8OcHxVmpw0aCWG+V3cqwXY
	 VzGIS4kklajLhlV9spn2/cywo80ytgsZGuLoyoEbvqsrP7Zj/tpVgPH+ydaCf/g57A
	 cH4mx5QaUDlrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D7EC1122
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187409358.15792.15947452954352553713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3394c7402e93b541f950527a4d0580f25de4dc09b79680ef65a7709ef43af14c
Date: Mon, 23 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771874093
