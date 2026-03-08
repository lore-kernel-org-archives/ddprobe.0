Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC6123EAB7
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772982294; cv=none; b=P04VxHKrWnt0d+lI2zV7qi3uBj0By9VPtspCALDrUzyIlpMNr2ntbT6Gebj1ccnL5QoKnvKNVoEPdwDOeQoMmiAowXG02+1NqWfzUdsmHs4iYfGZlSnUfSQMCzlEBjadJZLWK7PGNViigigcbHYqIm70s3xFmMVj9wRaXMI6deU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772982294; c=relaxed/simple;
	bh=GZ3LpScvx2DAWB3aAhFVNkbm4jqSthSO7Jv3VWBp608=;
	h=To:Subject:From:Message-Id:Date; b=PN37kXclMzlszK2fxnl6Hbpq78DnNRvZGg+OMkR86BgNYmy5TnjVBAejfl2EX8jm4ypu57nFiTYhrKiNv9z+DmuD2JJFyJyXXY06Qy8O9+/r6BgAF8Qu+PptbNRX+2oQ5H5lcTGAJUVQ9SlImQ0I4E9UKBuNP6dteAWoPPun004=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHxLodmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHxLodmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A688CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772982293;
	bh=GZ3LpScvx2DAWB3aAhFVNkbm4jqSthSO7Jv3VWBp608=;
	h=To:Subject:From:Date:From;
	b=IHxLodmQdrCYwBGKFTvdW3qifKyUL7pDGM6U07OOd539mEc8s+qudZYCGW7OI5q54
	 TqRpYdyB5WqzCjmwPXKHWJilrysgYwEwir0eA9bRW447Ru/CzNoJivsTZ89lcAz0PA
	 eKunQvlqmEGTrNLjCu69LkqvaZhYwM3Na1dXtOxskpUVA8b50+jLgUiHZGGRYnUFK0
	 4QxH5EvcIAk9IDs5ruyJ+725QE1PoRLuObLEGQE+RaYw77rHhcyJwBaQ3kCOOtT4jY
	 I6mhksC9xcfO15Olx9pYXYaqqKlGS/tpyzESqgkLVN+6LydR6NxSFk8mjs+BKPI/OR
	 9omgKfTLRFLrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D7EA8524
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298229358.6452.6543118323705317539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0547c6f1c6d1e789c9714e65803b8690910e3eae51e41f554f91774d2361052
Date: Sun, 08 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772982293
