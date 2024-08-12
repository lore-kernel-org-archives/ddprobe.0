Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281204C9F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723445154; cv=none; b=ZNgIIx7xBpZ+MbVYd6Y6mwnrxAhZoHT3cNmXDFWdByer5HzSf9gaNngyxIsud0qVEpc0ZNgpbm9oSJhtXPngdtvYjZGsvcyC9riYxRCUorClxQoJ4A47K6xUXVsEuw+GffjUi+xHTczGv6R1KVYNIGn6Do2OxSYdGyG+NCkFvz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723445154; c=relaxed/simple;
	bh=YxudguDVk6XPiMUL5GVCiQSiy3LXXFxomed0yNdELfI=;
	h=To:Subject:From:Message-Id:Date; b=jQj2YAGfOIIPvCejakkXYVUbgUp0SXJaPz95tTFoZRt1dZMLnXxvha79AlD6n8nfabiNY2ukGYFeaFbhT1FwdOit6L6YfH1+PTkGuol5WD3YMMQ6+DhW18vBL0i70iOj+rY2NHlstSS3X17/6+4hX62YiLbSWofcwC8heo/qx2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLs0JBnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLs0JBnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A0C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723445153;
	bh=YxudguDVk6XPiMUL5GVCiQSiy3LXXFxomed0yNdELfI=;
	h=To:Subject:From:Date:From;
	b=ZLs0JBnG6vAumngssPnr45JAAYdcNioNkvL80BEfP+mrELkA3wUq09b8VGgRb9Gov
	 1t38ZcsadRNBXVNG+Sp9RqonIMRLO2Rx2ZAL9ZzWCFuSxKU0/0+XKs08QGpqtsBnRM
	 xQrzheU+FaskSJ7FJEF/Xq+pZ4eodiXeUxDfy8i2fAEsc3buQ8uwXpwFrJ2Io3ho4W
	 dusOPfPAYBNIZX5rXNYRW7QSrvHNXUWn5zfeGbSHS6GHEOkVz9oDpLeV4gdcTMaslq
	 SSDOooWm0gaGVyRNHb6KvUWvZ1kdq9c77X9IPyq04s/KXhbJkAX0tfH+fUinPWRsgM
	 kVS2j8T4A0Pgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97351C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172344515360.12995.12162740397642492755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b82b80517504420e9b7156dcc16d13ebe0428cbdae954fab353a559e6ee03f
Date: Mon, 12 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723445153
