Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F6E211C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755304194; cv=none; b=WsDKJWM9GAG3lRw0AKRIHuzzTIl4I2SpGdxJ14CbcjI25BTITsSzIyI4ooSYcezl/NbjSMHcRLZOtCmsdLL1PXSzmW75CEuSnvfDBS2iwdbRri7h0E8TuAOPtzGVhwUwRWR0kqxeO9CINoj3ePMZEYmsbvx8/9QKRDKo2wBZnUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755304194; c=relaxed/simple;
	bh=W/NHK+cqKJmVul++FQZW/pyNZlPQ4NX3K0eyucjcxZY=;
	h=To:Subject:From:Message-Id:Date; b=kkOjgpEyinW1PUB/dl/Z2vg2nOJtZPGwkd8dmNxZV16/VsrLGPHawRQqvmUyYUDTeTRQfsoX9v5Ityk6IqEyYntTnPgQ71KstMiPD51TvSpzHkGcegs1OErNIo1M/R2lL5tQTF4T4y/DwgmZTzVZQmJgdw64H8M3v4XInTMl8JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us/QCPqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us/QCPqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C16C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755304193;
	bh=W/NHK+cqKJmVul++FQZW/pyNZlPQ4NX3K0eyucjcxZY=;
	h=To:Subject:From:Date:From;
	b=Us/QCPqN7Sg6BgNkSuDUSjxFYpI2xReS2Gfz4xjiRo92I1og1on1dv6tFTJ+lhvmR
	 Ejlme/pfthgQEyuO77nUkV2uzuBHYXDk7V72EvjxlLlzJM34YisOa6lehJO+hlcFtI
	 GUCSrwdlzqFAfPo/vgV1He/VDQwt5zAICGw+R6WUOOchJpExHivHsHltPDwrvc2vtT
	 oBGdP6OEtapGlMw/IcG8wwxHJVmuNRemoFa6LQysWiammh1EvuVFLuNxS8ZcU0MbvM
	 iLsaYEIbeltQoe90m8qbF8yD+bJFJ8ii+dT5gbfK4rcujgUBTW4ugI7ZICil43J4Uo
	 VBIKhkNvtLZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499ACA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530419357.23639.3399595883448539867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332e059260a00843c30424dd87b0ec0cd6a8100825f1e02c837dcd3075096cf9
Date: Sat, 16 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755304193
