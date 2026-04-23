Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E85B204C36
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776915454; cv=none; b=SUsOgSVDqlBssWbmX27YxFW+LeZamQxyx4Q5WdoM1tkEWzV9V4bJ0qqIqaL2JPXpFGnkjepbtDh56STxoxjVpF2oI0K9+TQ0BnmR7nTQHpDZn96CidQaZa2QoS5AuO7R+ywX6mo1NhrzgTOXqb/QW/cTBcsweIWWCI9dNZuwViU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776915454; c=relaxed/simple;
	bh=eK+amLTSfeZ+SMl0PAXjuesiY3wSgOSf8GSjqRpvzSc=;
	h=To:Subject:From:Message-Id:Date; b=dkI9rMFqoF7522txTjCeVeuB527W/DOkGWUng/xGBZKGAohvR7Ih9D8g6MEa3Pcxjb1OPhWMApE+8EPcwJoNl48IKklzuMhbtbBrwzzlrqbbHFRBvmzMQO3v/ifZAqt6fmmMp9a80g5sPmUS4gpeckHZKBa32yVwE+2/rsVqHEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTI2YVCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTI2YVCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8C1C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776915453;
	bh=eK+amLTSfeZ+SMl0PAXjuesiY3wSgOSf8GSjqRpvzSc=;
	h=To:Subject:From:Date:From;
	b=FTI2YVCNw1ZQj7e89IJ2YETSJms8L4j9uaRZVUUD6+te7szcZvwhyd8WKCTkH5sYA
	 8KRxyCS1pX2MnNLOFSJWZk9GTaZAg6nFQnqZzJMx/vVl1nBFHEYKsJHM+qAAfXbwwY
	 8b7AKaxO4F+aBkcMfiE4FQCSYZZ9b1AYBqSqkJS4tJOG0kh4hEyKq6Q6F5mL8/ELAM
	 go76BEvrrIOocH9BlNhg8FRIuzAhorQYE+3Ld5WXzeaO3SH1/MZVTXBl8Li3h6Wncg
	 iVQV/ssbpb+EA4yzCLjVvAQu9XILilnD+v1U2rcHigr9A/knyV3vtO10QJqv5peLXW
	 SRjvJjXdp3zPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3CFAD3F2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691545368.5843.3432315282252943735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d393434c17597cd80437d03273a2e33b4f2c6e14cf8482ac2fb7cea25256d02
Date: Thu, 23 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776915453
