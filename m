Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D8218EA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721791555; cv=none; b=VrZooHcPMfuEWG1Irea6AbOBOWwdHm4NZYaewNde3+rM7rnKveYWen6qnoJIdFohfE7GiVttkhtaFMaLKInn5WCIQcydOZi7Icn0p/NSlymTkIBCyN4g5e6iSKTdq42dJXAwAIlnR8Pj9mmwXh6EEBtVSakAzZ+PYVu54hhG4BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721791555; c=relaxed/simple;
	bh=AeFdvUC85ghdEZQ4GecsoMgidJDaR1p36W8xL8RcCns=;
	h=To:Subject:From:Message-Id:Date; b=u/PMwcRrR0hXrCtXdL9aMKq3yPuWsJ+x3ZgVx1YYIFckXhyC+Xz7fA9FycymnVEVUtq0FntvnAmFapK+kINHtjuAK4UFeFx6XZpPfU7K0+hy1IqAFz4uHPdvUrUDlEgJcp+dvf3Px27Pv+QaXLw3l5ap51bGdQRGa4yeyif533o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfGQKG2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfGQKG2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE80C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721791554;
	bh=AeFdvUC85ghdEZQ4GecsoMgidJDaR1p36W8xL8RcCns=;
	h=To:Subject:From:Date:From;
	b=YfGQKG2ED4nqRNr7sjJV/AzhOLEBxjoZdIcSWv5t4nmMAx4Subrygfl8UeDkeSjCA
	 48q7SnK1CwSI6FgXapVjPt2tey9Ph8ImLgi1NwNs7/FjstnSN3ifvbjnHnzazBDK/q
	 LHvzjm+YfFlvBuUuGgNjwZ8q3UhnzwZh4Ic4fhE8pE9ZV5V4z5K6Qvliae9NAKkttw
	 Lfx0SHSlLwQP4zt9R2l6n0dWMtQK9eZKwM27AqhONGYpbHSiiTE38FjbVPj3Ec4tIw
	 DGD7QvYWoH7NLNrx2cn5hjwBKz2wLkSXwIKj/1cFilN8WLeN5vi38z5l5sKAh8UunK
	 LuTDniGfgiyeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B81C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179155361.14979.14376485252942377231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761f8cbf7d5aaf637df7b69e2789dca99785c272cb4257bbfcb4357d6799cedc
Date: Wed, 24 Jul 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721791553
