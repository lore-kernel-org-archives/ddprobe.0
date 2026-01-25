Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EC01096F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769310234; cv=none; b=Yaibsc+G1VHKD6hfrZ9FJLba8vWHnKyIt4Mg0BFVWl434t368LOMxADK3FbLlCAf6/IU2337kpKUv599W8hyJQBrv8M7d+KaN4ypuhYbxdD+towdNpAcZYkVakSicFgLgQZvdmSy6yd7q1P4lAX3uQb+ADutpiTN7sIzr1gUrVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769310234; c=relaxed/simple;
	bh=bSVrzkZDe1taTRMFwDL3ouiYbynG8A8TXeA/vNhYx/w=;
	h=To:Subject:From:Message-Id:Date; b=aG4rNiDy3casUK0J7/zoQKbz+Kp2iI29Vx5JDq+fP2F71H3MrKcKB2odBi1HfeM6XYuYDzhoRkkNZr/Xq7HcJZpZt1hRu/io5Ifc0BEYUPh/xDez4sDmxkB2Mx8x2AkktqR39qSljQoF9iKp/RAdpPiZkCSOrGeclBwG0z3w4zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkv05EUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkv05EUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E1FC19422
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769310233;
	bh=bSVrzkZDe1taTRMFwDL3ouiYbynG8A8TXeA/vNhYx/w=;
	h=To:Subject:From:Date:From;
	b=rkv05EUsHx10x4lLS+/hkfp+t7ehdNXqXDnRfgInM3vy2pe2j7UEQs8rx8ZFiL+yP
	 rC3CRLmagDPtArjeqe79bEgCZqac1TadLYwxJxlXQE/Ys4RYy+Kbgl20uCKi+sW/E3
	 H8L4I93qxxa0FlehLE0h+PsliBRDJxu+pgudqsSQPdll/XFyT6S4hqoadhgQgNURfJ
	 FmI4fOSMfgTeI72LW027FcfHLKrsBVn8OpdQ3fBs06o7XJnFcFymOcWNwVd9di5zYP
	 pdeNVApWuyDRsp3VMxFcA4Yq3CeqfqPpgHEyntXuLMXA4YTOrx5loGZCxEPGjIO+MY
	 KZ+gh/fL58pOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D25E63C81
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931023358.25343.8761818955491330158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445616b6cad1b2484350099831a640ac1df97719cd5f97ac17753c51465ebd7e
Date: Sun, 25 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769310233
