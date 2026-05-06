Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310264C6C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778027254; cv=none; b=if8HvvYB4JBu0Vg0O6W1BFKV/RU1L3XjB4/zijKAe6wEtSWf/aY6NwguoeOS40Gg4sJqPyBMXlg3MConZ4c8ti6bC6Mz02QZGt6T3dqD6NfEx+J5YaLnp9N/7KeSmLYVaeOHW0ZMYAVUxX0c3UBJHfOIrwUilKovOVeLzKACtWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778027254; c=relaxed/simple;
	bh=QX1NzghC9t2JjikPP75Kim8vQ9a4E8EF3kVJAwBIIRs=;
	h=To:Subject:From:Message-Id:Date; b=HqlD4K2noUlVIDkbz8lZsPwYc5nvkIpinS2oG2jNklgpDd+rXy6Nepa36eqV0NxlBF4akLifYwAQnF/QvqnNXG8Grz5omrJOVvBuTPXfHL9tv1Va47MYc6T+jXBxvcnvAAg+XeBFUlAsXWSO/UfCW94AbNXYcVIvwHBMJWkP/Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbWMJDDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbWMJDDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CB7C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778027253;
	bh=QX1NzghC9t2JjikPP75Kim8vQ9a4E8EF3kVJAwBIIRs=;
	h=To:Subject:From:Date:From;
	b=EbWMJDDGMTgtfj07/b43nsu6EumFIVMRBEJ168c5ZFoc8HvJPHrSXOf4rMop/pFeP
	 5JwsJsu7t2RX5b3NaANYV6RP0tkZej+SZbPW1vfoUBmn8I/tlxn8jLQDDMokP6yPJB
	 S+ywQhOeQUdSMBvqxoIK1uX8r7aSyEA0Uls/TD5cIDHMw7edh7NR+zFKeyKrE1VARt
	 7xHIauCpTtKqk/O/xXMJYv0SEutaOddAjEWtezDtjFi56/zACWwzm2UvhNy05p8jOo
	 XZ7W1isjrNIDg78Do77W0tbLl6o6ezIaCPDjta1CLj8mbYC8LQmmLnJfrNpB73bN4o
	 UaPRA8GajP1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C50FF8855
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802725368.15909.15395650458030368993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91abe60cd1ef3c3c6aa9a5fe4b2558775c65cf47736f5fc0ac660d59954d2b78
Date: Wed, 06 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778027253
