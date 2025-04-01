Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0EB1E5B81
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743548394; cv=none; b=EulzjPpiBA0UbdVIYk9jGGl2tJTczhxwlz8eQHeZYlhyqjvXb3pZWTk20QxUjTM6jy4npRRxTH/257/pAdwm5iJ+zlDLbfbA10juwjmeyV329Cb1E8vRSqzUnJb4uWag6ycJFne9g1nlVREKBbKiECbncbPtxAkymX3ZZRhfCVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743548394; c=relaxed/simple;
	bh=a8Sonf7km/+AA0uqiZNXr/WpqvG4zRprGYCHTWhaVL8=;
	h=To:Subject:From:Message-Id:Date; b=cLvpUo/l3mm4CCfN4zOJDsvZii/pwtlR8I2ceYvqUERueZibQVFMRAKD121OJIrSqUcTQysnJunIHRNt0Z56FjXgvYxi1mgq4baXM20kF57Xo2R8WxQ9UV7xaV5fLILpf5M5KHzte7W9xhXo9MA00WOWVDJOJCendTwWt3xfpkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHNW/zxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHNW/zxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF48C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743548393;
	bh=a8Sonf7km/+AA0uqiZNXr/WpqvG4zRprGYCHTWhaVL8=;
	h=To:Subject:From:Date:From;
	b=XHNW/zxk6+2b4hEy4G+bCD0d+bu3FCVu+psfJLyZ/s91shXlRwT39giB3J3gTDvHR
	 4RbDm54tdoCyc6a5TMoxDdDqWRipCX2Khwp3WFeyrXob+0Gtx4+YQjcyEAzRn9I+ME
	 cPIk/8WV+weBjW1kCheyTkU3OH3UOvheuo3sM2tpTcpa6O73o725OFZY2LGt21BeGf
	 g6h7FOV59Xxa1MpEQsd5NnP8+3PauYPG5432SucbYa4l6BJgd1O7x7mJEs412wGybk
	 e4aGjhnZkMQouHQwHu3Gkv25d9E3O3P3E0mkksrknOOLoJmJ0x/aJ7aCXPizPweMfJ
	 wkvcUmd73ECbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15C7C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354839364.32613.14460793841320928896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0ed61a4417b8347f827c56c9dd5b9518d0e5e04a453547d4b97997323618a7
Date: Tue, 01 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743548393
