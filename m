Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F2323E325
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782422254; cv=none; b=UjO6YYPOFxkdAPelxYTkMZvl8UVW9wkf1zRViBRQZFPfNE6Kuv+3CNif1vu69oh155JhlLxbvllMNnF3EkZRfaoUeXUkERhdhUo+0fQ4oRf1g7+2vnIqSfgtWEWhluk/43iHb6OpKHZ+zmR7ZDFh66GbqYl8KAJ220cuVdBYpuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782422254; c=relaxed/simple;
	bh=BQmh0my6Utx8JTvdoFX4j/v6k8J9RiwN5hiLNxBNoig=;
	h=To:Subject:From:Message-Id:Date; b=cAKvAXhXEjtz5ezZBJdjgX8EmwjEjLbAJ0TAUTrrkE98ZSd1LVS7a/VR4F1gVgx/8n1Hos2a+tOFIgqmL3HCtbRx0KgT5Gq4S71n6YL/QhE+k90QEB2DW8y+9Y3tvxa33KQEnJOoErctzTPU88zgyUOA9Kj/o/RXxhOHED0Hjxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd7QdV7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd7QdV7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11987C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782422254;
	bh=BQmh0my6Utx8JTvdoFX4j/v6k8J9RiwN5hiLNxBNoig=;
	h=To:Subject:From:Date:From;
	b=Bd7QdV7bZPcWF3MRC/C97Z8pBId+Bk9ghkTfa7AmRP/YszmZ+wmMSJ2E6od0uJsFu
	 U4c9t77Cp9c+1NplqUM4C5lWtU1EwycTHGxGTHCHSDEcGyzSORDywc8NCPPTj+FItG
	 RfFeEfX5z3a36BtTiOZVbbepqjK5YJPiQCABGSzRBrXa0vow1hQTzSZuWkh9S0OB/q
	 4TS0WbT7lrwyVr1kpKYwAVYaTRyj020jmU1us5dvdg2FwbW0wpgbplC2B3MWq1JGxp
	 +qDA8X7uk7vwd7wGAT9k0TGQkHiUOYTlLrwiPW58DzLj2fogTpqlbNO/vxVpj7oMKK
	 410WdtKPEYlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3CFCDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242225377.26711.4203029941504138862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd99f758846f98e84676bb86648121bedaf43d20b11453ee970dff3c199cfc1
Date: Thu, 25 Jun 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782422253
