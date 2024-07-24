Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41C158D97
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721846154; cv=none; b=MGF/WZyKkqddve1V3lvba6OIDWaB529DKTW+31LIm3PmKl/Zsy04odSOvkOScz6K9FFCInDm8b8DLWYrC7MLy/spfLLLNtLy0cZffjyBKqMMsKAdzaywJX3JjXa37zeKn4xGRTl6ZYD0o36POOaGrVCMtuJaZWtlLEeW8qsjHgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721846154; c=relaxed/simple;
	bh=6L9jSDbUgdJW1bo8S395swAb0+ush/0knr7prpoDXps=;
	h=To:Subject:From:Message-Id:Date; b=nP7iWSb+3d7AOtSSH8nByd/h/OgcYMgih6fH6E91r7qxETZ5JQbQF0kgCz5n9v2iSR40XEnnkuVhxWWEvIxZWAT7JD2i660IYo4Cie36TuBvmjFMmvaNeGhVtRd1A2UxKrOtmNBLNloh7MtZPCppMDIq+Y8fJHmd4OIegtK2V18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEpfmKsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEpfmKsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8D0C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721846153;
	bh=6L9jSDbUgdJW1bo8S395swAb0+ush/0knr7prpoDXps=;
	h=To:Subject:From:Date:From;
	b=kEpfmKsplwmOJnkfm/AyNlytojN5LoirtcPP8YxmhnK6WY08G5hWFZbbvEmt+acrT
	 ETARwCw+uesF0PzR4qaelAbNQGKQKmBXnpYjZnfePB11BP8Oo9x80wAY6ZdhduLkBD
	 YESYcmE2OgmfHS+HXCXyNPV1ckp1IShmItzsSRHADuNYolIrGEXPLGhSDYBzIGzEEn
	 ab11erHHAOy/PICc+07vBGtyE68mriAuDj/OGe4YEzQaELiL3giKfxY2/Ud1IBRLnZ
	 qOuxEW7wF8xUF3JBnXGkMSGmcG39a2uLDLPrZrLI+NRmW9sPrZK/qqV6y0yczqZu/d
	 7VP7Xwq5wn95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9465EC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184615358.18404.3900098343616084800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33594f9b60503409dfd7493e3f71bc577a8c422917bebacdbeaa721fbbf4a4d
Date: Wed, 24 Jul 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721846153
