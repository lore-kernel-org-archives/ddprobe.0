Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75171ADFF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729695353; cv=none; b=Nsmxxbcp0u+CfQ1eHOnvSGc/+oBprDmIxJehkwXxqmFuxiyp4UOZwj0NT2uMAwRpwyRzz3iZLBTg9pYYTe0Qfaz5bU87lFx5+6oY/SuhuBbpbtzTmmMUEqY58LCw2+pNEHfHkrjQ14mWLcKKciopx3R8M39Mkc+ibuHZkh3jTRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729695353; c=relaxed/simple;
	bh=3rqkRx2g00BO4UHEadcNNdrRKNvsZPvJtxNtr7Y1IVM=;
	h=To:Subject:From:Message-Id:Date; b=ZBrbD/7zOL+bILdxw1z5yRA3DMu6UZIEz3ZXDKaF9s9rRv5igfeUat34nk39EKe2zCSlTLyMLFzPW9lvhsvT45f3/bH7G5WWHVd7C6Qj8bitzSFSnGRhHntQuwW6tsloXKxl3c8K695kFYAaKLtP/DANkl7PYZSn2b6dnPM1q0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZ8DPCtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZ8DPCtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B549DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729695353;
	bh=3rqkRx2g00BO4UHEadcNNdrRKNvsZPvJtxNtr7Y1IVM=;
	h=To:Subject:From:Date:From;
	b=OZ8DPCtKFFEByv+ko85y2B0hknXDfu6gRSuC84seT6pZwmQpUcRWdP30jpGhzDmdJ
	 FKPA+LAaUOjcUfrIPty1j2LmvsvdbDAiIGSrIzKyCA/ujQFCte+6q3mE3yVZuO3QLw
	 tM4s6pkTDbHQWKv+ED4L52StLULBXdp6T89v7/9nrQytfQsnGexsM9S83qp+EgDDlD
	 cMarK689DjvTlkpG3kiFe0sGD0WFV1oH+6YSW6FYGfeLklS3qN3n9yh4IvNgabfDKk
	 qPeP0kZ+dut/Mij747bb4G6ByfZ8VyNagHC6B7h/U2mj5jPbpxeLuMzQ9OuJZEAx1j
	 s8k1/ho9DLkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12E0CF5396
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172969535364.28205.15312457486081560998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6a223e1fd8f8c93a5750e903e907e8d2e73ebe5dc3a2e1f597b312e1e81830
Date: Wed, 23 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729695353
