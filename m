Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36CF64A
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709707096; cv=none; b=L/KgbRJDwe+Ylxz63OvPoR5SKNzvHXYkTyWy8aJjQLcON5kCiJAwMJNIxqSrBL9iY+3AauWinpTfpEPNtaBG20a6/pAGogo2qdF872bwxH2ZMH0OGMgf+HXLgf7wKtOgksBqFOdvHUAedKx2g5u9KpQ8B0EtVWbDYbVUbMrE6P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709707096; c=relaxed/simple;
	bh=dn4xmQsTWvYOI420RC7It/n5prN2a4pIJGs0ECPK5MQ=;
	h=To:Subject:From:Message-Id:Date; b=ZLmh6CgHYoSq6S0b5/A/X1x/LPXuHG0MC/1NCCnTPt0E+3fGwqvRwgyZUc6rQMKvWO9NrgT74lffDooK42jLNOq3veEL4N36so6CmttwM43UkURz/L2DBWs45OrlIbrCOrfzlymHUSO8i861gJ0CtwpA4Q78mkFeeXknmRm0UyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fE+Ca5Jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fE+Ca5Jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D648C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709707096;
	bh=dn4xmQsTWvYOI420RC7It/n5prN2a4pIJGs0ECPK5MQ=;
	h=To:Subject:From:Date:From;
	b=fE+Ca5JnD6MjH+cb36U2goIrd/oPmHqFbvU24fjE6f7gcO1UxKUdEOlFqWSgwhbuv
	 UqdzDK6HDZ6ZBK2U7Lldjb3ugOkmElid3xX+fMBBriueoLEAIyS9YWZRUYkV3cswcP
	 KO0eVg4UAtClvZFdbJnve9jc/UZdYBPqdZwJaT5VDe5LInUASoGlTssuTQqeRNNwpp
	 wzG32BqSr20R6iYZzh8TrDQ88pz7ecb5l8JAKOd0etCh96ptMzCsNchizOhTolX5MZ
	 DnN/FbCoDRLZTvo6440bdz+SDPrsrnOITe8S9tTd4qPbSShmDdxKdfRd4+AH5sO1Ai
	 NPhOOyR1aJwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D94C54E41
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170970709639.6496.15700415451164676342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c54d01b999e8f2b60602a89e29e6ef6ea6f66ab8f5eae04cb98dd956c014d1
Date: Wed, 06 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709707096
