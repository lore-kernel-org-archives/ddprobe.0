Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B71217E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733597154; cv=none; b=ZjixrlEaMDeJ3KXXXWTxI6ELWiAgEzp1DI2ALSd6uZcEEzFDWlEVaJxWkSN96oIRnu5+vo95szcka1eO27s6lDSIPdk+Vb7EFq7027/Bx94NDDQ/wFdR66O65VKK31NxrPPcxb16/9gs0YHmA/2o9GCOvvuccPWM9pbAQ9zT20Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733597154; c=relaxed/simple;
	bh=TYMp96yhsIxPuqkVcocMC0eND7T/Zrp33reWBHrfo0c=;
	h=To:Subject:From:Message-Id:Date; b=t0cvLC74Dpy1Fn0nvqr1voTtw+ufqwFr4JZCl6LzB/8V+7pE4DCPwiCapc0uPXJ5Qcdrv+ycTvs7aw8lZUIsRfKar7P7AiybNp3UPHG97MQUwwdArVisEjTd+pYMfiaWfxaBqb3/ZW6a8R22fyj8xXSYE7q2FNH5QwiRK0Tb9+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcRkutwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcRkutwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1D0C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733597153;
	bh=TYMp96yhsIxPuqkVcocMC0eND7T/Zrp33reWBHrfo0c=;
	h=To:Subject:From:Date:From;
	b=gcRkutwDniLS63SqcRUJfW25YTXgXoBYjsDuifo1PDm1opeuSdNiGTKbFpG2uwtPn
	 ZsogfnE43fJDOO7BwZNQpppzAt1HocDL0mOCO+/0x0cLd050jOLNODBw7UN3/WhUZ1
	 wAeP+jYafawD98z3vd59bmxN15WbJE576k4Wem22L39BHabbuYPmzicUJ6NFeZkcjJ
	 1K2tGgnNNAmaxzkrvjJc4pivYlwXJoGAYGEkx4cSDUgF++C2f7231Gg7jmWk68Lr27
	 t4bbgAuShdTgvxHrOR2rYkF7X1ZE6X7iQq7JzRIxlzpA4KGwC7rHeSAsjxC92SNSQu
	 Qjmx6JKKLpUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C477E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359715359.21188.16082809811423518573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9869db92cfccdbeb12c292e73b2af047f3505bb758c9c7855bbb6373699151
Date: Sat, 07 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733597153
