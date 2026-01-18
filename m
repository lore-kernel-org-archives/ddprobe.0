Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9B8500967
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768735434; cv=none; b=uklZo8xGg5w+wCIONR/crpuMCiSd7xz9YqNgqigAQwOS3ZReuhSK7R1XGsW+jitmJ5TZS96Ym6vADmNXPkByoEV/DnZVU6YCG69O9MLJB/9i9w9veW84KGKNaKVm9tu6Qq6bUvyD2aVbo8X+MPr4BOuyNOF6vsuRWCLD7ro8Vgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768735434; c=relaxed/simple;
	bh=olqT50aLOyhmCSu/XHqn1/GlnXvRmm/+7cNrE6vnjBQ=;
	h=To:Subject:From:Message-Id:Date; b=Qr62OTKqKboR7TS8jlzearfEcLhzlvHaywVZYUiitySHwRt7R+BV3s0KjZakt41Sz9fUPUQokc58//kS7CAHd/5itA+P4XHEKIYYfgyQ1zaikKR+Dex7mEFc2LAz30aE7MjbSIdXpm8ASx31p/wC8eLyYupRQgLczJdBaZCNlHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRJGGe8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRJGGe8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F02EC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768735433;
	bh=olqT50aLOyhmCSu/XHqn1/GlnXvRmm/+7cNrE6vnjBQ=;
	h=To:Subject:From:Date:From;
	b=WRJGGe8cEFO0btEIqSX4oj06/buVSTsNTbowqqBZR3PgLDL7e3bSZzGxmh6WAvCCo
	 vR2q255GcN3BchMAUFV55rs3af1xrJVUOkmILJg0yX9Eq4ftvISTOSwTLuRIUqAvCG
	 wTzPZkVmU5dvX3qWi4XbQ1NrJDlRymdsfd6F7VXfPFEp/6hbg2gz/JAky493sFc1ib
	 CnQFxRAHRDY+pUuVLILSfyqZIH+bEH6lj+ZHp7BS3qved7jENzHMBYeoE7dfVQTSp1
	 t8XLJ++VOdVl/xAFmzdGyTWFEzsABpDnRP8rmySp+7qC2MVLRSqq3vrLNGopLGiusI
	 /yq/ciYc8fbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAAD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873543358.13235.15012783024423674293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f69a21e0c11374e79b7e6a6937e8081668c89b080af344f7e4b4a43394c5ced
Date: Sun, 18 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768735433
