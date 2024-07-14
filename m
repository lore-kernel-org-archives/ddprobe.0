Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5DE79CE
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720924823; cv=none; b=D25lynLZD2FDKegrbzFunCc/kdipDrt7xdj6Pd9JcUMY8LHkxlcmcX8cP//qdN8ozO67uUN6RS1rWGt2CWGkD9ZEu6UZAJ4F1S7pn8AzUgbjp1tvT0P5/PQlQsVfI1ZZHGSvITPjz6wUXQFcrSMPBdGyaril/lAKqa042n5nIS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720924823; c=relaxed/simple;
	bh=8Y0ga6L3Wt3wZqY5Oif5iKO+dLeZlgABYiy2VEU9vCY=;
	h=To:Subject:From:Message-Id:Date; b=S2VPMoGq7366SE6AB4GwPyxyYJcHSTSBECSR6jcfcDZvPKOPTp0+sCF88JM4A16q0XGXq8f9VQjVGhMU61st+T4qQM1X+M5lQz4uZD3DhuBw/qFtcVkfSOmWaxBy1BFCfta0XATIAOrrLRWfG26to3r2I8xReKRNoahshAjDanw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXSSUmQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXSSUmQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AA0C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720924822;
	bh=8Y0ga6L3Wt3wZqY5Oif5iKO+dLeZlgABYiy2VEU9vCY=;
	h=To:Subject:From:Date:From;
	b=YXSSUmQz4xeM7XtIf4SadBeYphlZDAUrQFPBbSdOM4k5LvFpTrp2XqQPAgoCZQGNA
	 rtJBL+YdWQSPIOm1+sx8bnhtCenzffeFK9c4qhC+0Ne63PjqSTaumrT9MCOXAQ2JpJ
	 3OG4HYXbgf1/oUgG4+pminc7vIsq/w6CZ9NMPMXR87clxRuG0jVkcFriocq47H4uEG
	 1Vdh6oBT/4M0yhqSmoVoQTG6asRny0wk414waupcEhKMnoO8Ntl/S3gP6wdYNFW7TV
	 PrVCvxDTgmY7OkSSZGZTkcK0VfGRnwpTEmGgCyKjpeDghNJ77DWtmC9k8hwEFQH0c2
	 aDuzPYpBzbssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67A9C3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092482277.26126.813296010880288223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46725d6380cd88c2cff5dafeb6ff31bd9e3cc75022417b721034bd250c1b4be4
Date: Sun, 14 Jul 2024 02:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720924822
