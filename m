Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B17836CE19
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785798634; cv=none; b=MjUcQyculYtwi+Dq16y7+gzX/u6kxI0uciea3qtZMl7X2Q7ibk6HJ2yjJxmT4QpiGsUpyYg/8yFUaSpL+0RD/xOVhh7VY2Lt/e6SPqKHeNmdeNdNL/H4yXuZQEt8SmhLuVNuLC1aClYGDAd5EzUpI1dpICPfaD93sO0d5kFSvRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785798634; c=relaxed/simple;
	bh=OPqXFV98749vMhOvJAx9VmdMpvh9SOR4csCkgLpkI6s=;
	h=To:Subject:From:Message-Id:Date; b=ID2JV5r6uEdAPj3oyfnf20Z6Rf+5K1FluV5hbWbeg2zMl8YDvDe7OT/xDZHFN0W5Fng7sjZNIFS/TdMsze3oreJ9cjUHXS5nzGL0HhWwbWlFlwBFwgBSEgodrEce9ws9qJscrlUibx25ZNyeL8ASJPeEvbANAd2VpakD6BdJdMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOE0dj3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOE0dj3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF647C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785798633;
	bh=OPqXFV98749vMhOvJAx9VmdMpvh9SOR4csCkgLpkI6s=;
	h=To:Subject:From:Date:From;
	b=pOE0dj3B9mneyY+RQeewTfyNHBIMT1Rx6pBDHYa30zwpJwi1lD3R0brUbS6QhxYEb
	 bPGAbIFubcUDchGG03cpUogbJLCh9tUhlUu/4CI9K0PrM6S9bZaLJK962xkWXVP7tW
	 77RNKW59zKcBz4WBk/fmu0bbmjm6HH4mAQyrVziPhXk3QlU2bMLl3iJFAZXaH+pr8G
	 E+BDKR+CSt8QcuCJK3aHm2dMNx82pZzFs0g02UYuQAS94mzDeH2jqqqDm7FgStqKEL
	 4H6Q/EoAG7Sb0ijq2sqwGj+ozn4YPR0sbDpXRvhyhvbBDdmtE7Nh6Hpq4WEifKDu0w
	 kQvvo8cirxG6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBF4C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579863369.29256.677891878082636138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76a6ce34181631b3eb3ddef41aa602c602f72ac833f8aea0b4c169e8c0820d0
Date: Mon, 03 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785798633
