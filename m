Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242373803D3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779481354; cv=none; b=d7dig8I7dxBxwN5EA02u7Vweo/hi3rDIdaipBdANNQN6NBWBZUOahMs16SvtbQXX60QH+K+ZgBCUR1k/th6xuDhAUztkyvd99mw3hN2DAKOjK0idrh/mtJT6R7GknhQ+v9VWf7RRdefopv3HNM8YvTAJa90gGGmnc7L+mMJ9Nws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779481354; c=relaxed/simple;
	bh=zoVoCqyjmeWmCNYabo72P5eVFRZW/EpxnT9GXgOctdg=;
	h=To:Subject:From:Message-Id:Date; b=Jtyt+JtPXUdvajBMyVpSf1QgPqnVIdQ7331mwXcClcfgjTooydPvkcZ5vuuFU+0VpHMP6DnUYfAPBqxwGVxmal/i4pQzYg01f2K645o0On6c6njr4X+CYPtFrJenSgUMKfFzxHlPikRXtaPzvDQRXZc/7XGXDsJVF77Jhu9b6rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaw9BUCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaw9BUCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5298C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779481353;
	bh=zoVoCqyjmeWmCNYabo72P5eVFRZW/EpxnT9GXgOctdg=;
	h=To:Subject:From:Date:From;
	b=iaw9BUCbyEmtYcpMTJbpCyN3IWWh2SisM8Uku2TR08GkLWBNKBJ4/w5ghSgDEIo79
	 udfZbSeHipfjIP8/3gmmdbl6gtKZ9lwByY8LCIIPjPxVt9085ex0yOj9tP6ilaBDhg
	 lnaAWXp0q1nGPSmWdMyRhcIXr4Do7IG3pMwcToUMSBV2j80jZRyXMu0VIOQpVMDDkV
	 /Xo91S9ixrqqp1VZV0QB5+pmjK0yIet8JCvthxYBdnyb9CmjE/+r/uICjoveL93r32
	 VJPdBd1+AGVNBUZUcBS2G/dshFH5xbBD4uYYfJSji1HaTidGvnA2p6jrwGdVBOMsZb
	 5CBywlgUqed6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE4CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948135368.31130.12750594730833746896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d38bece61e26ad6da83e7a1f00cb8bf7d69257e9b446c09332c46241c84f1ab
Date: Fri, 22 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779481353
