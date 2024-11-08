Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A80C1CEE87
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731055554; cv=none; b=PwL/uq4SeknYBY9WIC73YdHclLVifyXg0TkTCNwBusBDlPTloaREyMMVYjbHU1fufHTsT6lknmrR+4cSFXJXEbyjmVohcjXCMKur503Rip8RBJ9cEvovgeTE+gVFzhM8pgIMifZ+KuOPIeHCJ0vuXwdR8dbgD5ScH1sPclqi1TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731055554; c=relaxed/simple;
	bh=ZpizBlabhzA1s1ryr7ACgdpacG64NlNxwxjtlG8OGBA=;
	h=To:Subject:From:Message-Id:Date; b=Vy8y2X65pyRpN64okwSARe8B17jfdsODt3ttmiM3Hbor06+mzrqJKQ1sn3zmKqiId7cpkOsQRMSuvleJSwMQawbCUIbLwS5/I7tK2rgK25UpLVJ00cfXMg4EX4NJ/G2UakXsm4+Oyp9ma426/smnD+lace9+Bz6BvBXRDBIPnl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjhmvEfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjhmvEfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1BAC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731055553;
	bh=ZpizBlabhzA1s1ryr7ACgdpacG64NlNxwxjtlG8OGBA=;
	h=To:Subject:From:Date:From;
	b=VjhmvEfeOy2s4yDqa/f+1Vh37zo5ZgQxjKIaDtro/GbngNbiS6R/MHfy3t1vU+z4D
	 donXPB6kk/DX64v/kwYOsqXyFBpBytlCDunRniUPu5Tzc3gMLchw62rnGy/8xXsLN2
	 H1Kq4+k5j7wdh6EXkR8zlxaYPA5aQhOZ3HWBmG4jFjpaybjjs9qdOFyhhpmWBiu5k+
	 n+61U8w+i+b3wytiH9vG4Wd5tkWHBAL88VDMZGdkjJQXSAtZfsX4E1XfCWTlWd9oqo
	 DoBwNgllS3onitXpzvIJTX5WseJ2I+DGNwWhN2UZq5o1qpfCpINb91JeEY9KcqmhFO
	 CwlX/bmmez00w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95418D5E145
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173105555360.13459.7953567176416535805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd556eb274dc7ad29d553adc0d2efaa4936667e9ec418ad56f396c661a3b8862
Date: Fri, 08 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731055553
