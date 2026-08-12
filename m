Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE7137A83D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786546234; cv=none; b=YCwRuLwjVdUD0BrivuHgqI4laT0uJSp330adpqUTe2LZ16798RnAPUOFEFCN7rBWtjPuNezq9PykOU2nnXzXQGaf53P0bW7tvxPKkGk0CYcWa03JFFdLnEoLlhbEVu/tJxj2ceussYcTD8XIRCTgHun3NDuqqVexuDl3Z4YSlIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786546234; c=relaxed/simple;
	bh=lZIXS8FtsiqKPgQikBTtJXzdWvxlM5kGL5PoaJjX4vQ=;
	h=To:Subject:From:Message-Id:Date; b=lThq6NIyo6we6PZzxmAfk4PuxozmMu2v9lE2CePmeuikMSh8FczBlgTgn3hD8szYz5YbbFRXCghf3cz4QmEMy9evOJam67K/fxXs5ZN+Y3K3M6YgMoS5lQ5/5F7+kaaLdclQ/1smG0QxghhPu/qoxjtIbEh3PH+cGf7bz2DmT7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm9nDNjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm9nDNjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA92C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786546233;
	bh=lZIXS8FtsiqKPgQikBTtJXzdWvxlM5kGL5PoaJjX4vQ=;
	h=To:Subject:From:Date:From;
	b=qm9nDNjh+1/Z4hKWq1aFpZlKrub/JlRmS2Bj0kVTKQrQZcAZ8RaoiF+UN2DbgJwex
	 u+3FP9jkFBQ2C9ymDmbxKz6+1QUhFw3nxzo6/Q2lZvUQBlctXXXfDjvnsoDkE/InAw
	 LB4gu9HfxzAiDqBMNEQN7FodlR4eLVhL3SR1TMh6w004Ip5Zu0TjUsuXNPUuW3I2om
	 ziVruwDVpcH/DkVxTLDF9rXOTuPoMtNmwCClE9vui61Ub3QMYCBxWID1zonl/tAhv1
	 TFK92eC+AqswWPpS5Jt4++FjY7P8dnryJKercFjis6aPXnOcxOZBLFEDafMnjfA16A
	 Npd9ePoSBRePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA4C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654623369.15348.1419988459305624462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5bbf500e69074960af8bff72089f14ce464ea5fba032982d215e4ab22efb9fe
Date: Wed, 12 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786546233
