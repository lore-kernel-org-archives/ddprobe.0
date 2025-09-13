Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2D1F9F51
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757784595; cv=none; b=XmcTRNaczpmFTcaAh+KRuoBXQkQbAbOYQmNU9/fDLhPpAU0BELdBtNyJ7y8JMRzVjqTxOOi139W9DEwOoicL/o89ArUBpWdf01dPeLJZ+2ODrqWvAK8c+K3nJedqDNNgTuf5CJMmSpBvvj6BpOXIQuANUukIsNsWS41pMjvX5uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757784595; c=relaxed/simple;
	bh=rLtIjNg5/CbqkVIP3KuTzpjU2jdUXjKwm5vHI7uzi4E=;
	h=To:Subject:From:Message-Id:Date; b=su5dQqnRy3YPhGVDEOGmesB1/phQojrgUpN8Ot4F2pnykKdvicQpHXjRiiV8H0yHb8DUaWUrqaVEeY4I8FqlSgHJrQtUuXKzX4gLIYFEfA5KgzuIvEJ0EXDng25erb8/wKvNqe06leScjE48xbksZCIGnnDjnVZFPCSndZ7EFm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgCkQ4X4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgCkQ4X4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A86C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757784593;
	bh=rLtIjNg5/CbqkVIP3KuTzpjU2jdUXjKwm5vHI7uzi4E=;
	h=To:Subject:From:Date:From;
	b=DgCkQ4X4C/UaFpjtrEN/dSrZlQtn9MMtbIE2rXKX9JVllrhvhuNK/mrOzLoeNN4S6
	 +d5uShrnrbenxHfEbt7V44C7jTPtEZRMiMslZb24C+OPvBnA6AR70k1ipzUF805tm3
	 yqDerYpMx6jYLUXsGu6yysgg6bCdqOH/UUnGQniJwkpFSMU6DZ9BYRNBSekcHu+qpb
	 P1CIoQtqkQtj4pIB+ygvyoHMMJ5TeQjBzEUGnMaNK3cSNRuYp0pkUEYh6tl0clN0jJ
	 J7vXR1u20rL0ljGEUHT55goK7UWa/TmeUw3BQqDW5/inwmpn8L97BaTKkk7aPf2xf1
	 Dh3LIBlYEPdJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150CCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778459357.19924.17745642014403485187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd0ed3f121468cce11f335f60234a7a4225e2163c515c58b4b5d1357302c0ca
Date: Sat, 13 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757784593
