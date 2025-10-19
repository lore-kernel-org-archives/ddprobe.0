Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED90B23506A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760866194; cv=none; b=jQ7ynGM5Z7zvCY0fs+kasqh8U+cQCjoU2p/BEc5WDDow5X8lvXHmRCAlnNoGOe0sLjcnEub7yugztrhe9ABAgS+5fDPlntg/t/dpsFNelBCrDV/fQS4ccZx3gINIzi2hv1/+ZHamSHG9tZGnFIWbOPJ9NL8oboBK3+34G+R7d1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760866194; c=relaxed/simple;
	bh=8FcaGOlZsQ36ANP2uHLYoDnwAS11PwzjcdUKYY5tnK0=;
	h=To:Subject:From:Message-Id:Date; b=Qp4Mwif1cluFvP0KMEzb0HhAnj1fvtmjiCI3br74bJcqsgSWud3O9wUMn9xLZMgtmU8sLCma1OW0uD6LTOMNH2Ekb/rqj99XCAY2lPRGROVmeiqHoSjNQ2EGf4SQH5rUDtHTB7aLktU9jWuasmpJeeke5213mXbABtNcN4Qr0uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI1UnHGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI1UnHGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F833C116D0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760866193;
	bh=8FcaGOlZsQ36ANP2uHLYoDnwAS11PwzjcdUKYY5tnK0=;
	h=To:Subject:From:Date:From;
	b=nI1UnHGASvhgdwKL3IF/fU524NH18D2VQGg5FwPvklzEDPaYD+d3xc1yWAhYWJsnQ
	 idZYRHCYKme8Of93SbnS7hnYjIhGn8rwJrozqKHGRzZitM+A0VsbAYXJnotTo+hGYy
	 gPNRMKbHbsAFCv+PaOeH/C25ZWp4M4l7PfkYhcjSI2EHD3IkguDTf8yrChN28R3LWJ
	 sBVI/CE7/Tgvz70xaxOXKxbNr8kLsx7R9tqh2uiNoSaaeYWu+nDTSUg+cccLp3IjoJ
	 5LgWpOdfAKJr4NicTDwzHt/J1SSXbaA5p0es/JFth63dPkTdhvyTTuB/ys7giH7A75
	 v77j8cYWZ5CfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90320CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086619358.24206.16624247862802106815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09522541d723d7e58247e24edd2456f46f79581dbb6114712bd8e066431acf9
Date: Sun, 19 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760866193
