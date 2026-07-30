Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6DE38910F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785432634; cv=none; b=SwyWRLM23k0l1zgsU3aTYmSfqKKfIw1K+eZdlXIelQYpqz/SN4h6KXUWb7YTQ2tIDqnBZO/nh8Y4VolvbRxt0C1aLqf5OFRzi92o5oDbMDKY0Vi71UR0f5qcNRyzRaUC5beakHlMKElVGw83suoOJXZ/UwriIKMpaelbeK3gF4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785432634; c=relaxed/simple;
	bh=b8JMvCawhdODiNqf+Akz+fM6r2+kqjPluFzWLaqNgUg=;
	h=To:Subject:From:Message-Id:Date; b=rto9Hr2HRLJ3Qw8cc0TWqic5LDyjxxm1UYEyAG3MGqs6ztSt8/yxaNUFfpDGZqOTLMGw9qq4U2k0OwNWfw9n99XSs1HONoAGLFiDc1s1n3j2qz6Wkxr0DyrPchyrhzrSBy4A7EAnlaE7omvu74mfkJylCZYEtIiWDai7uKE96vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBV6Re+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBV6Re+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5FCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785432633;
	bh=b8JMvCawhdODiNqf+Akz+fM6r2+kqjPluFzWLaqNgUg=;
	h=To:Subject:From:Date:From;
	b=WBV6Re+g/lue5JX+m0ewTW5UZo2hVay3ZSUYMrx6lN7xtqDv6eED66oxiu4uSBruk
	 N45kC83TquxYIBjK1rToQNIyrGcfL9+sJu3isE3hJIAt1FuNqxg/HsBEQQOfoiz+J7
	 AKDP52OlhHtiYON7s9LMeUp7+lEOnW86HTOCgpI1lunDIn3BwH6YBCAngkRNc20tm+
	 FGjBfowSiIXbXvWeyQWeGu/VeFw8janfLlc9cgK81fveOwTNvpGB4GmN+bOyu8JPgH
	 iKgoKdq8Il9Wfypg7PsnW7goWwmYO3Pw7qbI7Tu/YTnZ0KdgZK3zqLrDcWysHhQV6O
	 bzkv3jH1cOOpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CF8C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543263370.12498.18002163084716513948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ce2fb8b7b2f040c9530cc9217dc2a6a1cb90678840c30fe7c32df346cc5b9e
Date: Thu, 30 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785432633
