Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD05B3EBF38
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769207033; cv=none; b=tQ5cteogfaJvD3pHsBjVbPubQ7gfy2wGNXyYOM3hBIyfqVBk50JCweIGJGkSQnYIPnUsGADb+Wyw0ZHU5YEVCbNfAT5i3YYX/7FpgMwdmjL2hl/OsUfW0X1hZLImxKUMmNn4+QbRM/z28vPQBDuW+0Ut7d0Qn1ecqErqC98oYAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769207033; c=relaxed/simple;
	bh=NRoV0Na43Qb4OzK/aRUXDO+7jdEK7D3cSZ53chUC9vQ=;
	h=To:Subject:From:Message-Id:Date; b=NTNnikHOqIbR58Xzo6TXkIFIDV1KN5bMCthgPhn/1CqxArxmZdWIv0WuE6WraB7EZa5fKhj8jGLeCuZ7fQoObPSHwMP4pX4jFKGlRoRTjJxsesJ2nGEnzut4NqMm5xSrBL5o32+DIhPhsOqaXvAg9ZewCkcAa3+fnMobL3hSkVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnLm5zx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnLm5zx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769207033;
	bh=NRoV0Na43Qb4OzK/aRUXDO+7jdEK7D3cSZ53chUC9vQ=;
	h=To:Subject:From:Date:From;
	b=jnLm5zx3j69IX3ZqZxq7kQ2NdVJLxTAJ8PErPike/5lzEUZ7X60GbeMzBhA7YazSj
	 EXJb+MoqbmUr91vVlaswMDpaS3SPh+zgP83jId6Ou5vkNPOqwzX5FLjToPL8DHduEg
	 zDLsUsvCCzMra/1jdvh+cA06r4o6OCijhscQnW4M3pPg+MSqKl7CfpdYQYM5ZHXztZ
	 DW666t2Ms3Kwd3pbzcDyO8vGFZgrx5cCL31zK6WcHsCTD/AKGEWdeu4em6VvmKltVN
	 Kposy1sx3ZhHlkPzvb2PJjWWarkdsojOgjPqNyryDQKhLIMsZS0bMR0deYWYnyjVJ6
	 yL34UsUcZzBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92598D778B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920703359.32131.5162551408416358527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39df14fad70c503e6aca547d11c50f7989d9e670c82a2d74964cb2033e100022
Date: Fri, 23 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769207033
