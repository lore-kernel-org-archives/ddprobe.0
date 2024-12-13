Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208AB1552FC
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734074154; cv=none; b=EOGuO1XqQohp9oDTW67UAG/kWrMVQaFQa+e4dzf5A0pr8KxcipCce6/1QrYYtawapGX8uDMha5NKzw5dAYj4GfwzGInkNPZ7GXxR+PDRVM3zyRJgQJeLAKdPQIsj6YlhkpsHxTvbpCTUhhzQ76eczoM5S4DAO0LPxlFKhXv0cEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734074154; c=relaxed/simple;
	bh=jPgHbRwJAo9vIXb/PPiDoeK8iOz46d2+k+gh4e5BLB8=;
	h=To:Subject:From:Message-Id:Date; b=pTc9YxVRup5r11Do07gsQEDhUb4s0QIuh6SYPCSqzXiVsk5fl+iqhBGBi1ZKQLUR3JJ0ilA9mBRZaBtMruUEi2SDIIYiaF0P0UCAtFGzoi/W4Pke8PsetdoLHLqRc5CkdwMpTGqQvbbYOc2LsseUko6WWRaw6pdwjE8NF3hYNhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj99Wruz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj99Wruz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49ACC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734074153;
	bh=jPgHbRwJAo9vIXb/PPiDoeK8iOz46d2+k+gh4e5BLB8=;
	h=To:Subject:From:Date:From;
	b=Jj99WruzI1F2e89Ne6UKnjAYQpl47MOA1prBdNs1Eu0aP+AL4AJ/OeyQvEYJGCjhT
	 paJOS7Tp1pMEXZqJtkMR56pSXkf3JcaAWIDgWB8o+NPFDMt0KWlvrb8hYDHRTApSQX
	 eSBlTSxt85yWwtlcoPhSEGffGqR8kmAksOE84dUIfQiryRo5HUY7HgkrLyNUWIUlcA
	 HES7trjLZZ/ZeEBa8t5Vva58loKH1eVngXdRsra1ml23kCp1q7RRUt9kEYw77UcRx8
	 OU2mknNbOwtg6ea+h7LxXjpX1ctNVeJsvBg+djID7xfYRz62JRTxOBC44HjlJ7SQGq
	 c1Lb4YurQRleA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5B7E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173407415360.5948.7117842264423896404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4ea6d21ed0999a9ac6673b13349377929afdb2b10b9a7cd62793377b1525e7
Date: Fri, 13 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734074153
