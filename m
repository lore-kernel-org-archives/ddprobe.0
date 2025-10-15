Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2E830BF53
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760492994; cv=none; b=oQfHXmgoQPngwAVu/jRHqtVX8oLW78M5MHLDR9VnlECCTUO+Mu/SQ652slocWoJHRzVX5HywZD/o3qU7c6hJz/n09WNFmbIWXUA0kIdQNsGEUkZ6H4/YZ05l44ZZZbb32OSQnIrhLP5JWCPnTstTmRqohAX3Jw+D0n4HkBSFl0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760492994; c=relaxed/simple;
	bh=OxVjMOQXgewv2EhikOkNUrofn4CcjRbyd5NdKO6HSlA=;
	h=To:Subject:From:Message-Id:Date; b=U3FL6b/GqI6VmJldFRzstPEWp8tP5DAP5BZI41GOzhMA/0lKP9Y7HOTulxGgX35XKyH1gziffidTki2DxkxTe7gXUP2l9bF47PS75tCEW6XxqTP4j5J/9bZLXJkjI9mksMQVAenYnMazdYUaGjNiVotaogOP3N6ls+m6rX/D/y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU4WL/k4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU4WL/k4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760492993;
	bh=OxVjMOQXgewv2EhikOkNUrofn4CcjRbyd5NdKO6HSlA=;
	h=To:Subject:From:Date:From;
	b=mU4WL/k4qttes/2A/N5iPQ8DP2A7DWPZcix9MrPkHbe1lO0EOSrFNExbvJJSiuu+6
	 tVDZwx1jbuRBbhCY4e/iMn0+Nm24YgIkUObygZ6LDG7Il/osC5gbFj538U4pViJAEQ
	 icIN3pjgl1m2FXV4ETwHB4myUGWmAdBKFzdgU34mEa2WGNeKubhe+WhRVfEICjoV2b
	 m2RCf15KklvMYv3Ikos/vFG+AyhMIxikPP2vskyspV5qe2q1/0KyaUovf0VWKpD2PE
	 9kSp/7lzlXz4azBdXSA4KMeEPuAUPWk2Efa+kBL85vIPADDA+7PqHcIB7P0h2snZYs
	 24JTyZH+cBLUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A0CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049299357.21996.674909785167491319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f929411d41df0de85e14be7af0fd67a17b1278073a66003963e2be0924ce96a
Date: Wed, 15 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760492993
