Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1713B59B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743335394; cv=none; b=n4UHU36xJjMSZZZcFIGGM7EE86TxVL54mMW1Ql2u1KLy2WY3cq0RqnsAcNugRS9+uI3MKSZVViJlKdGxngG2Slbsmd/emoBfI6MwaSNURPAIPI+DUrCsQ5w4HQ132/CLeez7Arvgwk/nheMMIf0UVBgNp1if1/jn7O8ELmqWvR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743335394; c=relaxed/simple;
	bh=8wYJLHa/QBvN+DPr3KZNJGjcaNmBSIHpT2CjSQsXaUk=;
	h=To:Subject:From:Message-Id:Date; b=AirGV3R+1jcuiQUbdhXMzVoc7nFVNvKgTDfMzM2LzHPoOz9vxOckB9/59cOTRP9afN0k/3zUPiN0FQmtTSKFtDV1aIJwvG7jGUSuy00Vl5c4CXQ72n23pocul2R7Ow+Qf4/TKYFmQ7Qa6zffLYVZbClDpacgT8apS21SHMh/hQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj3zhf3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj3zhf3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0023C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743335393;
	bh=8wYJLHa/QBvN+DPr3KZNJGjcaNmBSIHpT2CjSQsXaUk=;
	h=To:Subject:From:Date:From;
	b=nj3zhf3o/iKr4wKjhHNdSHe0+ebcXn/ILpnzpMS+OE1NWJISKBvjX0ppMVbN0s8Dw
	 BdVnV5id3m4GSE70ow8k1IolVg6HMq5GLT3tHDf0xuQa5ht7W42xgu9I5QZeOeeqU1
	 X7GN7r9opaAUytvGvnVfpQBZ/GOpRPiJzqlIyMzDjDndmH9os2U8z/sM8fCDshXJ+4
	 uNb6kwLw05KInCFL5SU4M9diyrOEFX9FU78H9F/3aWgN5tUX+IlaYb3MwqGdvIsZtD
	 qgw8a6BNVSCg+J1F5u/RWzHi73EIBLEhrB9W1QsKxujYWP/rxzhaFbajMkJi2gYYGJ
	 jtlkP2CLpSyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97416C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333539360.24146.14628349741013769457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e791cb093d5699c368287728d5961ded18793810b1f4557b0f8ca0ce424e71
Date: Sun, 30 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743335393
