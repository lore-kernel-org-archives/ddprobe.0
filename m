Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344F2382381
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785753034; cv=none; b=D7GZI/qF9FavRO33kFe411HRAu5jxkaOUv7wq0jNWjZ39yINeYchm3GwZWCWC0aPYcb6CcqcEmZuTxt5QKios2dPbzsVoYARFDeH+ZcoEnkW32ApZrKZQ++gKFqHJ9SVt6LttK5xXbOAAzbvlW1IXOVRvS5pJjkFbueCGy1OPPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785753034; c=relaxed/simple;
	bh=PrAeGFJGNZ9Xc05MUNzaaxB+x9avM67spqp5BxaAMsU=;
	h=To:Subject:From:Message-Id:Date; b=qvHPm/0jZpNkTUKiAmP9uDZgknjgyHbRDDXt2DZuk55/dI2BwIehLoj8/pOykkeJLkKIXqi/rzPOQOE8Yr60bbjq/XdYxuC06xuHDbhicbfBd97bjcuuZzRB+l0i+himkg/DLHYag2vkBmyOcu+Kz4q0yEdBuSWaKKLaPf3F1Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixAqkq0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixAqkq0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09BDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785753033;
	bh=PrAeGFJGNZ9Xc05MUNzaaxB+x9avM67spqp5BxaAMsU=;
	h=To:Subject:From:Date:From;
	b=ixAqkq0vDxMMgSRcIXiIh96R1e85Znku30f7ji9F5BS/UIPG/UqqU32YtVgaiDJn6
	 rb0BCAsxU/E+lhEB7ywyZNu5ytFLHdBXkh5JK7oR0DySIpFcg0s2cSCt1SF5TpgxxB
	 sBs7WcdYoEJ+uthwyxm3YI70SPnZwSJVhdiHG/DxAnjETcxKZSGPN0CuMp03KEXxdG
	 nNPuGkLxa0NbThfCQ3zD/aalszm1q3m6MSkexVNUUvrW/eCGBiVb0rLPSmsUkdA+Os
	 tce5CWTjvr2j/kJM99Aa4FsXzGi/yE7qbhMC2xIfvz9EWasI9lGNpsWNgyOW+zjof8
	 QU9VQoIaGkecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB4DC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575303370.381.5837764045189260752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0649c3fae94fd51d10e70a37baef6b370fe3b82c98f627827b6822cd77d07fc
Date: Mon, 03 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785753033
