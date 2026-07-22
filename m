Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50824350A35
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784761774; cv=none; b=pL6515ve6Nm1JGHBK8rpwFlu4DRS4nVVdFZ7vzRcnbcXzFQvPfJRCFtrubZR/meHo0fmM0jaAG1RoSSot/d9hAeylgIof5zg5cCUezCL7dVpVY/mDUsVYE7a9F3oGR3x7NznNy7AgrdWBBGXyEIBaNAMQBXE+UTqsKasW+JYpwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784761774; c=relaxed/simple;
	bh=9aU3f6cTDLzR+Hn5mjJzQbNswZUor4ZV2iisz8k30RM=;
	h=To:Subject:From:Message-Id:Date; b=keERUs41UvaCzsbPfIlk3WeBqPbbR+T3RgcpSd/V1KLOlvcCYffIGQ7OKFF709/D6NejiJaEPJPzzw4L8oAxTpBzGFVwR5DseXPKDGEhkPu7Mw0nfVJsSA2CmbyDTDaZMC/kwgYQziZ94P44Kv23SdYqW2frYBlnhdIpkpN+Aj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeeTIveO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeeTIveO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB15C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784761773;
	bh=9aU3f6cTDLzR+Hn5mjJzQbNswZUor4ZV2iisz8k30RM=;
	h=To:Subject:From:Date:From;
	b=NeeTIveOv5L0L5FfGXMTRAdv7MWwzmVx5wMhHhHcQLrzkDMoW8b3dI2626fBpkg+9
	 GJtB1SmpgwUw0hG82e+TLuir/pxS4brv6QRNEz2jBdL/TfbyjNcdHxR/GfkQsiXgiv
	 8PjZNJK8FR0+P5fpgIDi3vg7+3aQ5ACwEwnpNbABdaVwDzMqTb4oR7C8taIpQt3HFR
	 F3F0SDyBfttEbqLQaET0NxuIIIhvkeW4r9upvLMjvXje3KvRi3d/kwM3XucDeKCmC9
	 jfjEMPDZrWiOfTb+AdIm9j2kSvVIbQ2LT3mQgnzmGEZ7tAZSmNOnWeRrlZaX7CuKcZ
	 42rPb4cjzT08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A846DC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476177368.2737.10255034695176631025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8198b3537515cd6a5c27368800479128d64fb275b3fea6faadef258a3a70e78
Date: Wed, 22 Jul 2026 23:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784761773
