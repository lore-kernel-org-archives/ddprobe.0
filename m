Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073392FDC52
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768818234; cv=none; b=n9FUpgP7EIA5l8w1QFpbY+d3C3nqD21oixUj07izEr1onM2mq0txAaXPx+VpC8MzjxieOi7/retEm/DpMlupqRxpp3rLkAkvm4PW2i7114OTntccw84+ExPfNx/XDcmqTHQ1BbzxmkPcKYh3gPUJUxxcHbCgy1GS8rEBztCd2Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768818234; c=relaxed/simple;
	bh=47U5oSZxvv/A9nVG8SDHeBEkiFS9ckZt8hXnJ26Ruj8=;
	h=To:Subject:From:Message-Id:Date; b=nuuBf0Nrcs//TVE0l18T+6CrtFDKLFz7iCbIngPad0yk38kMq7sZ973ENLhc+4n/yY3webZ1xDp60VriiipkJDvDxaYLiFVT+m6sgIkN2f2NK7iGwra3JzYkpjSArRrBALyUhEew4ZR3ZX182NWbFw8v471I+Yp7JxCqbxzRvTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXn2OGVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXn2OGVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0470C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768818233;
	bh=47U5oSZxvv/A9nVG8SDHeBEkiFS9ckZt8hXnJ26Ruj8=;
	h=To:Subject:From:Date:From;
	b=eXn2OGVwtei6+iWNo7JKnof1tVjQ39XghJ93Rj/y/F6Snz4AY8CG90+WYmYd4UsX2
	 dLf8BUBQZJhzd4cX/S9D4yV53hwNxuani99nk1p8d+1Kb6ypznDJQQ4A9OFiGcRRaD
	 Uo4T0Rl+4JKuGbE3A5JzVBY7vU2xjZpAAni0hL6aiXOb0vzpzo9jpQYH1sITmJ7Yti
	 0D8PNs+rBW1gYAKKTzFW85MpjrhVB2Parq+rKbzSs/NA1nGRXiu1PSAroQneA2wFg5
	 X9ZM6Zfd3ubsYIKN1nVv248u+asYolrg8f7m8fWI1Y6zY+gGnnAvVKl7jkLjKGi4Q+
	 OeXiQs0EZM9cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F722CCF2D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881823357.22975.1304609427506043671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f88b8dad630b767b679c82c1bf0a86c93b0bd47844aa1229589d400de33a0f6
Date: Mon, 19 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768818233
