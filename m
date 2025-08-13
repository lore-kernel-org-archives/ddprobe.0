Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25B42DFA3E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755071394; cv=none; b=nONPbN1zJ6cMDT2A0x4hrCOAxKCRtegeporGe2TlNnht7GZy1e5vG+jBow6d/sOG+8XqpTboJLo6Fcdi9mSMdzsYT72ZYhZ5/F0LHgWYiv7WJUkFn5XFfneqCOwcJj6Fy1+YZkDozngJbwt+83qNF3kdi8HVYf+cTs6pOws02ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755071394; c=relaxed/simple;
	bh=F28OyCQU9aFJSnFftxIxInl164ZNrW5J2DvFYFlRKhg=;
	h=To:Subject:From:Message-Id:Date; b=kg1rlgX4hqLVNr8t/fK3xHv2pgUWoGpHp8SRCif7fZE2uyUo7tfLXSNwXGzdt7tXPGl2NWlRcHK64BjQvECulrOgSYwA08nW72krdYVBS0lmAdgZEKhZb8HQNY0DV7vUn2M7A47vUsaAx97Joe16cpS5gZJ/Uov2snSbLxiHSWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t19XCmll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t19XCmll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3C9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755071393;
	bh=F28OyCQU9aFJSnFftxIxInl164ZNrW5J2DvFYFlRKhg=;
	h=To:Subject:From:Date:From;
	b=t19XCmllKZZ4gmO6OJjXpTbEx/Egis2yk2EcB2RVX3V2WtNLRnINbUjHjegwYLnN7
	 +8zLSmDGecHip9jUd4sFIOcy1ELhM3e4IOAt26vUrq/S5KV4KpIemEjh4JmdHvFqte
	 2jDPnyb7d0VJyJp/wUOur7qFEVKlbhSUgVAYZ7ZW2kWIDINwOxOfJlLhNIoBpOsPdw
	 2nfSgMcmCXmlJhM/1jBHGvHibAGfEJOY2nhwQbvemw4gQCTdg5eQVuQmAX9gv03/ez
	 dmOJ/7vVqa7O3WgaflQFyr861iZzgKd8XaQ2g5HX4KIyUw+w9qtQR+bcPe9ZFp87za
	 SwV+rEwrkZj8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F752C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507139357.10103.5107981181140833472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5b47f11ea0ef6a5c7b558d5b7d2c56503afb8f115b0f552bd4f7299ff0c4a0
Date: Wed, 13 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755071393
