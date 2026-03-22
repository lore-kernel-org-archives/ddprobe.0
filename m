Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D8337DEA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774146294; cv=none; b=Eb0eCGSmLZkjx17MOkAc/ekfaOC0TKHhMo+WYyqH96N7hGVJPM/9WiamTvnkZBOM6ZrbNMwd+TplZPvsuJd9x1gpW3z5K2nreCTbRWxJg7zoffkkM5QKItHqv/H7f9H5xQMxur/K/c4tUHFfmmNH8TLRzjUBWPXvbuyU3L2vmOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774146294; c=relaxed/simple;
	bh=sFNb/qBa031eZ+EtH1rPbbp3dZxWsv0GZ/M5qaathak=;
	h=To:Subject:From:Message-Id:Date; b=jGzD4J6j948Vz4STOwbbCbLxJk09TXEoi1Q+JHScm3WO3HFiSozf9Myb17ISsMoSOAx/qX1Mc2NRalvSub/u0/QINjfQvqSfn3eZmec5Z+01Z2F93kmFPA/Cnb+wRCXsSJilK1yH1GlDknh0r7cI1kZM5P5BRWDCatlHZ8pdK7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfR+PYgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfR+PYgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44B2C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774146293;
	bh=sFNb/qBa031eZ+EtH1rPbbp3dZxWsv0GZ/M5qaathak=;
	h=To:Subject:From:Date:From;
	b=bfR+PYgfgU6Bh7V+WhVQyhaXO4r/YxXovBz20gX1IfR9vu4IF9sGEyEJO1MJnp4BS
	 hdfsZMkCnp16jDC88rwb1595ofTyQ3qH70siQGaY2A54s/iXwERt8XgZpzm2MHgSgh
	 sRA5CZoJ+AK5iAnE3OLN547aThwm9E+K0gXY9sm35lmPVp2E0jM0VVUuLBSc1LeKUE
	 yPsIebAIJwy+6SeVelnUI07ro/owpx5OJ2zsfGAEJrC5SuAC43u1VIhsq4tlPWuiBm
	 p3aLcUd+N5LAiGkN7lfUrlIe3hUslMsUX2AqrRB+aw3b7VQN8VKpL+skmuFWZNiIGJ
	 OJ7e5pmQsr4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA0109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414629357.7280.13792456432632132997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69db6ed76eb57b19aab355525b60dece5b4686f2c4c8e5008a8936d1d88adf90
Date: Sun, 22 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774146293
