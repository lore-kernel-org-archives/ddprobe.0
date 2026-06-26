Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A7149C6F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782449854; cv=none; b=XlOlvNlYxGDiplUAzp2CAPmILLxCeuHkU3w+chuVlMLYs1inyXMUWdxx5Zb+sWnO3iEPTOkkPwHgVvcbtpUoQCRyhDSz5uLg5ND0EGs8++CHfRzXOPFG55MTxLag40zct+P2bNDJFMNpWeca6jabmFXcncLJJgmmACZV+IEPdgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782449854; c=relaxed/simple;
	bh=HvnUtPn36xATWeQ/uZ2ni+siodGQOWYBk/DdeZjpZ/g=;
	h=To:Subject:From:Message-Id:Date; b=j6RYroJDzj/cBcQMQ7RagUwoDLzqS1Tdv/f5QpzPxPGeBgFxh+CTI/H7qLMeSdvCA/1HiIklMy37skD6CZBGbIrQKvnr8rE2ntXrzfQ/AKTSCY5cqlMIvthQuF6MKxPevNAq+9TD8VSB9rGtZXuI+BgtWxx2E6mNWoUU3jevhKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbeuVuA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbeuVuA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FD3C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782449853;
	bh=HvnUtPn36xATWeQ/uZ2ni+siodGQOWYBk/DdeZjpZ/g=;
	h=To:Subject:From:Date:From;
	b=XbeuVuA3EB9lRDCYqQDt5dDLXhlli/3CwZ9OsuhdbuYSvIgxxyzTbwfq50MdJgg5k
	 eO4A/DJAWOM16q6roJ7pwkLLunr884ZG9FX8CGcfso4Sv2eUGbCbtkUE+3w/IGGZOB
	 imqt3Jo7Njc0keQyzfGIeCBuRwlE6+A19ooiU4r3R9qWJZJ+kxvKUG+pXfIytf9GSG
	 5iE+gOgquuj+nl9/8ORXRwQkkdfuOIfcMA86GQPK8M5QT5wwY7mgtzSm7k102SmWCK
	 Zwkae7fWDlHlrGxyJqD6pgQo0uqD24LXl/J3VY9vh6rl7rwqbITQlraHOAyF6ujJb9
	 ixfaM5c+65kgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995ACDE010
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244985368.6414.14365419194426600058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f64de1b41f5fce7f944af14bfaf9b2fb5f243f3da6d989e2bbf33415b9e4e8
Date: Fri, 26 Jun 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782449853
