Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31634190462
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745629194; cv=none; b=nHE1ZPkpALfW9jcbWgo0DDrufOuqd5sWbq0uWLcXowDwYqHcy4YKtMyf8NJH51o386af6nQ6/TWCouhGIqHysIusjQukOmiSz41z7AR3dPuamhk4tAAmESnWhT272v/cpx+9MrnweLWNZ9FLSpTbtuEZ5/oFwc0HgOut/JtEF08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745629194; c=relaxed/simple;
	bh=7O89plmmKYb0Rbp9AkbF3JOp3K1AF6TOgAxWuPnD9YM=;
	h=To:Subject:From:Message-Id:Date; b=HESau0o+Qu7Tfjw0VStgsFWYzH1sujBOCUuB0NLxCJkIU3D4vnMqeytcYWZ1XsDtm3VBR5Xpc5iJjJKWsw1jX6KvyGVjK1TYx9eKwkF5jiYbHdxAyOTPPT925W8UJqLGrpPVTsn/3v3IkABK4g8UzGGiBifr7hz3QxjPzkdk9sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4Ujk1n6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4Ujk1n6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F29BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745629193;
	bh=7O89plmmKYb0Rbp9AkbF3JOp3K1AF6TOgAxWuPnD9YM=;
	h=To:Subject:From:Date:From;
	b=o4Ujk1n6dYSqXlhmIwlPxa3JpLgVjLfz9U0DGAzNiXnqISAw//0eOTBu7nlPVnkKf
	 YSvKIgdnVfvV7cBIoZ3HEAyYx+H57qn6qi59PJPBkQxlYfj79x4fEvDWoQ4LPOJMEP
	 BgIfSi0CnzZ+xAg7iTlTO3iNNbqawvs40oLhg5a3mKiPmQ6EBontJ9UkwvuantG+dY
	 akh9KahvJnyBLc0DyrgeqMkUZwtvxkY5sVHgVLTZvpJJ/wL7B5B6xbxXDMVQTfPlgS
	 bhfqAJg1IDyVD/OmKabDTwwQY/5i7+N3P36oTXhCeP418Zom0N7a/bEuFsPiGBAy5N
	 CQLmEcWbec47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31CC369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562919357.32341.12901882795087040742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2747b337ea19d5c78e1009d7e2ece3a22b0c447e711aa6a8308a5c0f0f2e0a38
Date: Sat, 26 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745629193
