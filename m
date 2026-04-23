Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E600F3EB7F1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776937655; cv=none; b=tMmQaAOX0LYAOgb194uu0yQIrbA8VxsPeGc2iigbDXn4mSXSPbXi1abSGLS3cRPjNwh81bptrUh9If7Px99WYp4Ywe9nXv+ys25ihXIzHsSAk1+t0OW4DbkZdiZO8lLxlcR+wVBfBEq9mGYQ9N96Bq+bWIWp7IQI6FEx5ZVVo/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776937655; c=relaxed/simple;
	bh=93byOK4xui2L6mdCN7IFAxLqudrb1jAAFuVdEnmtmOY=;
	h=To:Subject:From:Message-Id:Date; b=j/lMSQi2D6wxLq8vkducclNvZduiCfqW9tw0QrfPxNsLUX0w5jlfZ42kk11P2UQPy95iQSp1JCwrYFUqnPoZP1fqNE89OfavMYyNKGQO+8DWbosRQ9wSFsos7FRX3bovsTgGRnIRTDXKFAKUOVT30xQvhGhAQNXOq7e6hIE6wCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIEX5I9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIEX5I9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98DAC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776937653;
	bh=93byOK4xui2L6mdCN7IFAxLqudrb1jAAFuVdEnmtmOY=;
	h=To:Subject:From:Date:From;
	b=NIEX5I9G82MSSxZK/0Od7vt0C7I8tKc68h6l+5AFo1V/OBQatUW3hlFAgkFAXOpw9
	 8OrT42xipoNzU3d5Mqd3hTH1Bb4lxtaB7CAVWB0BPNkMKRunKimbGXC6WzVXy0NrW6
	 KJzOgsQNvIiZAZ4yMNi+v0780ejkOxq8HKbrG3LmpRKxPUhJnuMkkqZ6M+dY7kDY1J
	 z7ZTVtfsTxm7M2NpccJWSaUsLK/b9tOK54UQURuvwcj8WMUmZ8Zgx7lT1KXPXbBPe2
	 p8Zo6jUVprh9S7upljryOzgxJqS7G0wge0P03vZ3ObX2Z/VH6Y9JWMfNI1pqFPhCma
	 tU2TyKR1kcS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA80FF99344
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693765368.31347.6175460014257045761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b678cc98af96ce18aca37356ec54791c21a3a2ccc654fc9b7abcb596204a3b8d
Date: Thu, 23 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776937653
