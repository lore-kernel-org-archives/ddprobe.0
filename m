Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FC21ADA7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770858894; cv=none; b=OVRPqR5px2OyCd2u7uslh8uSkJ4wzycbWBQDea/1/47x89QUOCmuvJpkZ+6R5bAMlVv3oEWQexyAsKVdRxL0a3WoHFAzpl6XISZLWuJ2ktS+QBgvdG8sOL7w5f9LQKoo2OhDE2v/6kZMO9PeQdHz0Zi+DttBEgqlv+sSNRgFPv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770858894; c=relaxed/simple;
	bh=JEgFA3WewJDA8936gJsA3fXkrW+FpQG7cKlB8GgVvKY=;
	h=To:Subject:From:Message-Id:Date; b=I3dRCAs/l4UNIloy7MGWMTwsnlkbB96/DE6xjmKWEjh4u5Yv4hgsgF0pXQkPSOdqWkiz6SgWGBwH5jP80/KulCl71kuF3zSOieVJ/B8QpkR/dDmMskYWBQW37NcMEW3G8Qjdh101XDzCLuQfdcu0DmtBsP9Bz6DmX5iIaJ8ZA7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2lUoUSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2lUoUSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39E0C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770858893;
	bh=JEgFA3WewJDA8936gJsA3fXkrW+FpQG7cKlB8GgVvKY=;
	h=To:Subject:From:Date:From;
	b=T2lUoUSwBRSvH5UBqq75hR6+iAnb6XURlTQTmqAgbR/j1VdEluCv+qmhyYvD3AJhM
	 RSxL2Eeyf8en9SXrXM0Npq+3tDOJJkFGMaROSfCSlfQs/wwridO3cWmQKIa4qNQrFB
	 kvBg8FJPlSgH5ui5LRqT4HdPaMdvI06x6uYTGd/R4rUles2e16mUuEzOLo1GdHkPQs
	 tKoJP5YKtMCmREUvnngiY76tl4TNtkIWocXTj+hx44xv4+mQc3D31HE8sqv3fFOFT/
	 wjFBg37RzKsF9IFsFL0RbwchFf3JkjA4mrFW0tSRAh5hJNJXo1ci/mGehOo2k1OEz+
	 IzQ64MndH5H2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF037E9E31B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085889366.19277.584175603324891489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28c5ee3d6240df0e09c23951e6379a760a617b794889f7ccafb7b81a5f64efd
Date: Thu, 12 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770858893
