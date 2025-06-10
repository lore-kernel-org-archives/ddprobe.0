Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF18262BE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749556194; cv=none; b=jcc4ztE4AI7qKzGgUuxFfy0Wc4Dzu+a0ALA5bc59/9aLMSX4LwilVOSjVTOE2vCGumfKvp9v5vrTjx9Tj8Ib8leBpd9mpA7WsmfsBbD9TsROTM2xiSKVN7IPZ2Pw8GfBlOmy/55u/lHTyWgVKvZUavwPiEj5UqXGr0NauwOYbZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749556194; c=relaxed/simple;
	bh=naUkv7fLwSvyvmf303hHMY7m12mJcoG3Nvxq1v1W3E8=;
	h=To:Subject:From:Message-Id:Date; b=LREMm6+mZ1xkRWPSZHVz9V4T1b8gdGz9LaFlobJwZK9ZOgX0nhWwV6PIvVy53zp/IXiSYKoYCyF8azzuvqatYMDDqPq/GJu4kcP0DrHlj2cVbjTmTjfg+e2u2OLOAuKfnlHcV5nNu7+Ooz3luuzxdoF1VLp7o557IneX4ppGQxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcCcdoBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcCcdoBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E255C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749556193;
	bh=naUkv7fLwSvyvmf303hHMY7m12mJcoG3Nvxq1v1W3E8=;
	h=To:Subject:From:Date:From;
	b=dcCcdoBQfReXroOOw58u3nHUL7Lz6APvZAXbSxKbazQk3cDE8LqqB0ShV2vsIm3ou
	 dSUxF2LqSp8QoadKFqq0lvTQU3Ughn/MxiTiwkiNkEWS0lP9FX86Q0uousc4FjvZBr
	 WQ+SjL70yMyZ4XgIiN/XWXK6IBJ14co4f64SdoKfl+szmaM4zB27t5dq6EzaP8DenL
	 o9yGfkSYQ3KmCEtk0SEd5OY9/UGXUtZLw8RetsC4wbHagdtaL4E2NlHCkmuyAsHooC
	 w883LzUwmNkYn+/S27gcxC6CjvaIP9L/AadlschEI82YjHwMPXwiRL3Z/dqRsYHMRF
	 QWb6E3dH00b9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F002C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955619357.24678.5710590454882461223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ababb79263a3c9b6aca6f68619283ba9acc4ab9fe70c0dbc53597119dd76c32a
Date: Tue, 10 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749556193
