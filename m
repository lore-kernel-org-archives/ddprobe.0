Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3FD1C84AB
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775273734; cv=none; b=YFevRAHm4gT2n46yvcowA6eaBOvfgyXYIE0nv6lTLZS3boN3HBTUrDZItscGQalMPE2qFmXk3hZCA+47XKhcPwL0GnnZKSlC+cdia82SaWrN3Dip9+vaO64nz9BLhSHXLOQuPc8oQrL7HEi+XXheXe4SdUI455HkkTXZNWjRcfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775273734; c=relaxed/simple;
	bh=iNbNCtdHpOqodsZfHxHlNYzjVEaXFjBQF7oTpu5kjUU=;
	h=To:Subject:From:Message-Id:Date; b=kWdwJj6Lp3KBQasqNpn/m/Q8sgExJlTqSNPqbhM9cu7c+3t/khPtkYQmqmCpX5NQuuwH3p1818HeOWMBMz4FBTRDudhXK6wFmxRZta6s2JFYWI2Ts+n7jOr+90EsuXGja3CynnPd0xmwl8uuufyS5HteuVcSolHgHmghKzXWS0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTdRHlRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTdRHlRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09240C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775273734;
	bh=iNbNCtdHpOqodsZfHxHlNYzjVEaXFjBQF7oTpu5kjUU=;
	h=To:Subject:From:Date:From;
	b=fTdRHlRt2I/bcbF+i/j5zlf/aqz1VJET16ybaIHE5jlB/ds9Gp4Pg85BuElF9HQzK
	 ewadvbVmu/TmeV27HQXd8FNXCIHDLMQomSCWPlIupYLCigM9/OvZ9ICbqX84Xnn+mv
	 fQXkqdHeIHSNy5rs5nVzZ0fNm7MGjxCRdOOWci6bal+2dDQjSHMB7aZhQYHpY6cUnQ
	 SOGM/m88jHFqe8N7Hz0OJaxp7dOoIYMT5q3VBw3WXgOEwAZimvnTup8Cg0PiJRc1zL
	 pjGH3V4RO7ovmQ23jTCwN1PjoGISNP48he8hKhqpr6UOch+OwoaZg7X3miqo853rtc
	 JKN70kx03s16w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B59E88D79
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527373379.10950.10385516535018509910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3196dfcf8ea29a4547f47fae9daffe44956cc17fe940f09ee60302f69eef427f
Date: Sat, 04 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775273733
