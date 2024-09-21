Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F93257D
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726878354; cv=none; b=mSP1C4h8wZRSUBWPHKpSX2hVsO83ZEsoQNBDkRrIgH+IbE7oL9kY0mFxonqr6QleoePRXM2+sVn5sJrZsj7kZu3/w5rz1KPH5DvCxGwf26pOu4/aNGUNe1f6jpZvwKvbgO+85RXgdE4euRqbzcqTvZCDesTz9hyNYt52I+W+f+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726878354; c=relaxed/simple;
	bh=vSJ+Xm5MIzgGqRWGlub37TyVWH32s43yWtf+sWDUrQc=;
	h=To:Subject:From:Message-Id:Date; b=CkTtoARGA3j3OJ3//LrrKgz35ntHZzjOvZaSmA0TJBj83Mq1rppJmBPQsEQAXR7bj/mKbAhlUTbDKUg5L11lovTH9lTT9YHm+aUZX07PMnnGooPtdvkE+f71fRxEyuzEKWDGZxV+qj6LzO8rYgsfyJ4I2C1Io8/oTtZZ2Kh1Fak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSK33eem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSK33eem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3542C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726878353;
	bh=vSJ+Xm5MIzgGqRWGlub37TyVWH32s43yWtf+sWDUrQc=;
	h=To:Subject:From:Date:From;
	b=DSK33eemRNecjUesS4Y4IpU64tIToRO91L0V+ZWyVe39qURk459kXCbHaLx0U5yOj
	 DX9dz69ub4DA2/5ZHiWMA/qUDxHymkmjktXRCA66zmcigygGvlNza7Pkp+D2zKv6ON
	 0AV4pWrEf6HGUSGnIYr0wCVucxSghuKeikXPq9i0c9vMpoh9+0foKSFuOv7QKjZu1R
	 dOGZ74ZMIFmpcLc2uOPPSVoos/BCD8ecB3DRe3Whvc0qCVP2sS+nvKZlO/jMhuVbbT
	 YLnfpgGcwLLRUqUqJkW+9mv840TIAjBsCBYzks8vXZbimoRiKwd/7AFCiZEqEU1txv
	 Rzu6kwJyrVaMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4CCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687835360.19126.1596224118913404280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66751bd7ccb3d3d50208692e9612dc4c9fbc30a4c9a8f98043a2a5380b9e23b3
Date: Sat, 21 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726878353
