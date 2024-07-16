Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF8A3FD4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721092523; cv=none; b=X7Aojn08v2IjgEgiG10cl9SJRZW1v3NtNmi2QF7jLqIw90h/KMNNXy30hG7trhld8+NCp0yp9J/QwHAhznwqLafeI3ssG+2gDrY0ieRTBaCMB6IRkdUwuT5lT+LJPv/8PEryWlQM+GG6I8BC25xgccThKnIQxJDK1MIEJSbkzCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721092523; c=relaxed/simple;
	bh=IwsbClpjskWJMZdPBMpDmwVntG/QLnco1Q3ZrjJ0kMc=;
	h=To:Subject:From:Message-Id:Date; b=guQVEss2Y9QzyqlrwxoxYnIdMKgXHiZ97uVTLJv2OQZGth+j+PQFPDmYyABDv4VMpVwMuC6IBy4pdqSWXnOi11w0rqDWJljVDTFOSW+bA8V+zTJZR9lT2rxO4asfNSv15H3ZgFsv65nzPp19RN2/6aWGMnWzWAIndpaz++i8nCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFbuQPAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFbuQPAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BE8C32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721092522;
	bh=IwsbClpjskWJMZdPBMpDmwVntG/QLnco1Q3ZrjJ0kMc=;
	h=To:Subject:From:Date:From;
	b=UFbuQPANtfKpc3m5S2uMDbUfqAo6/Y+HvzfMJ62EmBXuwMnrgqCbPDAItlE2OHlBL
	 BKEu1QYukA03IuyjoUB+rEjiRuGZHr6jqm0epwzPuZ8tJGdtPeOvZ7wr8DDJGEeCDU
	 Efx1RgZEwpwM3JpK90nPFXOsjym6OiSW+oSExHEeEuw+jPnxME4sYomC9+VVYLCGD/
	 TKH8EuBbIu/lkhE+6InFHPA44f6HROx+nDrjGRopY4zoX/YNrr5aGzNP4xRMLfCZoa
	 dVXu7n0SITlJdqETD1jaxVQ6qFbET8nYIcGyXp1/amtEmaDb+E3tb68RV8a0KeQMJh
	 Bf5qvIV6lskqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96FEC3DA4B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109252280.24998.2651250439192966962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df5fb136dd29be13db120a5aaeb840ef4b8a02c16f7ade2c7f383d7d7dc59a1
Date: Tue, 16 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721092522
