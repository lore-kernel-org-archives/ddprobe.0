Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA0B55769
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722345953; cv=none; b=Mlgvr+xhMEtcyfj/fxxqE98SZvsLcbsl8TWi+//lIekO30+1vl6Y5Z6WHO+xARSm/9Gddnumq1qWh9MWO9/xFCljzFomEn81h/cnxVIoi3Kq35GHfzTiEpSBqIQzUPSOz3Wdz3HSFbwqrnLeOLVvSfrl6Z4GT/WEIFSsr4ry98Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722345953; c=relaxed/simple;
	bh=/0AY7RIbp2/Nn0XDG8sdMMu0vHXYRDGL0cOd+2Ht/t4=;
	h=To:Subject:From:Message-Id:Date; b=GgTJX5gqF0Y8rBbXkhP9nfmukZiWkazicodbqsVEFXi1UJAmxBLqeWOcR7+augxxHSYAGNHOJ192CIPD47I3uh1PzobBR+N3+A4UZO+HkbpLbPRkc6JmO868q/Leo6k8KboSXS+oPDaRyRmFB4p/KJA1tjViJcsFQcugxheRZss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIVrEp6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIVrEp6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA282C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722345953;
	bh=/0AY7RIbp2/Nn0XDG8sdMMu0vHXYRDGL0cOd+2Ht/t4=;
	h=To:Subject:From:Date:From;
	b=bIVrEp6qsr6VN7Q5yy7eDI+U1TiRTVt+TTlCfVg/5B3ViacpwcSqCi4rDtcrsjoKG
	 8H55zIfRYzcAxXSMCCLjDH/byqrHX5l4i2XQQyrGPLC9bCqw+7O+eFMj067Ii/CC/O
	 Nd59fOEChXM8pw9+R9LyX+ezE4xrz1Y1jjXHJkcHnzGLjXh+ejvG3BXA3aOd07ZQNv
	 cCEnbuZrDIJlHJa5mF77d+p5qzTmjtHJqDkV7umMHI0+qt+XSGyGnghGQRPRJUqr1a
	 1hp6PhZXmnGuNwNiz9EiW7u6weSHRr2mZ8dePWwDGlqRf0M3jpa3VvipQBP+vqMrCG
	 pLKMulTurIHKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965AFC3DA7E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172234595360.30201.2793526544376116397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20abb1603d58e5dd7112f9d66b16270d79f90edd9dbcc54996c8747d9a4295a5
Date: Tue, 30 Jul 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722345953
