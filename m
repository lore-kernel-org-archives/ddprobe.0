Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BA034CFDE
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773576294; cv=none; b=EiWV6l11/BlMjzYQroIblSxRYe6X1KQqRfI7BaX1d2cPQEX2JuAB1A64z2p43foLh/6lnLBu29wzESQ4yV1Mh2Fbs36bP3M1Bmft1zZVfoYg59iL2CSvYYsbqkDK26zA3J6Eit8bCLWDRxlLIb+GNIEhgxxy+VNaCImoIjI2WC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773576294; c=relaxed/simple;
	bh=jtDmOIQVJwJWgoVv/p7oYdlmJoRMtUsL9NoW060j4Ts=;
	h=To:Subject:From:Message-Id:Date; b=CAK2nWxXLDrmf0IBhmzaifT1DnzjD88uMVYuTBJVVlnhDy9xHL06ATbBijohwGZXkxL2wfO28OEvmHGk/LiNHwNBFp1N2591NDGToYPT2rvnzjJ50XAMaicdAddxfl0Ff8D8efAzaREBWqpGSYME6pY5goqCz1TKjONTE6tx8iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FexOF4it; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FexOF4it"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48DDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773576293;
	bh=jtDmOIQVJwJWgoVv/p7oYdlmJoRMtUsL9NoW060j4Ts=;
	h=To:Subject:From:Date:From;
	b=FexOF4itr5tSpsJC+NKO3SKLU1HOn2uLAVmWVpJT9rKEwKauGEGnorQs/kxFinX6r
	 alknYFYOq91c/ZJ92ri0/KlmokOW3iof6V2zSQ0qu3ef1ZYp0Ae06+QfIgHcwOdrx/
	 iaPFK7839GnsBXHIvC7p8gYfNoF4KT4wPCXxTMHLIKglYO1lwUjWj0j/RlQLrEy7S5
	 neQsfJa+Y5IYF/RTt3//a4ibdAzRmF3sTUQ23MbQvNDWBWL47K+QA4TVh0ioc/Hpf9
	 yEXNkRw6LJ/RYypR1SGIht3U5h/VYvnlODA4+PnnucXGi2sWvffqrcoHMAJgXfGo8n
	 5taKx/dSVt7Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14A8D58B17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357629362.15666.9227309738513218676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09656e45c6d1c63ac44792d26a9adc6ec0db0cffbc3979902eed78f4610426a1
Date: Sun, 15 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773576293
