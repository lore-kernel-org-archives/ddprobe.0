Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F6C74297
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717359323; cv=none; b=FDUjOWGCHIfuriQxlSyRhnwfU2vRjrQ26oRg39DgEVc3Xcsku/NtcgpWHB5dZdpjnnGxTafRxpZugOx1bR94DC+Mi8ef/Ph/wUlzo3ieqerwGBN3+PVHzGNW4eH1c+ZEFOvJteBqTTxMnhnBqOZoaPYGwNiXbByhxqCkjMdKhoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717359323; c=relaxed/simple;
	bh=0q9Fuu2hxRGODbqRQNLdkQGYpuLDSUZsESoFeD1rOl4=;
	h=To:Subject:From:Message-Id:Date; b=AAF58pzlEArTR02criuFL+6sJsQMK4ZkXz62OC5fAmVer0nCU93k3H1QdiVFTKk+CKRD99gzSRp6I8bImHHQHq4tN+gb0YD1NOxPq1WVEcIgeDSZW7EsC96bWPm+cTawUgkElwoWOfo4ZdTx8NsrgW37XCf7IfImhT8Tvr4qRrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjiwVg/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjiwVg/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47C0C32789
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717359322;
	bh=0q9Fuu2hxRGODbqRQNLdkQGYpuLDSUZsESoFeD1rOl4=;
	h=To:Subject:From:Date:From;
	b=hjiwVg/TlASI6CQ2BqVXs2WpJO/h3GAEImAyEXRY8VlcvMLei6nwYTUHOaFgU9urV
	 N6jbX5GzQy7FsWsP8HbEcmfXslZuVT1003cOGNcOdYoTbjQyTyQNS3Paq2AbVci7nq
	 c2UD0BLoMvQbOkv34tcWW75kqaireX1jvPUUxzXZVNb0J56G7SL6TSVPf6zlJMTALB
	 JsUEAg6LtY22xRLmKnSptkEMdxZFok9VmwF6wIxkYNjaGM9JorDSqZlew0oiCV4UW3
	 W0mTfQ5ZX1LIipXVUcZqM2n2xElVWW+Ruz986eybSWEiId94LD0Yf7+fSqtMOT/pVL
	 5FEefV7Sq7uXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD852C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735932283.30480.7332560206158614732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1281c32ba7880f2d8d4dcd030b812485098bd9e9a9fc5ad73324fb1af6fb3476
Date: Sun, 02 Jun 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717359322
