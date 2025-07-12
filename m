Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0802A1EF39F
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752318594; cv=none; b=KpnMN9gChDeU7JTFSfSB/XWNwe3CGzzT2VWlejjKmG8eiyBd1FKBxnqKmd1Dsy/SNwnKEl5mFLFucZR8G42qAUuRDfHicIZj2i4VN6yqWnN+Bp2GZUqE4ZUFlid9brxkVzHiPe9GqXpHMvCcDLDRpXPtAx3My0fZMvFpA5kTdTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752318594; c=relaxed/simple;
	bh=c+Wx4orDZ9gBkFa8R13zUcPU1uOu/Rp5OWfnp8LlUw4=;
	h=To:Subject:From:Message-Id:Date; b=eU9oKsonhBwUBPKPhevyDFBq7kL5UyZ2Y0l5JS6gMrvSv3dNti9xIGfu+6L35xQ5/wfJkhQlkY78qu+ApA5M4U4PBdHmlcjFBqC19UEEIQgrIND4WNCLCTF5rxzKI/ghK7QfxrOjkxhxQqDS0bKcpQ8PwR12n8P2f+4+VTVvt2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFXwXYdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFXwXYdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A289CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752318593;
	bh=c+Wx4orDZ9gBkFa8R13zUcPU1uOu/Rp5OWfnp8LlUw4=;
	h=To:Subject:From:Date:From;
	b=XFXwXYdgpD4yGY9dgsYlBD/X3+CfIacMGTkCasjnlrm79rrassnTGJsnXmw6J2/HG
	 pFn+qBb9Kx4TzcG8StFHCLDMCCSzRp2Y/pk9M+p7gyplX1D7UR6HtKQEDdrWqy6GEp
	 0QV5Ar7KuaLCKb32jzo05x2Vnr1PZ73EYbISTIooQsmpre/cSTXzTSQrm5qCO2ks2v
	 DL1hc9kO1QWdB5QqYVId+XrCC3ZqMUn7BZoFvl8OvyBoJqGLjd2YEpbmAYbatweAbS
	 jrsdgyAbL89ZDlXtKFtZF/SRDcg/zL8d9MkaVkwHxWQ1MQY4y1TxpKqoZRFhexW/xa
	 IY6KXxF8zwP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA5C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231859357.6642.867909632942964611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4090e8c9ff18e3104045b141bdf35948b750ae022794a044306b90d1bc5455
Date: Sat, 12 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752318593
