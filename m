Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B06EEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753678194; cv=none; b=oOB62AFGwgMh3xo9z7uipFFygp2iiBkXwdtjsa/0KGZE97I9lz6wCM6yLbNBZLxKeuw2wh+oRppQeiBVefRcNbLZ5KpumYpKBJ5TwT5ge4mP5io4MmdAsCVyfUei5pqWdmX/g9MyZKqjB9nuTufyPg3PjOi2btkD+ALEkJwmzGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753678194; c=relaxed/simple;
	bh=als4s5fA0niQq4eZeZH/4KMBNRqBU+e0g/kagzIbJl4=;
	h=To:Subject:From:Message-Id:Date; b=Qd4pXTg/9HAJO1WemvS5422LbImo0xjYVDYmOs6si4zWxXw8AXmiWlumfe39SzJ/pK2hk65wci657Mx71sEEL5TE96+Tej8SxIOKWGZBmGuN6zBUGIv7L3EMtLLbAhC8z9H44sCQKWbQ0o0eB+Q2FGCJ7q/fz4Ch/57eMItVJ9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rd8ahG/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rd8ahG/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C931C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753678193;
	bh=als4s5fA0niQq4eZeZH/4KMBNRqBU+e0g/kagzIbJl4=;
	h=To:Subject:From:Date:From;
	b=rd8ahG/+QYLCD6WCMQiAbdsqENWaMEjZ4elWqXANgrpX2qiUfR7YZ67MYON5W3V5X
	 dOSlL8PL1qp/la2byZyZqTPO5JzE2tFDDMFyns/D7eCG7wo+/5IOmb7etV//duPBi+
	 iVr68kT1MBH7dhGhWHJk9yKScN+p8J5nNUOoa61TcNQTCHoQG9R1HrxnsmETz0/Ih/
	 MHEzoVe5euJ/mHHRfifytaScIbiS04tWsBx38gWiYndg3u6yVcRB3NVrNgCr462sTQ
	 vLx1t33GvMe0OfuP1XP57AToxLpOjXbUDBdHpBIueIEn4gXOLekik9zWzu08j0YleM
	 EC2TQEUCP2+Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D1C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367819357.19748.18360410783350415896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85a760de11a4f1db23f44c82739d99e0941085f46b714743450088c26a4a6d1
Date: Mon, 28 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753678193
