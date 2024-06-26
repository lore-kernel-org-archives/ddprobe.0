Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54991F9C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719365003; cv=none; b=lMr/djM+qqtgxWqI6y48cmi74/5yRlms/pEfHIvvz2ZTcQ8/6x8XaIOjfaomBTY/tlLKsT35dar0U41+CuLESdGjxsVtsDxIOkExXTfcpXLciItRtEb14URL0uOlsikGZ09HX1cnjOF1PYHBi9oBO5mSOMqM4hudyNa36l5bX24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719365003; c=relaxed/simple;
	bh=jlmiPsFRVc8OakZx65VaZhHxnq/+fRfnimu0U3LSXGw=;
	h=To:Subject:From:Message-Id:Date; b=QoPDYJtmlHT7AZx7c05nLAM/2eIl1aPLOdoJgMVQXSfQfMUb6Qa6R0BRGFVF6WrrOJoldCsxeokRhC/khYtOboSrGaHUaZNC+dsb9mxEBzbfDoFh/Mi3RdLGctQuPpTuzRdrZHykR3CaYcyBPPK2U8dG3SpujUYQA8YvRP3hnUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2BwF0lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2BwF0lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D267BC4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719365002;
	bh=jlmiPsFRVc8OakZx65VaZhHxnq/+fRfnimu0U3LSXGw=;
	h=To:Subject:From:Date:From;
	b=i2BwF0ljJKZ7sAW9+PV6qjAb7n+7l6VbdI/FoBtXAazB/fENmqMhI6BWNw8tF6fla
	 a90EBuTa+YI1/y4XN+agVTfHbWDoUyicUqkhb7Ih8sic/EIq9HjpTn8qcQ97n2+ar+
	 XppkcBK/WZtxvetncgDPmvOQTMcnfGid6b10YYVzwUZcbhmKH0Y2O+C1eQGU9N7ucY
	 bQ0c4aCIdVB6Bwo9XPIdMknIUx86ID8PAG4FjE4+SK7GMTRECSxfpdW4+jWOwMIUKb
	 AIWI4E3U4XzJhoYjgYhPfQnGUyEbMq2oDv0S30HIutiLeUPlcHthlz9tpmkqWsvvdK
	 DMAkFRc+ZPVZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCA8C30658
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936500277.12478.9068471225538582216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b856895d245d12f2b77f0a915615eab66e0aaf85757710e8054249d54cae76
Date: Wed, 26 Jun 2024 01:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719365002
