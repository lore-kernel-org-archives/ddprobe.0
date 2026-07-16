Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B96F422558
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784207314; cv=none; b=Mta55ZkCE4oP6b4zwtIPjWcTpTtARZ1MUe2mzs7P1BnoK9pOtA0xjUN9gbDOlSqVK5/yuUJSOS5T0Ptdq8FftbmfXrwUOEqZ3euqoBmw3NlXMYjxpUEnm7LtLPTrf26kjSPdaFFFg9vf+RotkmxTFC73CckR0Wew710btliMO6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784207314; c=relaxed/simple;
	bh=e9UWlw9JNEqmtRILioy6OolNwpVTg0uyuPR1nXk/Hjk=;
	h=To:Subject:From:Message-Id:Date; b=sUW2PcwfffAqcbWdmJfi1FbdCcG7g5R0msgLvRXp6f1F5iQ7p3gLQXBiirGR3PUBVnsbsVCRnZD7JBXC3trb6dF0MwLHpRw6e54SEv89XbN84z7BD4NVxooZPupCE29xq6o6JF9jLEHa7Z3yqqQt7UihKKVnXNpipMkgeLDY0uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKsJwOf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKsJwOf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF585C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784207313;
	bh=e9UWlw9JNEqmtRILioy6OolNwpVTg0uyuPR1nXk/Hjk=;
	h=To:Subject:From:Date:From;
	b=XKsJwOf5pD8AMa1q8bWl7iQPP1BpENbZkDKuccwMjdVrrwB52nTWVbIweiPyPwxvo
	 jBCq9fZ8zDjuYEkMgeLeiHyhBZul0Xou6dVOPDfk+ydRizija1Qi4F4cORicgtE4vT
	 +RMTLrFZmDRqarO0mo+17KmEyQU4a49utiHDJGvjKrfNbIG/aqrZKRBIhU/x2NpRpS
	 cj2jgIvqXgl7Kit6z6OSOm2dTaxTDe5UkffBQmn6w+t7dgZd5JjFbQmXkljw5W2kdb
	 Shj9bGc2Q8xPMjB++Y3E0hKpqLpjeNLRFWQz5AKTsIg+YhZCzQfZCLg1Y//qiq+Fs4
	 WlWky9b2d1Umg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC49C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420731369.20309.9132049165568136605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4973ef3d06696fbdbce410f24a60930d684027bd9f10856bed0713ba660dbc3a
Date: Thu, 16 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784207313
