Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD95C295DAC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773312893; cv=none; b=QCjS7viIHUxZHSNIHDccZZn59OjOLR6oY6fbORVcNe3jBrUDyETCsU68XxqBX3TPBIBGYrCJvFe+23v0Lbx1jHQ74yqZqcAMNF1QeFNH9FdAL1OPXWhc3EkMTUBvelfcqK4lEpkIc9Q3hIVLYTLBB3mMMOnaUdPV97lClsRHfwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773312893; c=relaxed/simple;
	bh=91yygdAOS9oSxenk03kkIt+m4YlY6Cmc04wbH0TDkjY=;
	h=To:Subject:From:Message-Id:Date; b=Q6xzEPmqozfe1leHMvMcQVZqJ+sjktq15Rq2qY4GNUSh9JMSXrZ1nGuwjtCfkmZyT1TCof/0qVVKZMfWJAROqnWGh4RXDtRWtpa7xsPoCxS5XpncxFGMNaKXdvCgJKPOMl1AmSSKhoH2Twph/AhDur2PzBTVp6AstROrEzhKI9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdBNR6ff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdBNR6ff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F793C116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773312893;
	bh=91yygdAOS9oSxenk03kkIt+m4YlY6Cmc04wbH0TDkjY=;
	h=To:Subject:From:Date:From;
	b=KdBNR6ffDS+6jp7iNkt+jDY2jFvAdI006DTvf1zr/6E/PgOWUE4YQH+b6BWCAuY4y
	 Xca0y5S/47azRbXrkKWXfbDW50YdsHGzSdgWU/cVZLtAbJGlgD+AM/zLtX1BoL6zqu
	 6Vrs5NFsKgbPEHxOLK1YwEFcbo7TUMtgQXuNTBJnoll+s2puYg/44p/7UMhoYmT6TH
	 zwQP5+GGg106CR2ceqtvr0c5fmMFkTDXfz1ZTkBcvoeja64iIB85SLp/UC/tjQnP3r
	 W4XSnLVDAWlv5lVIR3YG/nfZVPNvceFVKyBYQw7oIf72bwXw8zTLxfNnnsrzeg1Yka
	 6u+TJSjEdQhrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB70105A56D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331289358.13862.5623691042076563416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdbadf98caf5de5908956385c8e1154a466bf4e78e6951c0112f0d6b94dca86
Date: Thu, 12 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773312893
