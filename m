Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ACF944F
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754529595; cv=none; b=obWA3Ub+2SYtHlqzNohBnUqmEXol+QfWdirNMSf4NXjeWUszGpeY98SnKN0Bsv6sp9hHwM2wozaSEi3enzEEmR7fwNGfT/qKKnrJsobLEFXQ+jdM0U4NtXb9yWzRack0uIHeqFMhWGIZIDuLtmFRwiNTXkt59TU374FX1aqKr2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754529595; c=relaxed/simple;
	bh=h5rIR9Lng0dowwuPBIlLClYmI5tpWsanoD2SkmHTFO4=;
	h=To:Subject:From:Message-Id:Date; b=mWZGKdp9G3E60A9V3+0JKOOO4C5vyetadO/u6CDlrVjd2QadTS4+eSupI/6yE3n1nRAZdO/cH9QmteeRmOYXtta+UAtXDAv/WaenW4NsDEHbO/kQBaxoLmm4/2hKj69xOFjAUrEtaP1Oh0/YhCWbN8Iz2iahXdKb2nQGi/0GalU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IT70K9HZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IT70K9HZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754529593;
	bh=h5rIR9Lng0dowwuPBIlLClYmI5tpWsanoD2SkmHTFO4=;
	h=To:Subject:From:Date:From;
	b=IT70K9HZ0GfOhnDT8PBmGXdey3nUjsSNr6BceBDLlTElaPjFNfafsn5eRcn8M6DkE
	 j4EBmVqwVcji4eTjgHBavbEAkDPtgU9lSmWvJ7kImu/LhprBcSkT2Ldp3hTe86LJHH
	 GjVkZzXCkZJ5GfDLC+QBb+ByQCw+PPYzB+JMQV4R7OpcLasxsO2O/lDPnWOp2y1YwW
	 eRDhfEXdBn4s6iTrFUdGuSEVONw5Ts5BM4THKKq58gAFTDzYMZ+jaPMIi8mmBDe88T
	 GH1LL1sGtj3/EXEl28sc3WBxYwEqkZvB5gckXb+QIExulmYCFrzapiCwGdX6eB7hl/
	 3GGEiHk4mBQgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A0C87FCB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452959358.30403.10097555968788272691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5713739c92554b633dba1504d468754cadec5dd9591594f25bcda48618647aa
Date: Thu, 07 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754529593
