Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC0628CF5F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764718374; cv=none; b=oq71C0WFzG5kUeFnioqRaDH4haZX2lQa7k4Mgw2z369z4uwejtifH8g1Gg6uxZq2c0h+NAzkrfnMy2Rwi/pVvNoiKKPgUlCif5ZJ4E/Q9VC3fy6DYKnvm+ESs3P3bQERbeiZSJi8DN+drYVtu3pT1p+MKrv2qCLzbmzEArQhwwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764718374; c=relaxed/simple;
	bh=Lqe7iM4Y40rIfj67GNQa7DAOm8/7cGRWPyRRWMXNG5A=;
	h=To:Subject:From:Message-Id:Date; b=VkyECgSSMND/z1zDeL27V5EBlIDIONxaGTXwoN4u6882SbayM71NZZTDCcKSVPqjP0EvcGCy1M1uEqyqzKWF+kC6r1qEFNHRG+3F4JK2oNQjxkMHs8zrIwpcNGM1oyOPNK/SGPQyLCXq5XT5jliJSKidAMQFYHL40gshxWeeip8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf3f6OrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf3f6OrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B003FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764718373;
	bh=Lqe7iM4Y40rIfj67GNQa7DAOm8/7cGRWPyRRWMXNG5A=;
	h=To:Subject:From:Date:From;
	b=Hf3f6OrPuEImgsW7APWR7vN225ruRSLzXmQ4d3LHdrC9saaDkbS5ITHaIUHUetLWi
	 jGhza8XqcRDkSkDvZyK+nexJD9EsHTKagOyFtqGyUds2PdNXoKhItK7Jus6AeKcLIk
	 NmTZX+OJ+by2QV9ORbtSBaAQPazBh1wwMZbHxwTc0XOIB/TAwgKSL3aInNTS3Df2hu
	 ZyHkaPiDanr/WtM8rQOlQYM19vr7/McjIQ2QAeXfspPlpG5BbA3to+X6hIh6zfTglm
	 KwnepYb1oLidhXKxpVT6Ii1i+r0sPgVC/+M17q8kmy5SvLc2LQ+9kBEA7JX/joU1ak
	 B2MkkUpe7gC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4C9D12687
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471837359.16069.5635262037890460552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e160473f3ce8e9b088352598acb24fc1be61010b212de10cb2779dcc06de9fb2
Date: Tue, 02 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764718373
