Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1D93F9F9
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724394354; cv=none; b=SCanLeHAqNQE/6VgF79JvQ3LSqi1x33FcY9LCCGkBgA/lol5spxQrE5ahTnIGsIFVid+3OYQ6j+9RAqbf7KUhYgQnybyfXVKzFBv05Zq0rkauGTrg36mlu09InnpHdmAI8cTtF8p0RIaEIMyqPQIL18KOwvftw7hS2cd0Jss7sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724394354; c=relaxed/simple;
	bh=shpqAqEv5np2rSk5B6xrws4BXwIBOlDGe6Yn27xwuTw=;
	h=To:Subject:From:Message-Id:Date; b=JwySkk9vOPrpXAkH3mwIFHGtlcV6xATL//HUHeHmBXl0BhETj5AUi/+hHiu7YJsego/Pw8hSxcG0M9dXhHvxmTHmyZDZ8U7fMmpxd2uLMHYL5AIjNbIjJDweSB88BQGFkhIQiXxDVS1+lvs5q4cFjh25uljRG2EgzD4xxS/Wluc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OplbGyzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OplbGyzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E3C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724394353;
	bh=shpqAqEv5np2rSk5B6xrws4BXwIBOlDGe6Yn27xwuTw=;
	h=To:Subject:From:Date:From;
	b=OplbGyzNrNeyIVfC/zxzPpO2fUycK7rlRx1XAXyor90BRBwpdx6yrDG/as9paxwUh
	 CNs5gvwFD/alTV1+Sr65LGGOxMDOZxwkAG8h3YttaMvSHItUUTtXZXEvOrXjHGzgW9
	 hlAuvgBnXOzrlyo72IrTF2dYoeHwgeb8Vp3aIlVQIUxRY8hE0llN3pmBNxxSLLz+Ag
	 m+A7YiPXYGz9qKtRajbjg9JSIApz3LdIwWk/225plL7NMaQUfZmG7rXeiRgU5v4Guy
	 IGj4Y+IJXUapsIKww4qwBQaU0Ln/iREx9elA0B3mp4AbfXw/DSAmDf167LvGrwZbsy
	 brbZlf1BO6b6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1FC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439435359.19607.2874740405200855031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548eaf7856695b7e028bc31d6199c625defeb092ee9c7926a709c6e37a3757e9
Date: Fri, 23 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724394353
