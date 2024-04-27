Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DFD4436A
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714203743; cv=none; b=j0vBTviTTwA3o3XsBZ7XzBeHGZfU1In3ecZNn7AKj3TzqO8o1xfOuAhJYPcLq/GL2c71fQ8jbUtZBRPAPJeH0xmKSWoV6UEUfQ+QxvTfQFCKruPSGENpJBmteVQW3GgH9v1g+XmU/iLA9LQtu9dq6Narp0fPbMZ4PLdUtpTy2ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714203743; c=relaxed/simple;
	bh=VewOWOmqa+3KYwmi6H8YvcPOStrYPvr7c/R5MT+1va4=;
	h=To:Subject:From:Message-Id:Date; b=gS40uYXtYyxPKG0tzhWKEcIKdMeZaJoWk56tx7uFiQUetbo1NDceJzs50hWkrC+S4Cb3/wB4/0MiU5BzIzVKytRrq/JW1b1GC1/W0SMtLaMgYNHQ8c4J2kno7PtqDAQglPjA6UvHqWIl33gUK/sAIGfi3hg7uEUuk6ex19cW56c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKYEW53P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKYEW53P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C3C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714203742;
	bh=VewOWOmqa+3KYwmi6H8YvcPOStrYPvr7c/R5MT+1va4=;
	h=To:Subject:From:Date:From;
	b=DKYEW53Pe/bqbW6IFwlBZbP+jIhfdzvQEXXewzcuDGz/rdDuHD5UBNp9A20gh1cML
	 gmwc/hwkTxog3KV0YxNm9WzuvChB6tZR6qTH0j51iE3fNYB7slPhy/yHBCmjhsiyIV
	 GnnI+T5Go3al49HQQFjMwwxQzYz8zeAwalpM0qXI9J1HU0zdv1h8vqRaRYGZLvPdHy
	 Tw4x+orQYEdMLcwdw7ZanZeSDIQtI+bnnitvjZ6M7F6yZ4hlEcbEGi8gDozxKq67sd
	 FCbDwpa7jTVS6ex+2OJlMMnvZEKo03+fYI0usNpyNn7zqcTsZYGshKG6EeC9xpYsSc
	 FG3jkiOl5C1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA232C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420374275.30017.5138105310770658749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76accb9e70b8af17eb07fb305cb2fd07e84f48d4148e5eee10f8cbb3e05e587e
Date: Sat, 27 Apr 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714203742
