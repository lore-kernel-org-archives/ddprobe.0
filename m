Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214C2221F1C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769478234; cv=none; b=klI+qmqAU7wVqEAsh4qhaxFV9mcM1Gv33Aj6AQt4W53y/uWGSzfEOyXbZbLzXZNPYjtMQG6d4lrdovXpOhGgmUl9Tq89cqheonoNDDUbGgTonfwTsMHv8mcs+EPSthPfnFc8r6v+HCjnHsKfs07U9zF0A1560DYQJQKcaZzQaTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769478234; c=relaxed/simple;
	bh=tDVYCjlqEVyzyIfF+uV5BditRqy4/UobUzkM2n0t9jw=;
	h=To:Subject:From:Message-Id:Date; b=iyPHx+zQkGF5q0gf/Fcojp2NN+CePTL5Je5AGweWCOJ2zOr1kWDsc2UoeygxBLUVlGbn36GxTm3BvdpzflnoisTSN+NY5bPrb9+n/fuAdCD5V5FNL89+oB4gQ2FC0Q9gSO04EqRp15tajLz6oEcCFRbLBfrTPdwxp0P7Rs4nzLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnqoHZzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnqoHZzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE31AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769478233;
	bh=tDVYCjlqEVyzyIfF+uV5BditRqy4/UobUzkM2n0t9jw=;
	h=To:Subject:From:Date:From;
	b=nnqoHZzFAyAgrwvPFZlwYfqrCkiiXpQvP1UlNaki2C+MP0Bkpd9+cvpgPQN9jxlcN
	 f904MvxE7k+APBFjH735Bym4LEiHVG8j5dNTF1A91bRekwY1x7wQJlQnFjk9BFyKni
	 XWvlLNQ5WtoPZpeR+loXFcXPsyAWZS5cFWuGuqPeyZNC7NnJMqv4zyUz+TTI1I/H1x
	 tbuUiWPs/uxTOnIVFDqd0DlVHuvoUGl1sh1e/UEw2U2JHVyKHd+8qFrYMU1kskmWnI
	 8w9KgkkFQDuqR2wNJ+fz2JfrWrmJY7FgSmOMDZ93UHBaKqfeBEvhDna21Dupmty3lG
	 GOwzZRHYlgKGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD4D19511
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947823358.11413.4853384937555357956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f9396056e9672315aeb8ce84a3a1fadc1640fec1ede2a49669ded963ece050
Date: Tue, 27 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769478233
