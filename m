Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1F3303CAB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785369034; cv=none; b=nSNa0/5QxRvFQ2o6/ImJ9Z3YXlYP2NCzBQXewV9QfCVg6qN6DgFDc8yYaYKOodIGTgk5cqGOVlYeYVvGoIr+BnD8LMQhEp6BIvWMgTonWj0xv320QyC9anRah8T2wrB7SNB8I1Bm3zQwIuTXzCReHnGEwfFym0RcnTCTgUUITVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785369034; c=relaxed/simple;
	bh=tXGMg/xo+JEIxPFXcih2WJJcbprw9nLfMrYWZ2WCwto=;
	h=To:Subject:From:Message-Id:Date; b=bejIcoI9qfPIxPYO02eKK8tAxYFBh2/+yJEE/MfQNqsa03l5bpqn9y5fncdNs+QInDoacutD5hdi4zRnJGk3qLBs9i28KuXvncZdmfcLz9dd8tg5dc1ms+sOukvvsOznszp38S4TcAa84ZN4LCtjuA9wS6EzSfgcL+BTjK6Kmfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwexpVyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwexpVyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C27C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785369033;
	bh=tXGMg/xo+JEIxPFXcih2WJJcbprw9nLfMrYWZ2WCwto=;
	h=To:Subject:From:Date:From;
	b=nwexpVyB7DI0KeXVWgUhj7YJjhtZvCN/qukrv0zsH8fWWOKQUoiKDRCGTbvtOFlFJ
	 dPVUTT9exZSwVV94WcjeuwzvwVKl8jhmPbBH7TlmdWp4E8KRqoJv+aGvN2Td5wcJn4
	 bSiq61+bOMLab65fR0MRrVkAKqbyrvYXW1H7pS3klWi/RjuEBnF207/jfvyfZTzZ0y
	 cc8gpQG3Os8YQr+iJgc5HbVW47PwLdFR/qYAXMKJEjm+NOlMxTaHN92OjIfe2MA2w8
	 cmatRsZAQ22NM64RHqovKfqYDWcF2vkGGCrod6Kp7xvDKD4zk1k4ZIk56XWLlTHr5I
	 N44JOuksIQBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3B7C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536903370.2587.16573736640971137245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e144340cb6db03810b47840718fbc8b731ee3ca890e2f4a26a6e03b68efdeb1
Date: Wed, 29 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785369033
