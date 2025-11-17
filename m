Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C31241CB6
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763388714; cv=none; b=Agy8uoSIcEa/E/bfGDuH1vDC/80oyyJsdWjEh544wlAf4ZQGxd+AKUq15CGFRT+MMDEeqSmzHRCL5OHQ6KqBbr9KELQprZPc/O6mn4uEAx0Dqs5VwpAYlBoJsWUEDyTzjh1sw0hS40bNP5JssVkFDYqoSTrczeCVAGSDyWrO35w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763388714; c=relaxed/simple;
	bh=A+y7Az2jUMeRQnioRq3K9x5hqIoXKVasCJQ9fWyxNzA=;
	h=To:Subject:From:Message-Id:Date; b=N2bvXHflksATvxtw5HbDrMP45U3HB6rhWBzOAzXNI5TohlY9NaQUN7pog3bf0OMD3c21ClciEvbcUMUTLqJsz7erMhDNsUIjEEh6Q1ggJbt/W9qOzxqt9+YiKwd0qMgjt2QLcx2aXe197xmdnFubW67bJh5b+XQEyiEQ5NwPECs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mozXVuPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mozXVuPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CBBC113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763388713;
	bh=A+y7Az2jUMeRQnioRq3K9x5hqIoXKVasCJQ9fWyxNzA=;
	h=To:Subject:From:Date:From;
	b=mozXVuPbmMm/k32yVRwtJPABMcWOKb3v1eNmK33IKI1vB8hayycMs6f26oOSJl82X
	 vKnG5TC9wii3WATs5XEPqykDKE8m2TR+Rwdr/ma3AyDa+2oyu30vpv15FAtKyevqJ6
	 81q5YFfx/N22ub8Yr1l78I1vNBhgCRlc5Y2CiDKRph+Lzw0QbfvbbYs6K1RYarikGt
	 weoueWggXtdQWqaStkiorAfxgU+gWzT1np1yag56xjEXWay8x4P7yhZrOW5RkDI2b0
	 R6xN/hpsfxDxwBWGARNe5Or6Db50ut7mPlHlRgplZlHu6FVsCuEcbBTbuscnhFJuWp
	 ESsuYogCYonAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB79CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338871362.8280.8844641408550884216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb33ffe793acce4f164ced730080329725c66396546434b46ac88a1a2c5c53dc
Date: Mon, 17 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763388713
