Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEE42C6A3
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719767663; cv=none; b=A4raDXRZ5yK4xUbpGQETOP4lXfH9TgjulfxdVxWpOaERex22dAQh9qe+v2Iq4rNUaHUJyjQu5PIGqyX/LAypQw4kgdJyN5W3jqRqygokrKqbAZFdJjuU8d2RUO3aCiBcEJeanF7BYjggIuj6TA3VAFzpvCkeMn9L94P7TREX0J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719767663; c=relaxed/simple;
	bh=zBJASdkiANG64LTxmFJ6u49jgeD4StobMAL/Lhp0O3s=;
	h=To:Subject:From:Message-Id:Date; b=VUGKQ7YDMTer0VAWLegckpB5XBwn0Axqr5YGVaO3LgzINa5G/tPOnAhzn38MaD0lAWykggo1CqtJgvS6E52HWAr8GOTo6h3VErHbzxUl0I5ubDx+jNn/KYYgOA3xU4MZsUqIRqkKvlwWM41RLpBzi3GtqKN547LfEtZGe2ytFYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iw4e33d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iw4e33d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D613CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719767662;
	bh=zBJASdkiANG64LTxmFJ6u49jgeD4StobMAL/Lhp0O3s=;
	h=To:Subject:From:Date:From;
	b=iw4e33d9scn2ev4elq7NbEGZuH1CbO4h4eJsbN4OwDOZFwTJ+5P/c3hOLnA6J+GeU
	 EL/OLckxIXBAnJKO/1Lg2Vu8C8j8P+K3YZiXFidwpQkUrTlZNnsDOb68Ez4i4oFU86
	 0BTpNxxsrSoZmkmRHn6t+iRPOUhleZka31PtqUPtOHmQQEu/137S4c7LuEF3p8WWID
	 eVIgGkcuSmCV7bpXP1jHs+QEqtn9K4G/3UvHxl3GZgyU5b5ZrnhlLPWAQoT5s+fPhg
	 Sii/XIqFmAg7OBMGUCbGP1b9iUrVzTI502+RouBIcLrwOCk66cuu05bJ5Z804hgRSP
	 JQSVZMykMktAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C426CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976766276.30320.10841669900458667536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea41244453179d7716cabe8e62e494add61873fdb371413d534b59e4891d66a
Date: Sun, 30 Jun 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719767662
