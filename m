Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A94264A9D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781057134; cv=none; b=MadrvW9EHzONxreIe1NR47oVsMaqF5LKBZQT1+1f7ju/FnYJBsY/JlK5GEvOSR11eXHLbJdyLZBCljyomNw3TdNpC/yoSG5nKDiCtu4ECefSJypFMcz1xGkQRceJL6/Puv1gSdIcWXl0EIQkyk1wSz4ZDKz1EHsvL/72fgVH7PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781057134; c=relaxed/simple;
	bh=RTGV/nPfPXPFzz+7xOquK0ywCFFRDH6TRY9iRqNYbwk=;
	h=To:Subject:From:Message-Id:Date; b=Jd5FOWC0kd0YHgSp+1EUjiIO0b0gWAtt6oc0VvU8wFBa3JttPCEFM4d9jT3JuskGmdO1H2BS+qtAgFokCVSNFrpY9HJdK1TcH+7DegA9rwYOQp967ps57m0/8Ef8JbuaE50TS12U3DShd0OoGOLOCPyt6+C2r9/99cUq39CeqRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbrSI82l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbrSI82l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA846C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781057133;
	bh=RTGV/nPfPXPFzz+7xOquK0ywCFFRDH6TRY9iRqNYbwk=;
	h=To:Subject:From:Date:From;
	b=DbrSI82lemiYf/H+9szywa3vjlxdHAak0VzMuG9VMl5b7vO6zXw1mY7cei2B2V9TF
	 mlb5RGnHrR97mNEfKnAQvkAGyQeRDzxekAMEuisk4ME7kTiTSAy3Lp4ohKBWEkim4y
	 5DZvNJjtwICTfi3LWjjbO/wKfVh/0IqsFmnyMhMfUbjLikOXnca2h0G2PSNuEAZIY3
	 OQtgRP/Ji8cGSNuaiXEBQ3KvgtYMckAPAsg+FSnHYaBvtIhC9/ohNz3wo1Fa1R5mNf
	 N3YvBsZcQ5/20RVWxfSCFijSpXZ+g6Pwuxw00Sn3qiXGSy1MwnEgqgVtgWbqs+buUX
	 fmCjN5fnmcUlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE30BCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105713369.7474.2430746436530118007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea0a41a3cc9f63619d01d2eaefa9cd65f6df716e52b4c0f8f05f1d88465949e
Date: Wed, 10 Jun 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781057133
