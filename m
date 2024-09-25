Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5E91849
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727288154; cv=none; b=qDKsZnxUg01XmIumO39PgGGarxnQgRo/YMoolqnQSgP2BtfuzOsYLI6B1syXsKB9RCWCoj5M7Cf2ML+prixpkJmzlFn/hNlGjC2fBk/5eBjwNgNcfHTUGWXjae52K7onSu3zVMTg5XMv9q0Z3KPKluA1qLQ7IS6+NfDcXUVPQXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727288154; c=relaxed/simple;
	bh=h7xtAepG7PPYvfPe0m7WdUQNrYxJfFOE7BJ4J5Jezes=;
	h=To:Subject:From:Message-Id:Date; b=kZSVsQoF4NiYfNdP65/LM8EbiYfioIKq9oZHZarmewjJPXUemrIjSezep+VMtTCsl9jbbYIlc0MlgTCRpZAP+UJhjEhJm/okxtdb+AmozvnFQ7TxeE+3d9TkSN736oNee9VpH5XdgySkklCUtmdRFuht/1yj/aPqt8MDQXZTGnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H85f2ZEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H85f2ZEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB0C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727288153;
	bh=h7xtAepG7PPYvfPe0m7WdUQNrYxJfFOE7BJ4J5Jezes=;
	h=To:Subject:From:Date:From;
	b=H85f2ZEKI6ccoIKKCJIEkiRXY/wRyloQ9oAO4YGY1gkX28LbRYONmpwmIfAAibiq6
	 MFeQvD+88wVaOQ0L8yMawStV5VJWtyNbqYWXMEikokIWm9cRpc296h3DAWCRLBv4Gk
	 8/oYzEHXE3WiHA+qVvgr2MaQ4bfCrv0gMnXE0WGQcrljHhrtPakqPRyuw+F/RaTb7B
	 REzk5eBbbFLT+gR6B2AdxYqe5k4hPZd5MFnNQg0bMsmbSKbqv6RniO3nHbr5UtS7At
	 45HWBt/sNua5v7tKFeNdOI+qW8B5u1uV+cKyck4D5u0zyW3cRxM5cOFyqxSagrHolb
	 2pb7gLsRsQKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96427CCF9E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728815360.28683.15428180102064964232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bb6d2df7d64b121b6dbe425dd4126add99d2405c845899a529a039bfb61677
Date: Wed, 25 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727288153
