Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5E01EA72
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706349497; cv=none; b=Y8w9jblFoT6Y5//DGXYsAO3YbAaBAnQOVESB6eIuLIVDgN/96eUNLhTiFj1ulta4RTeJasKL9B5QXOITAtP0LNX/eZMfzxYl3LytOJtcQi3CIminL2hIR1p6wNvtTVLXSAhQiSX1811r8hfWnJvjvQ/n+Hylkuv3VOwVN9ebwcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706349497; c=relaxed/simple;
	bh=SiiZYPGdwQhOcHtSYQR0SfJdkW5dMxCQG/J7/t8jJIQ=;
	h=To:Subject:From:Message-Id:Date; b=imCjXNDS/KfppVmUotH5eZTV33AqXZ2MQFY7HPw1//yWPhGqSEFAQwqj5Jdei+h7PoVPiLxihQPW7WoesiiNRYFGnhLrmVEzKytCuzBfE5cRfW/loCmWMQPD62327gkRKSpontzyv11o5V55xDg8kYz5vUh5tNcNIvDf5WTzIP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITV3Qri4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITV3Qri4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A50CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706349496;
	bh=SiiZYPGdwQhOcHtSYQR0SfJdkW5dMxCQG/J7/t8jJIQ=;
	h=To:Subject:From:Date:From;
	b=ITV3Qri4Vd+ywDbdRbFBJ824w/KsPmfx7GAKuHoRXbcWc2Ag3YgySEEnFvDa9r/T4
	 eGtKWACunYnuusprJ/AB+33Ptey/LZTLaOZb0aXCiDQSxyb3/DlfATS36wkS8PSRo4
	 bmPeBWvWVrEOsBT2Wsjd14Za3ApjY1YGi8lcY6YOYnI6QPUVdOkN+jrL0/r/q4NniS
	 jdQ0ko3Ltrv30aSauLEUs/Gzk8Zqt8VQPin2cf6IFfRY1o5Y4XUF5lnmuD4Hh0JMkA
	 I5kH5uKNfi/Z+oLIphhSpGrGW0Fq2EATq+QE+6LjHZHDOXVZKKuaT2S+XphWuUGf0k
	 0ZHwqFwXi5yxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E31DC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634949637.4558.1855510545409438978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4839f9de03bf665a10cfe9632e71c4d98cff7278ad7449020a2c45263a39f9
Date: Sat, 27 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706349496
