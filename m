Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FABA19D8BC
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753832394; cv=none; b=Cat25Nfg6GVflXzInQcrsdhugeWWFKOXe0mvFtquftn0RmAlITQP2PsGANXgNZr1R0HMUzZIpuudAkoic/IIt/9wnXp+l4bBgnAlXNtb7k2HDzhCGYLpC4ngAWs8d0tR815IE484brKmHWUcAxrr5233Td5swk9yqtF8Q8OBld0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753832394; c=relaxed/simple;
	bh=W5CZUjQ6YG1ArAv0Cjz/bAdkICYLpUFCf9m3ubYc/hI=;
	h=To:Subject:From:Message-Id:Date; b=Cw/nz2r9GEt/YE2ep8Fczj1Y/CZXKNbB2uaUMvawH59dR1oerd1kvrzWCKTQWEJH1kEsnJ6eVMKuwPlqnsFScwiNusVabG7sEt3PGulEHR9WRtFZjpYywUtCVcJuxX+ShBoOWhzA2fwGkvi8tNKoVe1cfwHblXSrpJpZw4fgQGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4obNkeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4obNkeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9210C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753832393;
	bh=W5CZUjQ6YG1ArAv0Cjz/bAdkICYLpUFCf9m3ubYc/hI=;
	h=To:Subject:From:Date:From;
	b=N4obNkeGHGcAEmPF7IT5MqJJ7iL4isbBcWkvyMkEZH3kx2KD7T1tMoUZQrQKF3q7g
	 /+eBkN9yU2YntUiFSdbk8eeB4XsHiGvA9ImdvQcAgxGlAl2ulZEqiQ9mALotqo7XlY
	 y2LvAuxAfHx4ppRRkMansTE13QGRnI5ELLRRDgF+Sv0GQ4QL2BcDFcibWpvVHYs2oU
	 +8vJUjg1EUlcbJnEVmeRuIwZ0tONqAlWKYMDQOVz1eOBvbP5f2ibgeCUY6bDGDeuAH
	 m43AE5i9u3bu0FF6/uP4qmUi4i1Zk1RCnGZt9CMqzs1RurwMdshDYw1lGPFiqQ2xpP
	 bHa106hO6y+SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F029C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383239357.22474.5238853073141960104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9693988bbae6a4634a4c14a9422ee457a7c43d9af6af19aa9b2b1571cd6b26
Date: Tue, 29 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753832393
