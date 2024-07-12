Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CB213CFB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720764443; cv=none; b=IvkxOZ5nJVBT9QRCRBmGxP3wDP9vjN7EFCce6i8Ekg/gOCQujUKZGZCIbd8Klnn8HK5n6TBxqW3aJJpaRdCrehLbCGKpTiP4+ysp5J48oiAUxsh1JE8rUEDXyGTkj+tqAqrmKDyRUKXur0Z3ioDbVaX+SIMwzhvyG1ROMRAsojA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720764443; c=relaxed/simple;
	bh=xPexNjjWkdhJ5qUrr3BurXKD+tZ4BmWTCx/dgbhLOHg=;
	h=To:Subject:From:Message-Id:Date; b=s2ex1by5UP1H+KG6kOmvfdtkDsc1DcpzylS3e9inK/rakthnktH0SVCmT3QmWtumerbXlQn8SayHq2mNMAowqZWPooOTkS8QIPe0RBU8OhsafhhlENntupybBBzrKTmIK2b3+8eCElvDyfKtr508to0nmlbGIk5z4ywNdRsYwY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+YsxACg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+YsxACg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF46DC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720764442;
	bh=xPexNjjWkdhJ5qUrr3BurXKD+tZ4BmWTCx/dgbhLOHg=;
	h=To:Subject:From:Date:From;
	b=J+YsxACgiGnOwKBU1A8+1oXIKKvBTbYRrLHwYQ55U8MV5AR7LtaucRHdW2KFIl1y0
	 zlIZQd+aCXd+SttUBzLpIM5diWPnVwt5EGVWbmOZIU22+NR6SOwGaDJySTJ5Ng8/Zt
	 cVThgMZEDkKprzERPdwKjsYqAG5Se+tZS3yNkbnIUHkPpX03Xg6DpkDWXfXHRRKm3y
	 dgbjkL68IPN/j4ZclihJLCgPl7kO3/M+P53nw29h0BGaLFFfiQWMgOoU0SAMOCWOwn
	 xDvCzriggeuVzuXjmPHs4+7pxcLd+6P18qxyYzXk6bgugbvs7VKK50XanI0sNjHCbr
	 WsMgKRb55JFEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62BAC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076444278.11074.1688731420074306822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e213b8301d45390e596571b2dd8e9d46bf56ad57a2dadbd52fce3120d79afff
Date: Fri, 12 Jul 2024 06:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720764442
