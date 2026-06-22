Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F54205E02
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782087994; cv=none; b=UFJsKMrP524HYEyfj8d9yPigZPjEb+Vqq8n72SZak+UsvH9fHvLGyelUZyUj9+ORj84gnaLR52vTP5mHSOAwitoFXwZ/B++qyS51UvgXGrc4JyPJ/HNjRjw6ZuFvo5sjZEJuan4CPSAqUZquYpA9ZER1zsYtTkNFmtCQWyQBYIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782087994; c=relaxed/simple;
	bh=94ub7RcOctS0L92CmOpASn54jBGd2DVm9vXCwjZfsps=;
	h=To:Subject:From:Message-Id:Date; b=Zo74Tr6LzI+h9BSt8OI4AlhczX621UCrxaDXyyjfRFIvRGBqA8mK19u8i4Or+aUs+XWXIwSQ6DLnsXDeLpXO/DPttAN7f8TEOxLi7v2vQErLyKU4JkC2UanSKTzTV7E8zokXTAuIXR+Xo/fpHDA9vKrCmZSNR08K3k4GduncpGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/yN+CqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/yN+CqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D061FC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782087993;
	bh=94ub7RcOctS0L92CmOpASn54jBGd2DVm9vXCwjZfsps=;
	h=To:Subject:From:Date:From;
	b=i/yN+CqEOUVojoVDxTDIHrnTiEhBLYurGU63O4eA/2itD4naLL0WAoPOe5Wbgo/CB
	 p88ZJgOOBFEWx3cxzUcGry+AS1GWqSxqQSZWr6Y7mvku4NYoE9EZwurdqaj3uCHgdN
	 Dj6OjprDHp9+7QXcdR0VF2qKnDpLFCTYo71FKUfdwduvY1tI6pFvPTryUlJ41a8KMk
	 FPebndexlXPD20rKGEr0rfjxistoPiJ4TkZJIypXlIhORazqMgo3EvWD4s89kJRzzr
	 ifhqDdfeeASceQ4RFxUvDTGNUhz5sFOw7F3/MQdgwCRJgM/IGiEniBtun23hQq/Z/k
	 Gq9XkjQCNbSew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0ABCD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208799370.7814.12712116086160034759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1532c5790d098815a99f6ed08bcbd1c4b30aeccb94d2632ebc41a789a3280d00
Date: Mon, 22 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782087993
