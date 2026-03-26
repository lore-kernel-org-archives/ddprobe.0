Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E7930C632
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774508094; cv=none; b=XK3+qOe7zBFzO/LDUsHkUKAw3zWorlfyhzck0zsIMKi9BZN6YNlNhN4XIF7QsR88HYVEfYIxEdxKWgvH82pBgAuMW1JICp60oVnU1gqzL/cCAvRCNghzvFSBT1BvsWkCC3sbZ5h7GVtAZIc/nDyhD3+9UItAc4twB8wkhP84e4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774508094; c=relaxed/simple;
	bh=BLReZp5hn879DNZ75zmOQjWZi220gC0+bocbjed7TD8=;
	h=To:Subject:From:Message-Id:Date; b=gVLah9eaIwMLH4kJ3JpK9iPGIgIEiBwG8WhBvoeA05Efur6cr0CKjeGHshWGLbfw59TFnHQRVqu1Ci5tqFP/Sns0D3RWLS1zvX1mJI4ZzUQCz5bH1JOokZsCfoQrdRGzWvaBvPEY6hTTpqR1r2xht2JzrJkyyq7bwbXDP7BkP+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8wfJnos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8wfJnos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10D9C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774508093;
	bh=BLReZp5hn879DNZ75zmOQjWZi220gC0+bocbjed7TD8=;
	h=To:Subject:From:Date:From;
	b=R8wfJnos7Stwt+5RSF4W3tsCEMIfJd/9aibHvfUN2L4RidIplnHJUmIx3jNMRKSLZ
	 5wE3RNcrKvMlTkI/IbwD+7dCh/6gCby8qg0zI4mVzHJWVooKYvZvM7AFg6ADAqqcRk
	 q2Hu4tGTc8bsuUAilSbmigAoRvLNB2LMxyGrkF8JLjaD3hqGhEbmYm5cCk2gTFxKPF
	 l//9sQDt3MAEHG5Dw+/reFudp+RxlR9EGarKR7unuhhgrwntPHGgr6112FoE8Zl7eJ
	 LyKMXEnKRDPLFlBS7ITfVUean54ORrGZfx/5OaLf9WiAUKVcuidW8ylIU/UT5b/W1+
	 FYk13J/KVUosA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA64109E55C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450809363.9210.4491578398325663922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1575a26531fd374dd719ad170b45bd5a9c34afa87ad2763aedafb05ff801b6
Date: Thu, 26 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774508093
