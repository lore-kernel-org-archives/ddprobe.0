Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EA9370ACA
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785182435; cv=none; b=SkGlzFb0nxaHbinbp1W+FbTEMXP7aNFomBRHJjOI/sO4Zp08u1AbIpB5Jn1ZRk9QJH84jbrHr09ua5BKE+mudpv4CwpGIr18zV4YEcQyYN4atQE4Pp5iPnsA8o3yf1cHr+UuGcOlx+fpIcsJ0dpU+PVi78WsQwoDdl7ayTYJ8MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785182435; c=relaxed/simple;
	bh=yU1H4rKIri4RLQupIqE1gsCcXxgb/Ky0eXXUfsvrAzw=;
	h=To:Subject:From:Message-Id:Date; b=PMIkbVIhlwtLAxSUyRr47xwjbvIJj1f4oAPbptvr60FSbnfnEXeY9/3LR+nmGDlPkFhaH0dJ/sX646c43+HlaK4E1D5YXxqpWtXeC2VxUHIxuePpQTrlTULQzh+GUg0Gj0x1+nUbnPUtlW6SkFqoOVFuLSs6YdT+4Q3aeQGB5t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K53dc3kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K53dc3kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDFBC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785182433;
	bh=yU1H4rKIri4RLQupIqE1gsCcXxgb/Ky0eXXUfsvrAzw=;
	h=To:Subject:From:Date:From;
	b=K53dc3kw3cm76X+CzwasN5TYhp1N/h2hMk1h/anIDIXT2Dj67UWeizjQooNIPNMww
	 YxSad0iroNcqlHVdVSRZToXSbHSY06XWrO2SnSInIBmHyn2HJQ3IH0uyTcySdZlImU
	 vKxZuvg+113V3LAJUlytw9SL4+ek+OHEnuJzZTu4um1fqweosRsuWjJk7ptMNjg4UG
	 yWAk+SuLhaJ39ewusuYcLX+QrAV8FTgTtoKqUuE52iPZqcNEbN5cx1ciIditnYGUk/
	 n5BZSK5m5M2U1+OWnzZvtTfIEQK//Kt/12toaIC/PiMHeQDci0IMBl/CmjprrTvyQy
	 kvKyLgLqt4wsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9501C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518243368.9209.8364837600634447551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67da3326ea311229e0f6995a1fc962700ff1c66e6aa6aa2d25491fb2cee507f
Date: Mon, 27 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785182433
