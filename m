Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC19434E21
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788606634; cv=none; b=Vm293hMlJ3RnyaME2hl2/toTi7JeUSX+zu5Wy7w5hQ6DShneXGIdKg7VP6L7a3i2BZYnkJFn+BOHVgy1MRrisyyqgTYY9K9NqHJnpanEAPKXbM2NBXpySFDSLYgZTmokJZoR2TYqdZ+m2l7GwLd8lO5ESJKV+7YaMggM1tojUbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788606634; c=relaxed/simple;
	bh=iI3bm7npp15DQWxJgDwBtz0Zjsch2mP3QVDr9H7WWwI=;
	h=To:Subject:From:Message-Id:Date; b=U+olDm0bdOG5A2dJ0AyO+26o3rE77W5oPeA569tOCPh1MVz5ONoGiVI70OLiVNSfnDF8Hr/ji0gvNqWbryNd0wdtFw83Ial0XcSTuqJXQg6JnnLX4D01DjVVzkT/+7TC07wGGbeK6lBDref8vR2xlrMwEl0AYphA266YJsgufrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ2uAhvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ2uAhvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FD6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788606633;
	bh=iI3bm7npp15DQWxJgDwBtz0Zjsch2mP3QVDr9H7WWwI=;
	h=To:Subject:From:Date:From;
	b=ZZ2uAhvZwumkK6divdozM+K+vxtuxMR9W4V+pXhRyfDZeDHBJzmyWVNgPgOOc7ztX
	 Rz/I7PDxZDGvog//cJAg87BtyYGJne7Q20BK+5SnvL4MvYTG+q59pZnw+6AO9c0CNh
	 7SykkPJeiNYUfXQWHVP/lGOchtNLlfQvCDRwbYcLw4GMi59Qpc+XPctgXoIIM8NHnw
	 yaoLkBbxOIuNzlUMtbClb4H9z5V4UD6pYm4Q4oUovPutWclH8RzjENgxB91G9YFQM8
	 cpiPfEX3dVyCasavMnFMRdU9ZIO+cyWNoyoIuEdno6TIIUQcLwaWasMC2C06QajT16
	 zFDiMzXjrdMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B220CC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860663369.1497.15049558950026477520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b945ddfbdc2486968ef0d67e4afc53a65626977a3f1b8805c8d8e9ce7781bd
Date: Sat, 05 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788606633
