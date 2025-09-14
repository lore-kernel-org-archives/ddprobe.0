Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062BC221FAE
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757855995; cv=none; b=FLcJhrAEI2+AiUHKHlA4rWRqxn+XZXVSIlIlT4P2HBEXSqSHAYQZ4seSiT0heGZdUuc5ljVoY0nA1av9nWIzzYzMEGDEwhmbKpTFirwTmQCn9O8QgyljpP0yOxS5E2ZzAaQ/I9Vf7L9BzmcxKxpLo0yATGUdVfjW42aZL5J0Ukg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757855995; c=relaxed/simple;
	bh=o9Q+d7j/KjzHi4bdaPaMWmDoRX04sXPwCDyGh8RZer0=;
	h=To:Subject:From:Message-Id:Date; b=b6eHljhk3J7wlUKsCkpBxnNgwlE6+WES7PORjXhBAUjGpvwHiJj2RrRA+er+6iXtLnl59IfWG8jFGrX2M0GNCNibYfc5JGQMyOl7uu1wqHrwovt4Ced3jlLjad0+bo5kJGybc/A4gFpe0PHTP/8tWuDoQ9EV1c9kP4mePh3CPt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9aOmFfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9aOmFfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCE7C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757855993;
	bh=o9Q+d7j/KjzHi4bdaPaMWmDoRX04sXPwCDyGh8RZer0=;
	h=To:Subject:From:Date:From;
	b=F9aOmFfB0f86/dJVnAym5Jk9lRLe/Re45qHNknI9Ndb6CwSg5AD/XtriHzvG6n/kL
	 wgsN1bT0mZ3vTrbj4DLQGVZh9ewroKEp30DpjBj5O43dgiVIvxlFpQTn//7hja4LoX
	 ih8SF2ZmYFsosHjUtUNcr7lQr9lCF8bfL92/6hOmwTAtlugnlZR71iIUfBwjIHy4sa
	 WDf27JiWHvMs+B3vY7Mn0VRn81zCKOJ0+FAOSLvtKvkIr4rRNjc+RUHF1WdYze7D9Y
	 aTDOeNZjMW/2Fb17J2wUeqMdKt5ejOYMYntlY5xN62bFEytcLxTmCvdxf49fSpDLiy
	 9mxSdEJnf4Q2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E6CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785599357.27313.4665970172790662062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b0baa995c7b0bc7f3fdad587cea3cf02ac73487b1d9d3ead3995ff10d4fbf4
Date: Sun, 14 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757855993
