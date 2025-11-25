Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322321DA23
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764029574; cv=none; b=ZEjP6+enWVY/Uf06Zskh2AfAZ6I4iieaC5LaUAwrjvU9SNDowImJVVbUbdwhb6vbqLaKOoaoeboDUqisfF4ovmlnWVosF7osdgqHDS8QMmXuEa9HIegjAiwtWImJlviNxNg6eAqp+qJ+8jvSUpKBoe1T7wCUlxsqQsmD/nrgysk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764029574; c=relaxed/simple;
	bh=Un2E0S5l06QV1AWnBfjlJ0r5cCfbqFjcZ5DYkEwxKdM=;
	h=To:Subject:From:Message-Id:Date; b=WTvdgzgB4y9O2y+Ply6ZqB9CzaLpmzZJ4fpE4QoNJOXk7W5WRRMc3caFplXPwxrFsnqGGU+iyPtelQVQ130pHx84G2QYYG4e9zuLTIeUEJZuxpadHMSbVgCK0qV0J+AgxuNMgUXZ3a+CweoLo41ChvKeKXaUGmfgSnqiF4K7juI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fp5zbci8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fp5zbci8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9E4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764029573;
	bh=Un2E0S5l06QV1AWnBfjlJ0r5cCfbqFjcZ5DYkEwxKdM=;
	h=To:Subject:From:Date:From;
	b=Fp5zbci8MPbGQu0E+ZsKQg33JbCS4WGY+hHIY+9BGJpeu5dubDgEKMV/nfQeFPN1+
	 GoAsrhrqrORKZhZuNwpnIvpRVJP+vbqn9czYK3YXHtoNdVnfUG3lnHcbGRNiTThkRt
	 pR0htFHvRj5FUUSwf7vbDlDtdCoyOWBkKv9xPQLo8D4yHG1cY96Ay1y8DznGlobJPJ
	 83uiU8BVh1Iy28stI1GqIqQqXpWQA2UFszpcCFSSosn5Uwng185K0qx71Z/QWmlsuV
	 61HUhCYsRLxqLDprLITiJEUUZzHdZWYZCMpdMOdsaCjFij5peL1vNCZrv7gwlX3ogQ
	 Jhx0uMdRi4PPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA8CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402957359.20232.12504160351505317161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b349d5a1d1a20d18d87cdda43b98d8cb3be357b46fbab5c72461db1554519b6c
Date: Tue, 25 Nov 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764029573
