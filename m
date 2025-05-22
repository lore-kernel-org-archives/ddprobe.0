Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A5929A32F
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747954193; cv=none; b=n67jIdaeaKIevGZdqivebVi+EM1X4XtItl8wbU98+6kvoAW2KeIvhMy4iWzuoSZYB1xpXLD+lBnrvf93nfcz6nwNp0TVxGfE8waCjh17DmWysLPzV3vQyiZcbMSlp92HwHyz3kjXjw41Unfy3gY/2hSe01xNR6i4y6vZQQpDJh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747954193; c=relaxed/simple;
	bh=pyjELSrvDya7NEIzD6tdIAFggotrCp3ScUnLej0rBTw=;
	h=To:Subject:From:Message-Id:Date; b=e6I4pXBMRFM25/QiY8NPut7RLF25v+tTwIkYcef6EsgQPpeBmo5YvblNmvVKEDnzEdDni9dE8kz+64WJmKqS/bO0FXYTs29UVg/S7UdSbmysINlV/yGgMVzmld8ST8Bc1NniA+xhvUDEQf6JOVK9TGPZ8U0FG664lGr8b8HRbHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTRfeIRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTRfeIRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EBAC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747954193;
	bh=pyjELSrvDya7NEIzD6tdIAFggotrCp3ScUnLej0rBTw=;
	h=To:Subject:From:Date:From;
	b=YTRfeIRiqMXaE379CsEPEoWAioT8FiPGMLY2iM8wLqev1S2453CtPMJ+TnHQW/oiK
	 X9Gz/SyVbcg3czaHXgmCF4I7KxpFQ26IQxl4MFHgf/LNOGhJYNXxiJSc8VLYtf2EeC
	 TwPysQVLlZmRbVTNba1cz4ERQyZDNxRl9CnugEFgGE/Ok2xwITyp9SOqOByVEbt/7M
	 UoZfC6hinaaQEZJgY0GC3b7msh9eoF6BpybrzR5WeLQu7g3A/v46hEa266wTH+c2kw
	 d4zLCre+3bm9139A2uDffuS0eIZ3KAgLZc5YgJgS6S/4kN/JlB+gRHJKvJ7pGzE0EL
	 rkEr/ZZ+0Xf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81FC54ED1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795419357.20520.6204941978805510443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7982a276b780eb9563770bf2470eac359e3b4f1213a1750fb5e3d1f9b2b491a8
Date: Thu, 22 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747954193
