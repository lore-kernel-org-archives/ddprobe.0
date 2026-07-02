Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42561304BA3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783024714; cv=none; b=n1v9D6KGSyVgHK5b/uGehciesjCqagnMTncO+v9wjn73bkkWkmm2WW96PB+m3nADaamHTXh8JIHZ9OhAwv8BP4bBEbinCb7l5v25ST+cj+HlOpScEP42qpsQiGxhh2x6dHgBS8yh+kEcLeiaEmtRLCVtZIt+3p51UP+CDZSo4uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783024714; c=relaxed/simple;
	bh=vyWctZ429o1QbsQOOSqTP1Cf/l3363mYRdCxK+Du+A0=;
	h=To:Subject:From:Message-Id:Date; b=Tg06f1xofnFF76VpaEisQYrehRm/48rcppFxtGTKmyQySdcbHYqv8uFGS4moPdhYQfWKoXoXQM1lLJIJ7YQ2+PtuTilRFBIyXbVJFRws0Y4oQUgeWiLu3MhXjhOB6NHRyCBm/prrTbfX2kbI+X1qhe816UfO0tTwyHQR5Nua7Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtpTj0EL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtpTj0EL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA054C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783024713;
	bh=vyWctZ429o1QbsQOOSqTP1Cf/l3363mYRdCxK+Du+A0=;
	h=To:Subject:From:Date:From;
	b=qtpTj0ELEDCVDm2R/ItORYAzh2w+DPH8XHmKTLE21JPGce4lVDSWLSqDEoDkbuKEz
	 wflk7HhyJFH8DpTLX2CBfMVPi/vaUnAr/jcMoXmfaIdxt2RuwJ2cdH44eryxkGQjpt
	 kmLy2QVygssofzi0xBUEZ/k2wTpOr/+THYoDtrm1EjPFz9vh5pOg+ypf+6O74AZlhR
	 uSgbcKxZ0DY0473+lPzvpACJ3lQng03vnPMXPkkKJHd+zj2zHSGa7keXGsNFPLJJl7
	 afx5UF5XwnDO8vs/IUE3dGye0ZOAK4jLbQG7BpCd7oBQd3si7Hn/2rGZI26b960dLf
	 M13uRiS5u7pEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D95C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302471368.2359.16932205440683053201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639b20f1dac3b6475463df04c53050f5ab62b038c2e4369a5dc7eb5daa5c8a56
Date: Thu, 02 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783024713
