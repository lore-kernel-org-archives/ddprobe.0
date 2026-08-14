Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F2733B6CC
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786738234; cv=none; b=mCELEJYAhVysmYrajz7M8Rr8V0B1NBTgirYZcYrvzBRj5wlWxkoWnisRm4+nIwbmaUClUNbqWxkkWvrTJnJ8Dknrkao2XMPkf8KlvhYxAI987iq/USbhs+OVMjVyDjek9U0tNKET3TS0goy/pdekHCmrZ4F03URQ9W+5X+8YON0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786738234; c=relaxed/simple;
	bh=AzQHxkbaSzGupk3+fnF5ymFcPMWkK0vgVbBibxOoKLc=;
	h=To:Subject:From:Message-Id:Date; b=UsbQKKVfzInJy9u1uOZH/1QlzXIi/k3P1v6Shzui89Uq5/Ph3pL9KIWujNKD0iqHqVoWlrIcasy8lpIOFdGVfU1oiMwVdKGlF8l0qc3CJo3RjRvGM9i9kwZD++rwf4J60S+EwXIZNROOYDf3sOXaADA/LY+wspNOrR+x6ZMiKqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCJ+c8C8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCJ+c8C8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38A4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786738233;
	bh=AzQHxkbaSzGupk3+fnF5ymFcPMWkK0vgVbBibxOoKLc=;
	h=To:Subject:From:Date:From;
	b=VCJ+c8C8d89781/WkH82CluoFJid0+ZRNS34KETWC/WACtC1fmp34pXxpj4EzeLfs
	 xiiYP+ciJY8CKNf3oud+olO1ZPWNHpnqaBbKRVoZ9Zo6SAuNJxA9g2B0+fK5e4ne9v
	 Yg8rfXM+//3zFNDsn/3D0yadz+LIP94FoHR7BCXYiqh/uevyZFQuAJ9Vbya2jpKwc7
	 E0e+GBekx0NdR+gE+/YCsxeR6WMfMJiKIYHrEvfE8aJNJ94mb0h8NfTSBjkxodCZGQ
	 M3i7B2YvTAQjGrOa+8SnL9KVfxcdkKeqJ1MYkw5KmrGVHstnzi56OqN5cWYQDkx+cm
	 40Qd5P2fRJRTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFADEC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673823368.21085.12126756560735885373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1bda1312ce5ffa4b59810decf1e9b8ac5fa6c80bd8e3a6306be7600216e06a
Date: Fri, 14 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786738233
