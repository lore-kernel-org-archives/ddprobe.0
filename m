Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1505C1384BF
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721703354; cv=none; b=mOr+LV6aLGOazVkWLuGPWvWoY7OxM/Pma9a6W6U4Gbs0op85nldfCmoArBPAUKWL5hFC0DmexohCW4Vf4jAoYwP6+ZDUqlIJ7vpAXrYT6UFenExrKmFr1Eig1VhJnS5LmpuxIjsE/VnQ1kTNP7MgqSnBYIs1jf1yg5NBzoW0cSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721703354; c=relaxed/simple;
	bh=WEBb5iJe7+ccbNQ+F8rrIue6IvqudpsY9NLQLlixyUo=;
	h=To:Subject:From:Message-Id:Date; b=C4bmjkRNk5a7EAOf7I2HLdWFhnoHND5mF+aD+rzcoj6a89jfEEsQJjLMqpyuSRsCBsZPaUEBotRk6YsSCoCBCNFbEbDyUCoMFMnQK+ifqMuXi41Hgv7IcOBxKROwTbWuiu3fuoEu4TqOzfppbpVeV20qtscyDCbpQ1loDkS5gxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8vdrp2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8vdrp2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E42C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721703353;
	bh=WEBb5iJe7+ccbNQ+F8rrIue6IvqudpsY9NLQLlixyUo=;
	h=To:Subject:From:Date:From;
	b=c8vdrp2OTpyA8OnmpfDLe5UTVVORCqc4M2E2sgRmIUc8jieJ2CxYFPy63Xd5X2edn
	 fknSgpaybzrPCxMuOwYNjBbqo0B1YQGJ4niKB80usIdcF01DLaXdW5vct/Pocjv/d7
	 zTWNwyjwxGqEYoqJJvSgivv9x6ulbN9F9/mnzhCl52+ivGgafJ+37RAKbyAdTN5yDk
	 mxNkX8U9M9e5U4yO5M8wXruwMY73q3TiyOE1aS9p3MFZhWzbFBpYtuyHuC2nD+bz79
	 1U4PX3e1D0mxl31TUzJVzBiEaxXxno6GDVWrxMM5ATn3RMn7+tDa1hp96yQiRvpB8h
	 nP68zR84D0o/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958AAC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170335359.2009.2356865441270787497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ce3fa5ad14308b66dd80e6a22089134d8f0c9e3f1eff10a4dfa243132c1d1f
Date: Tue, 23 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721703353
