Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB442D6E6C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784588314; cv=none; b=ALWBr9/kxgOUOgkVICy6WjS1rxPRTH1d/S9Z4accq81AqPAo4pdKES7lT8itpYGYrMrkuX+IqsUqrG2Qc7OxpleRArnf0cSCSu4ulUujKbob8vmJqCe2lSVhE+4vpeML8U6lXWgGrMj/Om3Q/OcN85SlnqA6N4bpoivnFFZuRWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784588314; c=relaxed/simple;
	bh=MVs8gSEEQihbYt4M7x8/zKcR/4PgJoJKrlYIja6F9uw=;
	h=To:Subject:From:Message-Id:Date; b=t6FoBwXMGXFiNotBYuk/Hqf+p5w6NVC2V5DMM9U47u1UwNMjKzs2OjTFW9GnMga2g0oSNM3c9bSqay8ui25LMGB1hUco78M4WJvbTg0gO8B1wU7i9KF1M0PeMSMjJmk5xQuThhTz0774I4AhSsQHwwf08OhfMmGq7IcrOMYo2AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeEt/nRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeEt/nRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF743C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784588313;
	bh=MVs8gSEEQihbYt4M7x8/zKcR/4PgJoJKrlYIja6F9uw=;
	h=To:Subject:From:Date:From;
	b=ZeEt/nRNwVOR+onMDAo95CJM1he6m8/o73T47+/FeehpOMQUIWNze3/mLpqPE/dLu
	 wP6+DmBSkIKLdN1FUAvtf2gJU0Emq0gDSOSfySXlnyF6obBjoQO15AvRzAVbnY4aWk
	 P657vntC5mlALqdaVFuzm5/KzqPTIj8zKJJ655YF4fCXTW9+mBqX2b2pijUCCohemO
	 PEBpZjXB6PpinNqpOvH5JtK1JGE44Wm7Q1u7VC8qOBbEs59xaORci1ZD6roz3n6Cm9
	 StjKkDQ553ocwABPdXpkhmDKUx6HftCZpF4XjU8eR4f7CmWbSCkSQWJ6SiFTwePGiu
	 PXLSlPqEfORqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72AFC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458831372.32404.12500036941103995113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465a182480c1da22d9e08a7cc215e09e3136dcd445b8f133b6a37b0b17cc4186
Date: Mon, 20 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784588313
