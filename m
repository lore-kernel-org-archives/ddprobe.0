Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D3F17BA5
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750916394; cv=none; b=pAi1Fx5YPbflEZbUXtnrJvUaesdsqcFtMDes597hGRb3KiVerBNQUrtDtCsI3HDz+OEv0PK57xqRgl1meBKkEDSW1FWvtx2KB0TOMLxfdO9yjoAUjOV8mwlNkSukdo6TJGTHBLGoYeSmOTPFiMB90EBHCVZqZMg9AZ6x8yOF6Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750916394; c=relaxed/simple;
	bh=dxSpKV16kOFjVtemxPE4A54mkkA1YQFQ/D9zPx/4fpQ=;
	h=To:Subject:From:Message-Id:Date; b=aHjrPbUzM4e4irVkw9PH/MrEX6yAbly60cpgCLVTCbQOVTY21Q4Gv8yC2R3sqebROQtogVrN7tQKyItWl32g6rX+tbXbitQWLL/CeGJIUQqhiL6ayi6tHfefXdLlmxjbrH4mwNWcUEugavSXnqu4J14m5XEcIiR4jxmQLc8qZXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIiNufKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIiNufKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2678C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750916393;
	bh=dxSpKV16kOFjVtemxPE4A54mkkA1YQFQ/D9zPx/4fpQ=;
	h=To:Subject:From:Date:From;
	b=kIiNufKTXxJDeCedTZAlTq5C5vyWF5ZBgYjgYmojurKEWtwtq44m/QCbJE4kTtBJx
	 uI8nAjbEKOdIW8pUD5df9YmnknMXGbhUDGsPCWjAItaP8xAS5zjphFKx90s6B+hHmA
	 8lrFzqfqCxpTyz2l5fqLZeFpQmLQiTQ61ON0Q0shz597EMj3RtIC/Cu5W+LfF1JASw
	 mqbgtAjmqaMin5e7JPtjhR6v5v/1LNZTOsfeVkQwpDHOZV7GtZW5Oficl1FkmfiTEc
	 PuvRYyYrliL3vZPXCg3WgvvD3aZnC3TnhjRff71IUEj3KtlXnhjJSChQ43uvZEAEOb
	 vkXdDZBWZZYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C783C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091639361.28197.227210991972524792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6163aa88c2ebb60e997b02cb805918058f252c679ee9d075d58dd22880d4326d
Date: Thu, 26 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750916393
