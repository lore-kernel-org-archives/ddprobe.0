Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1408661FFE
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752288594; cv=none; b=W5+w2/GFiuZKJk7PiSShKWQ2J0XQ4GsafIFWEZNxtw/Y6NyDaFCRTao+pFa79B+h582yk6SafOmbGkEYsL2xd+ialXGU4CfJY8tqoHMNcsnyukwWUy4yegyTEa/JTGcJ5XeUfMlVeImdYp35OXDmXFmBAUIJaCQq+AKOC+ATbSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752288594; c=relaxed/simple;
	bh=wiWN4d7wFtHRIrOf4aqezD91w42+6BIUjFqfz6SBLsY=;
	h=To:Subject:From:Message-Id:Date; b=ZxDsENnmbu316ksCg0qMd9Dohc40muRi+Lev+cKqwTl2j8J6TFTL9ajViV3S8UwpecEJjMcxEg3fnEiwuWZ6SH4H40/dwn66iI5Pr1NsCc9mcVrfUwlKzm6dM0QGJVxJi+PPXjW2z0r+C7Ijc+JYC1FkGp0obio2PhEaoLf09Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2SXU7Cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2SXU7Cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04CEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752288593;
	bh=wiWN4d7wFtHRIrOf4aqezD91w42+6BIUjFqfz6SBLsY=;
	h=To:Subject:From:Date:From;
	b=R2SXU7CpiLcWL8rzEoaf9C9Rk/XYTBpNkyvyru36CdAjSruyFNvh/6iP07SozPaE8
	 ArD1ZSwGviriW5sPVdtuy1ZzEhgBtpqEYTL9dHkq4lMtzH1WDWOpE7kE8RP8D5DkyN
	 CVW507Aj2iHsWuvsJNxsP6IDD7Yis2sHLZZHsPNo43CjcAGvidU99X4zq45nahwkhg
	 X+y/qpS2ASb6ocepQaMftpHn5KJF+r23nwP/GUStKEFlhBElpS5VLJVcha0Llz2kn3
	 3+NGk0lmWu1iHD4DRI9KUT70/UTNFfUtxnK3wa+eLPjIGBZwXrkIkuPYnscstVYKSS
	 GrXuXLy/hrN3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90528C83F20
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228859358.26797.5199716971131787490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d2a02b3d75cddd792c9dd7b9ac4536e5e6e20feabaffa2322679aa7c6b5e78
Date: Sat, 12 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752288593
