Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A702ED17C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761034194; cv=none; b=IqmSB95c/creVfyb8+TxP0c0rMZf+GwdIcWnhU/X/0or7BihWAnDyFciTxfocOWRGJdUH7f3KudaYrdecn0fpFZQK44Zaj6eG80I8sR8ktMNU01EsOybgwJn2smQz5skgVS6MIAr9ZESN8+78/RTZNafGjCUdAYW9qERllkiUQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761034194; c=relaxed/simple;
	bh=hcoHk+x+VKs2kIGKTSyOVa5Qy7EYYAnzK0rD27uMnY0=;
	h=To:Subject:From:Message-Id:Date; b=hIXKcsBZq2pFTA0kEH4CebqwCcox24Igv2jKAB7X/NFndt+UJg6U53pwpJdkgOYd2vURIrYp38QZewifKUJ0Lxnsl+asUYtAVha0qWN+FfkwLHQVpwVY3oea13QP+pmd3OT7smRXSpKEzS4cPLQfchI2g4Ty6y4V7IlbqRoDO0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJ6CIDXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJ6CIDXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F48C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761034193;
	bh=hcoHk+x+VKs2kIGKTSyOVa5Qy7EYYAnzK0rD27uMnY0=;
	h=To:Subject:From:Date:From;
	b=sJ6CIDXTWs0dFjgqabqAUi9/aOP5mNS8TmxVNpGClMl7egVUNOZLShEnIXgs+ix4N
	 hg1o2Md1TJk1ee2MCeGIqjW9MJXcR1otu42Lme/yAab5gvCOJV4V5tv6XFsVih4Nzf
	 +8SnIo5NeQfxif1ilUqnTG2bizgH30vrSjK0eBIFHpE2m0ZAdwCsQ+Rl2pJwjdsMFp
	 5GZcTpioExdG051X+5sOJVzQnEg8h5IGuZj+hFxR4y6g0MQRos40HKVYeW7IrkMUi2
	 8Vrz7+oLL5odmfsIk6jb7ecQOef119JPz5LQg/H0RQ21+SjOqzWypHKHdcA/bh/dAl
	 SF9JiyfBae0wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F2CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103419358.5415.1247214469768046226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7bfc3ec735241d3c7c019fc90266c012250c489ab637e28d878f75f38d9f0b
Date: Tue, 21 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761034193
