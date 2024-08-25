Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D422329CEF
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724594153; cv=none; b=tDRymX8V34HI8bc1o5UgEYw/mvPMAApah6Yoh82DuUyvvBzCuStn73zQYYrVWwPvm8gLLYthkKBvWubsdfSxFrGHiej3Gsi1lHAvQUrrl8XIwCO8oDpGscXrtr++kheYL27p467P4xkPODkBBqBQKaAypopJ9qiHmzFfrwk1nUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724594153; c=relaxed/simple;
	bh=oaAORMN0cgZbcokKNGJueNPCtUMkaRxrQPGKzhONYbQ=;
	h=To:Subject:From:Message-Id:Date; b=Ah2LsbkhLJfPIe/OPucRp/LyLv3gvvUcubmund8KU7TfH0vjQARoEOPW81t4/kxewqtmTjmgtK1AihX/O0Pw9YyV/vx7M6wxbxn1GWJ3YwT/42I8BhM24yVMD71qRkM4LZEP0aSgLJ6vftC6OqdqAMJOnE87mcuf9cdU4TKjEEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZrR95Cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZrR95Cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FA3C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724594153;
	bh=oaAORMN0cgZbcokKNGJueNPCtUMkaRxrQPGKzhONYbQ=;
	h=To:Subject:From:Date:From;
	b=aZrR95CleroTJTYkL8N3YtuQbmarPsrNa62ZOLjns2H83xvUL1qN7WtUWaDUJsmci
	 3KY+x30vlZGttDLnSfKx1tPgKTxJCNolZSVmUaaNB6cJ1RpTzgtbVAeRGlHGjyAfsZ
	 o7ItnmY8JR88wcJDNWL0gMs/N+KXY+BYv+T7bzsyTw18szyKbaGixcdZUMKTEmGUsv
	 oAYAXgRb8gVXvvd0IcWvq7avr7TP7pOMQgng6xXppB9J1D01BzFULBl9idvSZGBlS1
	 gM7ahFujAE1C16ediH4NvC61RGmpqYvKUe7u+hol09q5m3x+BHc92w0ThnmXLE0EJ9
	 I1SpTTaO+o1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956ADC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172459415358.26958.2314693023899356401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75c3c82d2c3646ad5433789ed9f10a3b809909a692eba9ba25ca8355e16d6d7
Date: Sun, 25 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724594153
