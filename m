Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5228C19C556
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780193674; cv=none; b=q4IuGiDWZrfs8HeljuYyEoCxLhtAFa61kG8jULw9Ty//uVMop+OoWkDh2qmXPeSqdI5A81zunYLi2E0mp+i9JlLIlfCrHpNZPE0ohi4Yk+ye0tXQKmFqL2K/FKJYwyDQ7HadDzzjjLUDRzWeKbn3N2qrDSen5APrt58Pkt8gkP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780193674; c=relaxed/simple;
	bh=FjtbLwIi4Wu8a+SW7xBJ84SkDXc6/JPLbndVmU5+NU8=;
	h=To:Subject:From:Message-Id:Date; b=HjR0FFoJKYO0Pl2TayaSPBGavEbWfYmmIGtCRDneoz6i+K/8p2vop3MHaKgZrDEJlLGgPmZ+sk9q87aJqSp575Orqi9q/K4vg0RoI0sKOI81nC2wHEkq6Y2EPTSFJ4ncYKMvQc+WwXQUej5x/XBtNxSK5vQXH39dnFBP+Myj/SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqbaX3Nu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqbaX3Nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6612C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780193673;
	bh=FjtbLwIi4Wu8a+SW7xBJ84SkDXc6/JPLbndVmU5+NU8=;
	h=To:Subject:From:Date:From;
	b=gqbaX3NuvAJwFngEvd3Zrw+aahKPe6ukxFhRVYbJltWOvyPPDzRP3TXbvg9j1E+nJ
	 EAk6btd53IQL2OsD8BGzJo3hgptUZCJSZ3Y9HIx+kcClGrEK0ctADK/hwejQh+LJXs
	 GuRUZk4pgrEUDMEsCr6BR6CwPKyVW19TZrHxBCliyf/4MCSAqFjQzDVdKQ8kCK0Vyr
	 lRphBKuCJOHmoWltOwk3wj9nUWFmkWyYqfPoTo/9MGC3XaAcyUl4/oqk5H0uCuHJ84
	 WtZm0aEYXTGbOUHXmHF/Xl9iiqIJ0EENO3X5v5uIEBHzvPF2ueQc4zBl5XbN57kztL
	 TPzeKNLRgbH5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CD1CD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019367368.3362.11250872690328775620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e51f9e53de60073b98d550726b76cac7e43a2b7132a8b548b22e13c960f70f
Date: Sun, 31 May 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780193673
