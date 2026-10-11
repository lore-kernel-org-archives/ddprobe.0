Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F09834389F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791711034; cv=none; b=Pck2x2YxxzZsjl9fand+SoS0qQgZuZMlx12u2Nt15XKbRKbl1YCuiR4bNZlGWMFM3lMgiyKOPHbgTRTESSXrup2iN1JxyisG3HSpgfZ5H0TKTds66nUqx/o9RM3N7MGA1cuKY1ESYByCeuqpshpYkMo2iZOW2fdIAxNMhJXuPfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791711034; c=relaxed/simple;
	bh=Lt+FhwCBTq4hhEk/r+MSR8V3nUaCu8CGlpWpLfkvC+M=;
	h=To:Subject:From:Message-Id:Date; b=buortOqnoZmoQN3P9EeUSvA57HsJy93qbsz+GjWU9ij6iL5ISx2UiDnZkiMxwiwx54LxQc/0/zUXTSGwf1x2KwL7h0aZP3QuyVhMBIzP9vO6penSGb2DYy3zLlvsVOXPMJ2Fp24mvYvo+PVJmd8cbpBjm/cI8bYR/w2Fy3Br7eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVb8wvB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVb8wvB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CF0C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791711033;
	bh=Lt+FhwCBTq4hhEk/r+MSR8V3nUaCu8CGlpWpLfkvC+M=;
	h=To:Subject:From:Date:From;
	b=hVb8wvB2CVLqcSLQkznV/0lpHq4fp6Jy6B6WCeC6tBWgAaJYmx/PXSW9h8Wv1WR6y
	 h9r4JKP2HF7QcUfiy9W3J+PM4KGfM/7x6uCYpsE88vh9laqisUveKyjW9sBo7FAA5K
	 MB+z9rZkxh0Ih512E7lCvgqfMMgXuq3q0ayFS1ZwwpGeZSSMhB4zMnlT+a9C1NvFpi
	 boL8Vl+dG4VouFyvu+8rlFVJ5P1mqGzNxTc7bTL9nQhLWJgkFHKg/nh29sqXBmDklt
	 uH7yXShtelAD77C/0kMTV34UkbXIgIjZouWPUpkRMS6MWMe2W3j82thanAGhQ3vqZg
	 +3TXiSx22RbZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C83CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171103369.27155.5247614691262893274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9f8bc5c94c10ef1956626196d0bd2b6fa728d4e8fe13864d9da63d9f8740b6
Date: Sun, 11 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791711033
