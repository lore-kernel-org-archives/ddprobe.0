Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495E72D97A7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753884594; cv=none; b=SOYsQR9KL/kJlUKehkcWxXG1y3n09CQSFSgOZR8HbsMyk6OICf4m/jQf22G97obh7UldaqCDLh98uxZWvboElSxhynxZu80RPrpHkf0dAc2y6LNFgF2TMSCNgzdSUisFdVykzieO/QsBNAt85DhtoxOhWVqB77nvt8unoikv6UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753884594; c=relaxed/simple;
	bh=hrUKCYPqd2n+516nJWFGilPiCCkkhRlrRtC5Fm7Pz9M=;
	h=To:Subject:From:Message-Id:Date; b=t8TdYI6mHWYQEUjcQlqdh10pUs/LKHxPk5dkyMbbLVHWKtP07ksnTml+GpQXEcqUk6Xler3FvToRhZoF4+3Q+ETDlNr1HmOCOboxgqBPgllERleUH+pTeDwkkjoA5WTkNKkw/Pe/YYRno+7rkMhVgONmEC3gUzzXIQXLY8dfMqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYGUrncv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYGUrncv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53EFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753884593;
	bh=hrUKCYPqd2n+516nJWFGilPiCCkkhRlrRtC5Fm7Pz9M=;
	h=To:Subject:From:Date:From;
	b=qYGUrncvBDGOD4TbqKBcTwhbEeWXUdwjPuz54Burk58tGHi1z5D864W822qm8HSTi
	 PE+L8EoziPy5960euJCbKVSJYSPtz/8vxbNs/S9e7pM6TlPUn8fepnPtW6wxcL7J2x
	 lfyeJjC6GHoe/6uw9fsqUOhZBU3OoHstYIJN1nS8GSViiJnjZMp6005q0Tk4jhVliX
	 AyEcZQ7xQBBmzhxjkEVo5q2pTPoY4vUk8QfaokXjJLeBP4NHP73nNcBbo6CDbwX+fc
	 KBntsJIRfpcpYCnG5y5e2oojAi8ThPBiZVZ4gt3z4QpZeOYh1JWDgVhFQA8ZRGQOmQ
	 SDryQHLPYVSiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A5C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388459359.30390.5955671729181700342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c2a44e253423e36ce18e5dbe9625bb560a1da71e90a89ea9816bb68008aa3d
Date: Wed, 30 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753884593
