Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DB12D47EC
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756874994; cv=none; b=h9e5V71btTnAoErOdWYbS5UR1OgbdRa4D60nQOBMGTfeSYKPDUpiqBtS+0/Rv35bggUAP1iSPAeSd3/MA3mGHbSxBNDLv9AjuUDuqg/ezVbUq83QBBTM07edfTiZNyzR3OwRC/f3kzzcbViF5ptOyc/qi7y/EZUAbeGS1tAfSTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756874994; c=relaxed/simple;
	bh=8JcCzHR2pA8oWO6JEHcQhvkxMeC2LhgrmUtLUy5TXV4=;
	h=To:Subject:From:Message-Id:Date; b=HZf2lJcjVCmavLqMrPE5mxPmxOFlqEbFMSvaUtx4oX3lOtR9jv63oSQPuB97kwMe+JmOZrIMTEIxP15FnmZtvG8ml9faPX1rqdfYl0cpnvPmhbGS4BbyKxy0zDKrevTeXHo0rgnUgl1QVvPOI+ywapZfJSRlu1F2YG8Yn6590bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT/DUbiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT/DUbiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8043C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756874993;
	bh=8JcCzHR2pA8oWO6JEHcQhvkxMeC2LhgrmUtLUy5TXV4=;
	h=To:Subject:From:Date:From;
	b=mT/DUbiWdnlcnR3g4MlwZh2HfG6etyZY7tzmaGK2maVQ73AsPuZx/3BYvJwgwo6jj
	 4VwOoOdA08IGblGE0wx/AVUKZDkDE7rpcnf6XhS8EYmZ9ZYjXLgqveJkvF2maRh8/R
	 QnpqHX8lv+ShQpNCYOGiXsnNI0rt7ePrCQAmyGKAVo3o9Auqv+G5k1099xc5kTvjCe
	 hzGs3WiFjNZbI1qdqOfQ6dgR4yBDxdjXM20kqm4ma0fD9ygXP9ab/PkF5XN7A0qCZ4
	 6llWfp96JQqs+vRSupcdbw8CQwwZhCOQjIdqGWG6uOiz1fii4CqpBqMloaQEsOeLPm
	 W2dJ0RM9c8E6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055DCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687499358.21294.10615922505224281718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b06306dcc318f71dcbefa670006ef00779c748eb2a9b021ee1e379f92e6808f
Date: Wed, 03 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756874993
