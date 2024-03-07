Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3304C138485
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709843297; cv=none; b=G6jiUhNn1DUZ8Sm9Kqdrs9NDdRYCEFlnmvGcwFgw7M2oAUZNM0yBf5hBOiIUB9UwSGVjaZWYBea8fyzgB1T4Cua8popmJIPE21Tdtomwwg091m1HpbcLPP+yHJJmHdle0Lv1xqNQHMW36p4cHNlGU25zpj4bBBMa42MozMRjzCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709843297; c=relaxed/simple;
	bh=IHOOieXiROGLX5ltkZN5GybN0H+ZrRgKerkx4+I8x9g=;
	h=To:Subject:From:Message-Id:Date; b=ARIaAuD5ggqwD6wsic/Wqs2HtIkD3c5VIN8VM0C4TjcfU5Gj2AOKn2sRRrivqhkhNL4D7xPyh4/jO1IWBw0nkbx6Zlw19oFU08sOPLrsP+emKFOY+fkewHr7TXCJ++XE7c6QsEZqtPLj/foCPV0qJyqHE4Kmb1yGnSpgqzG7Py0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDZ4He+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDZ4He+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94762C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709843296;
	bh=IHOOieXiROGLX5ltkZN5GybN0H+ZrRgKerkx4+I8x9g=;
	h=To:Subject:From:Date:From;
	b=YDZ4He+6DMItrLuYuYRFIb1/ga5jy2/8PpGN4SEiV8jqz0jKKoZsLeppzNEutMIk9
	 K6R/SRwAGptDG5YHO/HeuwscytuouyhLLsJPJBV0B1WVkvE1+l0aok0ujHxlIo78QL
	 DhKcRSAQWJyg6lsh7peC5Trii4j08qUeTmM8PnCwA6zSgNUBExqwS5pWsjd+vuowF8
	 hfL6z8+mP9UhWB0WHMTDdGCucwkV+K/CBXSdo8qzk8NbXTZePWWsIiyssFmPZA0jIT
	 IcOsGIqqWH7vL9aVOm3rNClkxHSypwFSBqf0IPsWhv0Gp603QdlnERqCUsni2m8r6n
	 dyduEINwq8zig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F324C54E4A
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170984329638.26659.10367357907156756511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ab274b048f4febe32eb0674eefe14cf0a3b366273db0f7121de3807b65448e
Date: Thu, 07 Mar 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709843296
