Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D236073E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777116454; cv=none; b=Ba+5Goqc9zDEgexOQ9CSbf81bdeekcmXzGYvBjINEEzIukxV0HMPtdax9xE4uRc1pJRkMxcsxLHW47Cg6t6WREDkg5jhstdD5rYFWZrRb8mbFEcIf7VU2awwqlWSJeFtA0qhEo6tgAvh1W5Cc7dAx4I4jUUJjstZDbIVJjRQB24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777116454; c=relaxed/simple;
	bh=tizE7T0tG0PpPSe9ANdK4Che8+pH6e56u9S56gTh3yk=;
	h=To:Subject:From:Message-Id:Date; b=ZVV4UDE01lHOFx+lO99h1aySh4CFtfdEa79dmiH2sDCU/V3NwYAUSxKaHMtwNmtr21mCAf62onk1Te+7q1fm58NiforkmAFRLIO/WR1i79GF+HchRAzh0fIe3lsB3uPe7lsZRQx3LqrP9a6+vfvsrsb8EXApVEOm1a8mDgxjnL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4q1SETm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4q1SETm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE99C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777116453;
	bh=tizE7T0tG0PpPSe9ANdK4Che8+pH6e56u9S56gTh3yk=;
	h=To:Subject:From:Date:From;
	b=K4q1SETmGv5/k1RbjZs55lU8z2Y1JoXl0pbvj+SrjyDx3dwAnE3zRe4TgnaTcu8h4
	 FQcvTaeuMoz5PxO14/c1UHldsqopgpiehMxY48MZr1D9L5Q25kzwdaUUbf4Jz5nDgV
	 QssmUClscRxgh2grWpAt+hfT9oHIXwRJycKiG++mLpP6JRyffKjqg7925QkwALyWm7
	 hsgpqSrLhoZCuVuWJoCqCCppndx0yzpsl98wbAs1ocR9ETMlrXeDjSiM05ksmND7fn
	 wHr19uQMgA5AYUiYXeanQwU2qLrm85vgC17deykXcGmrGZL+873GT35h74s+XSkQ3S
	 yg0UVsDU0xiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA3FF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711645368.6811.17596346978083365064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361c907b9568245c09994f88fc11017c510fbef39e73f648a4b6e9fdcedb2ddf
Date: Sat, 25 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777116453
