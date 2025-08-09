Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A59264A60
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754701794; cv=none; b=JYfOmh2WbcxG1HZoYxH5BlUpDcTXKHsKJMmOUs9FeDUEkldapbbAfDuWH2Q934VJIEsD8UyjDLA1bpgDynlY/TXttIKe5FnCw4s+08YzsT+8Yb7x6+P+d8zco4IkUkHqjPaoqgsFv6s0kCgD6sDuPo0egRVSklXEI6V3Dcn0YZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754701794; c=relaxed/simple;
	bh=fkU1JLG2ilY5P8f/vVIM5S4pDf2ErfHE/A+1ZD5LXZY=;
	h=To:Subject:From:Message-Id:Date; b=XwpEy8ZpvXrkpGyHg2J9vkxu5xneIO16V4VJOa7bPoylnIC1/qmM4Bu2oubellK7Ve3VI7iaHCDynJl8TXAXa8rRg51KL4EtlvD+YPjWtEeDDXZ2pZKi9jScXFgEDb7PEpqs5cBBk+LVjsZ4NcagRShNqk5bNq2BEzhabCXRy68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0fAS0fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0fAS0fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7FEC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754701793;
	bh=fkU1JLG2ilY5P8f/vVIM5S4pDf2ErfHE/A+1ZD5LXZY=;
	h=To:Subject:From:Date:From;
	b=Y0fAS0feYJhZ+XpoVcaibKVuQ9LklB57NwgwFiDDJYaQiwPIsDAIFDW+YFyVWF/0L
	 tu/KY/UGqSSXLVCAv0VZ/aVjk3E4NnPYRGA/zCBkptFV76ywr/4C9AtEaC779QAWGo
	 UcvukZ0fu7hmxKXS0FPgggK8I4ufuPacVa1X35IaP8Ypbl0yoAFJJd7njpGZO5x/yK
	 X9W7RM7PL9BNFBXVssvyYa9EyLOlgQ442XjGLiG85/8LZMH6C0mVojhtIGBce0t05b
	 T9QA0r+cmzffqJhQZPQAlYMHaGFr7y7/1lR4Sz4rpnssgGHlE5gx/P508a6E+1cuc7
	 MRFrqoD+NOzzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961FC87FDA
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470179368.30456.17536866210754992524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d1c06ede95f2e75d7d2310bde16634fa836f62f12fe991c569c166ac0dc4d7
Date: Sat, 09 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754701793
