Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330441C3BF3
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734087354; cv=none; b=WGuU2A1U3+wljvHP5x4Mb37Zt+OL8ySG4/KYi3MuKyNpqs5Z/EJW1dyS9a0or3owA/wpXSJCfVug6sbTy8zgK3sQ+kO+4jMzw9t1wTUd1B6pGkip1onFOfAMk8X7r7bhCLzLTfP0e11ALWF93wydsr1d3o6VAzd6iRUOCphPeIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734087354; c=relaxed/simple;
	bh=UxEwFubjsdHjkowt1XcDe8I6FTDkaiB0W+zYPbAUbLs=;
	h=To:Subject:From:Message-Id:Date; b=UlB1mT58k3cWoahPzrfvaWTqv8wTJtLOdaAccTOM9ShT2yz4+lphIwSfVgi2hRyFhYJVM+p15cW3plJ9LvbgESTxU+tDHkLCyvmgN2Epi3W/frvldNUNeXdcdhmkYnKSGNvQZUv0019o5Pws1lZ4QRDI9dHu6KhTZ5xUcvYr23E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rq+QnlaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rq+QnlaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72BAC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734087353;
	bh=UxEwFubjsdHjkowt1XcDe8I6FTDkaiB0W+zYPbAUbLs=;
	h=To:Subject:From:Date:From;
	b=Rq+QnlaAccm/VY1AD1UpxrR1lfX+iO9QXlah/DvdfKGNqxYNWglNe82Sn65NhRIA+
	 e3m3k33zE+1p59Jd/YFPkin2ebNJv2yoKndzOAe9Iqov1ha1iRVXu/6Twgjj43X03r
	 e8IX+m5TPZ4Ntsq0KvNcIg501idONN/+jpbu7iLUSCkIDQnuanlzEmX0OETzDyykyz
	 3ObiFDPGwLWWustN0Phztq9fQ7KsaI4zyXtm1hyDxbjLIZbAvBdy508bWZlETEwyNp
	 SAyaBsK1KLXclJVrnZBo/hMY+G2gF9ITMEK9ZgglcxKThATiFUD3Y6ijrcKZny9pqZ
	 90CRDVX2xEblw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94287E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408735359.12843.10840171647411335628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0fc5721dc99302cf19ee830112aae7ab55dca9f522ed17af8112b241919ec3
Date: Fri, 13 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734087353
