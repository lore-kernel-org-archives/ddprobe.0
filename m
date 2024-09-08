Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFD2172BDE
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725818154; cv=none; b=Nc6asKy034MV7Q3SMnjlWwnNQG5PKU7stBBMf47IlK3NcTFD2qpIFZZBS0rmruu/YWeBUypY/nZoar7Q37QPphC6skmB+6wsLVTAdo99BOdWyK+4j5YNB9nfBZ0Ig+91qM65aja/RcpexiInr/cm4hGiM/EKWQi0ohR6Ew2QYxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725818154; c=relaxed/simple;
	bh=VIZfYJf/1L6Gzyg9Hgw8Clt4td8eKsxHGI3+ula+NNk=;
	h=To:Subject:From:Message-Id:Date; b=H1Glbaob2oIBPKkN2hqcg3zTFfClz17H2vCNhk2qm6sZqToL/kFwPlqUO1vMZlFNLe7rP7pBdY5HoH3ud7kFLukoavMf2HvpkVUlvr3bln/GzmmbUXmbggnMvVwz6N4IqURIa2P3fzR30NKtqNN8eYkDKKza1x9qg8hbBXaXgZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnJVkYhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnJVkYhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA01C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725818153;
	bh=VIZfYJf/1L6Gzyg9Hgw8Clt4td8eKsxHGI3+ula+NNk=;
	h=To:Subject:From:Date:From;
	b=JnJVkYhDIeKId4yhBRxvYojbrByxrhHScukqYkB/IvgU4Dn6pB28/bJbf7ZkYzSks
	 1/P0bIr1bYE5RCTw2Fp3WHDt59k1ck4Dgk9al4VuX7UQOs2Qll/cpFVrvCx10VS/WE
	 U0tzPGUsb2nC4QFsWV19Pj9KpLjGHnzI6P2SSp1t/75RHuL0S+nj8hzE7hORHnjd8W
	 +RQmt6IinKejD2wt6T1cgn2w5ip3sDAdDpPCEylyUwTfBiM9G9je0zbfsjin89o7ZL
	 4RrvofS7BT66H8inGYmGM/+4ttJOfaXAFR2ZHmvgAwBQCIDEBTh5QvHxKqjzdjqK7Z
	 caibDvGVhsdAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92706CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172581815358.7984.4059209460538117713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3af36c7f00b020d32dbc0ec8a681e1f68dd373c0c1d095cd7f559bf9ba4771
Date: Sun, 08 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725818153
