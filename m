Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FE7221FD4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780208674; cv=none; b=KIBUEdd9pK8tdGMv9SmXs5rXFR7ISflROjXT757oCaS1MPN4c5r3D/ef1NWoRBk2mDrM+n4D5ftwHudCIGdXIVWj32PkYpz8FnQqxyofGKQlUDkEjOkljv3s4teFaIDSZu/i6KUsfFJRtqh1IpTsoDHEd3WcbdpYlYkRrIR+aMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780208674; c=relaxed/simple;
	bh=qt34aROs+upqNxnF+MXgDIt/XzzbxUBN2SsvyQCVZGk=;
	h=To:Subject:From:Message-Id:Date; b=Al4JouPogd1DUNOHNu5LjNN3ocQyxXxszV2Ra8TFhxkIS/fJTMLBApHouUedTDXX3HrDSkT0y2EmYEoMNRpHxqCgJxz0F1OVpX40A/Y2VZoxtB942/EGU31B2BfSYXJHqjjg8c3dMBNvq012AjPLyvr6eNQKQkiUnrcSbIlEEBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=us0mu+MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="us0mu+MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0F7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780208673;
	bh=qt34aROs+upqNxnF+MXgDIt/XzzbxUBN2SsvyQCVZGk=;
	h=To:Subject:From:Date:From;
	b=us0mu+MQMi/qdyLQSUhtvqIp29J7AI523o+cFxxbCXgyRxrTJfnoqP1U4yS9X1B3x
	 zbtAQU3fUOMk7uGlSpDw2NY0Q2wpyXo17OMbhCOubGt1qLY8mlWKk6llwJaDvAJC96
	 XpxLgNs6px79i+pSpLqLDxIWnogFxetw88s3OQrtwoZ8sZJhUrFqeS4Sk0ee3o/pX4
	 8+yEB2r++Vj0aXQ8Im8oquKq0nhRATkuk1Olns9otnGTpLKgcU6R3JMz9JrVbU9Xgs
	 rAYox012EwCNQfmhpk82MkCb73hA9hueKvhMT/McCToeLK0FSuGsgP88/0HVifQzxT
	 VJVQ0dvEOPu3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA76CD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020867368.7616.708793170229224220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da67bbf93958f533a174d443493923dbe167a184c0fdd9814e9ca1bf6a29a53
Date: Sun, 31 May 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780208673
