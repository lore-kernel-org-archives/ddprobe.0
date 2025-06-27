Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B5C19597F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751012994; cv=none; b=t35kLuZK06Fk65QFduteLxjXubnRMzkQUF+kWUoqECjuCzIyXGUEjH7YQvsXg6BR+inuvUVsPVWh6mpjjPkyl1fsD3X2npQfzPReORFbtVTCfRfUQxY+SdZ0Faz+ICpqtjHxAFUzzXiDf4ONTL/96Uj7mI8HWo2RYEGOJ1UMizQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751012994; c=relaxed/simple;
	bh=D1NP3MN90AQIK4DHOd3oB683HMR/pRuXqqd4Co30Tbs=;
	h=To:Subject:From:Message-Id:Date; b=EzLScLPpXwAUqaE+iCPvpCJQuR2rL9KwHII4QuPWeeuOLPndleNDwXGpcf0fghDDzo6qgbr3K85I7nhabaY/my8f9U3cmAM0czhNvF8BnW+4oBlKhZjSpl5GDg7hoy/Xgf4+y0+DFqmmTYWuZzPQo8XIzwNzlKLTMvEj0DM3wsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOqv5rrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOqv5rrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751012993;
	bh=D1NP3MN90AQIK4DHOd3oB683HMR/pRuXqqd4Co30Tbs=;
	h=To:Subject:From:Date:From;
	b=iOqv5rrhViPY9ruCNrre5ac6s4zv+cYPv7xNK7SxM1VmUuieEnyLBbIKPYVrCdot5
	 dKjsCyxskiMELHuuBDlMtNN+11AuHG/cOyMEr7Q1hm67HPxkwux0Z7MwWG+6vsTFUC
	 ot8bN/GpDdyQTDVuyk7hCAR43JTIhOHSaLCX5M1zTZvccXGVppApuwd1RhYiRJy4EL
	 NTcJ9Fps4uBZ6HBKFwllpjtThiW2JSeVNmhdXCoRb9N47FnRBABhwOzRj9FJiyMznZ
	 HMC+C6fqgFqvca/yPoEYNkKua+GRfTBP7TQyAE8p1Hetk7oZyRlSXbyo4UfcpfmrG5
	 g0OTzoQMUQJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E6C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101299358.21649.18285172268485527988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504cecd594d4e84936f2a125d74af095dcade2e8ac2be0c67081687c2eedfc8b
Date: Fri, 27 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751012993
