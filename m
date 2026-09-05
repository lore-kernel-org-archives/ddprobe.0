Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC9D1ADC97
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788648634; cv=none; b=EeKYpVj6jmWP00BtbwGZtIIFKFbzdbON+P7MEEAi3tAvncctsY5oyNIxy1/26LRUIM6K5m1xS9uucs4xpGIsVl/wO5JNFYEAaXzdac+ZxZmsTFusqojyNcCtxz6L9jbXGX1kGP/3K+1moYbiP05+FZZhZ+CDMl2r3D4tt4o79uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788648634; c=relaxed/simple;
	bh=5omWbeKEaGDvNtyrTm6RtsIKtlqa5A8HSoxqMVq5F8Y=;
	h=To:Subject:From:Message-Id:Date; b=JkEv/Tn62j+v9rpg2Tq5rv0AFbWvaCGHBfY4A9sjvcXAICG8RVkguGIMzoLwrH80ReLg8d9zkmOMsumwb8iRAF2i4RO62HJppaSvP8ty8pu+5V+TAMlUFYTlBFTCxsWmo8OQ6kaSDinNTlshyzSYJdBty4TVU281pVGFpUT53/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epifCLlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epifCLlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A68C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788648633;
	bh=5omWbeKEaGDvNtyrTm6RtsIKtlqa5A8HSoxqMVq5F8Y=;
	h=To:Subject:From:Date:From;
	b=epifCLlj+bdyZr2lFMSLJZg/c9KNZmxvjRbkhMB6hD0U8h5laEuORMA4l76+uT+fm
	 Mv5VTnVr2z0brHc8RTgPjmm8jivfcm2itWRwY8XUnmvMXTMI7/7OAojzNNriLMvj/D
	 QxXIn8YNKTZ88PI4qjQ2Dx8m2g7TpWtIUl5l6kgVtGUDsTH/4ODZ/K4DAStlhDh8XD
	 tV1kMnkwjuQRHUr2eE489LU2S5xeJHuiY2OXDKAoiLnjp98eFggirXBph2tlifQP7S
	 iqbN3yTTc44xdp0V/HpRSMdbefgBxmVxr5Uqy6Abf/3dZxsrE7cwOoNp5uqyEoN6eb
	 Bj2lPLJyhO+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD72CC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864863368.31521.17115175449462432259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f937e8ad948f4d0b2ba469d49fdde5fe2a44369497ae55c8e8ce1f63901d80
Date: Sat, 05 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788648633
