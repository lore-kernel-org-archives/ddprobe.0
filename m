Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194F137473B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772871894; cv=none; b=KF3LcH8MB6Uvyq2VC+LWsf6/GUaEOep5sV7gCiD7ZU5/AxBBGyiQM/IWUg8lE6R6AVuBBQ6l55oiRUnZ6XiMb28RKdrAET3InpgltJsCqYgfLO5TiFda+eK5MzUwzGzzBZY0gFWPp79O1aTskW/4MD4VLPB2t8rINCEMI2hmeCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772871894; c=relaxed/simple;
	bh=e5KHyBNs1Pm5+6GV/Lq5iuFpmvqb05stpPdJSfHsrOQ=;
	h=To:Subject:From:Message-Id:Date; b=k56kJRuzFIj0r38wub8IxQ3133LtbjDO+RvyvGCsBXQQ+e0rtsGJ2arcrW0LvgZOfIGTST1c37XJTaFM03ECElinEhbs2/7IzSClNX+BLwnMdtH+Ipa19BszMtrCpS4Cu+NbqV/eABj9yk3vK+4Po37jVHCzX6Nr+3/2mnRq1ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4yU07aU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4yU07aU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E75C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772871893;
	bh=e5KHyBNs1Pm5+6GV/Lq5iuFpmvqb05stpPdJSfHsrOQ=;
	h=To:Subject:From:Date:From;
	b=b4yU07aUdnhHMssH7SQUyHtDFRriEAlZvt741ozwlY/r1mjdJ3jO+JKm6KVQ9bhRU
	 9qrnFtbbknUjJhqZYCX3F2HpHcdm2BetPPCYIq9r084rqYDnw96qWqSQat4PclnA6g
	 rlbBwxCh9gT0MdK0ozJf9+/QZjgaQVFy4ic4K39/HW6ZJMsg6cxcFy0/3c26LV1yMx
	 K48hH54MRAygM/R5F9np0x540C8xiehLYv1zOZyuhvmHqNFyBpa1uU1VtBQAW6g+8o
	 /H+ueCSF8TkDBhjrYl8d1InI/QL/AQWrOPVZ2LlVdIm6wHzaDXydBvf0F0PEb32Pg1
	 pOJjK7w9enM3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CB1FC9ED9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287189361.13062.13719762407116830682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2338d7cb6eea5b2fd549336afc7507577813ab5e701b481fce6b47af5e587906
Date: Sat, 07 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772871893
