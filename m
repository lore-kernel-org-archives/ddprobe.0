Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19243153BD9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749768594; cv=none; b=kY7nn/+/VoTALXX1cVgyQ/KMLlBCtxl8AVwupVx0xAwzs4i9jISaSf3GrSyeF2/j3lodVZvUrUBRZMwoUTNV+dCfNBJ4gGZRtraEYztjl5CMsP91kG8jQMDQdtq16VXtNwLa2EHZ5GnTE/HvSH8aNpkQDIRL2rQdED8xca6D/hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749768594; c=relaxed/simple;
	bh=VB4Zf/9Byv2IVxgh350xaloYT/aalx4EB+4PAjrxxcA=;
	h=To:Subject:From:Message-Id:Date; b=XFK6jYPvM4c8pvVJgOVjmxthOfw20DqwusGWWTGPaY8hCVf7xdZaz6D70NtYYZpornc+EGjLZSNv4aMe/o3fw/UH9K2xmwWcomUjkEaeqCNKnssVofS9YZsgJmXTY2T8F7oUBG6wRkPjXJBPH46h9OStwocsHxLiCv1T9QsnT6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4A2m9MK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4A2m9MK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5863C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749768593;
	bh=VB4Zf/9Byv2IVxgh350xaloYT/aalx4EB+4PAjrxxcA=;
	h=To:Subject:From:Date:From;
	b=i4A2m9MKyBaG1PG6gfYT0mwDNQOY90QUXlho2pYTPhMtHas3xE3sYaGZUkFkT912R
	 yk1FcLNvt/gJo6Wg7PeSTmhpR61tNJ14dqsu6QVj+o5m82fSbcfRiOvoMXk4xV17+V
	 OPoCvntoZJ75X0BJkD28rQGbQ3a2v7YArd8ocC/NRMhe1cCemXYYt0sN3fLTZCIRO6
	 n2vob6pkOVBX+zC5Zju/nBnM7KdnNv7BqSdf5UKWdiSKgPM2pS7UYTlfk8CC829TEd
	 eJqNWVZJoaTaIBVdzFLuKhQGFT/gQQ3xIGMy+XxkURGcfvhLuClrm/CQlGVEb0mApw
	 4gvR3PhE5idIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125AC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976859358.4977.17154769601229323192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1265af07e265514a858cd28d2fa27ba1fcfe6e9b4a2f401849349815ab54f95a
Date: Thu, 12 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749768593
