Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C68331A78
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776757054; cv=none; b=uuDk0n5zmo1Pf0K/GUfHv4fb6ZruQOS4e9Uk4pxs2VMsbuA2mCcO30c7XeyIfiEJnBXUGpccHp+/sXshHB/SCfhRkIyUNaxy525RU61l9YVT088Sah86J5oa+7WgmMg4/bjkRzQ0MMYp9WiQDRp+uwAxJH2vyiZc2JugU4xi5Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776757054; c=relaxed/simple;
	bh=IoAjJqrgH/F1JIAEWcS3zRRyM/qpqpGyHg4SV/qtFGw=;
	h=To:Subject:From:Message-Id:Date; b=nf0944rQzNmovOPc0oqj3JZqUolNT4uZxyS67TdkPooRrjTcyqxzA2ilaU527AU+w/0oaxPEXNGpsjcxjSGCSrxfZxzG4PyhZh/IGg+Udo6l4ku5hjxih2gpd8bMmwJ8dAHFMuRS0VxuG2Tzbqjp+w4agpf6lsHAcmOnEvokJvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tme6Budp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tme6Budp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE04CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776757053;
	bh=IoAjJqrgH/F1JIAEWcS3zRRyM/qpqpGyHg4SV/qtFGw=;
	h=To:Subject:From:Date:From;
	b=tme6BudpxMmaQIGv92JXUpdcIQC8xS5Td1jb/4r7JGfHLiYV6uhPJkp4Tk7JTxV8L
	 9rVM70ciJS6ApbW2SEYb8WblqZUteQCKBC0ZuEyhltcMWSbcMlZBhlf9bpHZ7w7OXE
	 qr9V8Dsuwv+oJlDZyu7zRES9OEhTcNWziu2PC/FzbDpgAFK1rGp1JeakGxDWmcvjCn
	 VNq5NmKwP8o+MbQF6UE+bsYGfaEBXQZ1d4xqg72+6WgG5KON+aCRzHphMuor6JuiUU
	 ylquWff/zZdImreuZzZncvsfGWD7J3YeMTw28hRLCg6NPM7LNBU70Si740wpOVALeX
	 Vj5s6KhZFo6kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA05DF327B8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675705368.16319.17516726901013856996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0d5953aa4299ef96f7e7a32a6221a2f5648cb5bc86e91fabe76885c651da61
Date: Tue, 21 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776757053
