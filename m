Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54D157487
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759144194; cv=none; b=cRsBX7bjToW8TsihNTfnYEbpxxJSArfONxOuA8N7XWwjyul+lq+aXV0qHLAYSf+Niw+RW08ApJj4CQBi0i5xYuPKaGcpIcFRmgUqensaEcWHinZwRQ3CYhcQT+xjGJQHcrwyLxtWuX0Oi8OkApyrhnHM0UwcGU+P8oj+xiWSKPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759144194; c=relaxed/simple;
	bh=RAn4YfR/qEPDHF3HaYrIBhIyFz0+083436zrm6h58QY=;
	h=To:Subject:From:Message-Id:Date; b=gd1oq3EBWZXEdr0crUkUY1+WdoRw2EOzJguZpTGabEhlYDAfyZ/ZNsEa91fLKvv6+64Lekz563rJLaX3+tq4p0neBi5Iu0vaXrISt5rSrP0vJw5pzgOARLXJmIsMJYlWkvO6PC+4eNdxJBHFRcaNUVbdhKNtuKJ64+n+0IXQjWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAjD2isc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAjD2isc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB24AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759144193;
	bh=RAn4YfR/qEPDHF3HaYrIBhIyFz0+083436zrm6h58QY=;
	h=To:Subject:From:Date:From;
	b=PAjD2iscgj0vW9VSqcnzw5VVaECHqodLH7jcSfFZTY1bo/Hfb4g55+YxRC0empvZa
	 Igys5AL1ZcSlhLkLsLay+s3qDPBHbgFP0XSET6Dms5YbnnpDevX+y78KI1BISiaaAf
	 /GSSI3PKuzeRB/Q6SHzjiiTZ5Jwd8/h2ucRkkdJG1fw7xQUXDsVwXsJiCaiCm7lZwZ
	 NkneYqnTQ9Ri/DU4vHvUuu8EPZyVMzAXNTcZt1kRpWplz43o+x7nj8uUDsXfPzyp7Z
	 Fu2PFowKAiDsXnD0MUaWdwOFrMI4j1cMEgcILPkpJ+MTFgOmJHpl3iXUGHUk/VCxXV
	 HZRKkjWWu7ZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCBCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914419359.1126.13973428146968289221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce807c128d96349b686b6aeecf4257f798b41aeb13521d20664edeef5629af9a
Date: Mon, 29 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759144193
