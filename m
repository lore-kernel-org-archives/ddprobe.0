Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C864371861
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774790094; cv=none; b=QwnuEJ+Hb4u6DeiITI+myIYuiUnL4OYPtzde7NQVm9Vmou26KtP1eH3W81SObIp1vv/E7LZ9O6M10kbF/gujF4fghHqgQGSQpDnD50xxKx1y3ftqkLK39JQ9nAxCk9mzWNNMZbEJ+UodV6ISyg8pZaGQp3mScbJCU9h6zo8EHIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774790094; c=relaxed/simple;
	bh=iB5EHni4kHE3LVNkPn6ja8r0zWrLdrJAuhRfEW85Xzw=;
	h=To:Subject:From:Message-Id:Date; b=ORv7lxi+9Rg4RLj/8M8oVQ5WlksbyXLCiInAWEZkqHOXt3bqjsxLreweIiiauB/acpcbfDrFtVh8B0X/tp1qrdb2cP1mOh98DRaISFdUCJsaacMJrBMO4TYTYmr+bKg5duPvWrzCHmrkSmlNKdjrcjxICauerk2ecWpoFnLVcME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZ6hIee/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ6hIee/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D48C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774790093;
	bh=iB5EHni4kHE3LVNkPn6ja8r0zWrLdrJAuhRfEW85Xzw=;
	h=To:Subject:From:Date:From;
	b=hZ6hIee/wpegonxv7MAoZssXB+wHbnwggmP9sjHpPGY/jWse5HHX0j05FQlPUb9wy
	 70rcjG2fedowWge05Uic80gxTlsPqxWIWgIg+OPDYKVUWX2P5IbSseNhBgjyODRFZ4
	 crORrEFZL4jvX89j2ChtuwHUkkq3eAJ9bqdXtler168oufhI+DjHxX4G6jrrtlvlrr
	 +i9HnpHeaqSMpmEJOiaxtkCRMh/wzAUBliA9GKyczANziV42lN0RAfl/78y4vdvgJD
	 nxGwMQY3cyMfABJIRa5kRVUPhcpJBRnJ/RzBtir6VCE9BHGFh0SFHd3Fp9aqT3JAJI
	 Wmmi1gt26Tfjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C0BF3D603
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479009358.10042.12900953111609580778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19cdec9a2858d8697935b821b2afa890361f13c31d939878cf1f9a6c48d7ac2
Date: Sun, 29 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774790093
