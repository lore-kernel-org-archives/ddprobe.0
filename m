Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734F8139CE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718312903; cv=none; b=QLF9YMRPPhIy8h/FvSLMFzt1P/NIEgGY6cnBrHTkcOHTUeYu6gUQtgqmG5kZClAVY/vhxUs4k05pKPR4E1xthcXmXppORIKwsk3Z7hY5zD+FO1QxzwczsjRKkQCHVILae9i9l1L4YEXpHgXYZ7af27kWK4B6B0+FSV7sbP1EDQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718312903; c=relaxed/simple;
	bh=mtpZAFNn6mdjy9GxoNTqwY8xBfWYxgdeJ364V9AlrGM=;
	h=To:Subject:From:Message-Id:Date; b=g8SFsQ27TzTs6l41TxNQ2EbI8UKrLGaQCYZagDtLGJkM89WSPNdGTD9hwC8t21FLInrnIQYhWQZLvyGwLuEwEZvYfRcJWs9Uth6S8wAj/PyFJo1R8+Wv/UANFHIG1O5od7IdpXqNmnT0O7QmXNKZWfjPQpwJlTyww9AWmlJqkiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hO2L2FdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hO2L2FdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A1D8C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718312903;
	bh=mtpZAFNn6mdjy9GxoNTqwY8xBfWYxgdeJ364V9AlrGM=;
	h=To:Subject:From:Date:From;
	b=hO2L2FdA4btOBmKfDBI6fxQjhTcTB9PPk9EDJ3uts8Ft3PfskVYMm9UJyb038fFJ1
	 dL3httdPAjddC7tlcXXRhFG3olWsUWG8ZV9lPX/98omQZjFUnAxweUZBefLDJK9bwz
	 H2ujZseucdc5bwCAf8b5hyVdP+LuEheqX0FmKmd7G4QBPlCmCBALuw24JkZL0lYzqu
	 ixKNGkQQ7dX9SGBQfWZU6pitEjliLy7TFEgNyaNc3eaLJEOcDPjXbsQUeuJ/2N8uAo
	 KMuRg1cOCJBD1SxallnABhyaWIccadHHyr5NxT53wa00D7fNdd5rU/qa9uLFN/J3hi
	 NATPB23F1XLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8D09C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831290293.6642.12116961489251617526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d067819026c415ffbb3afc3bc219375d63fed0a93ef2f55954ed397ac93776a
Date: Thu, 13 Jun 2024 21:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718312902
