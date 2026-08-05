Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7E3145A1F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785893434; cv=none; b=MyFNuUBltRqXfgRpJZvk3a6S0hI51PBgzuSAor2oHX4xUBwLsHW2In5pxRSCHK4Zw+whDVMFD9yOwDCjMBfTJx+Vb0YeIbkEeKhrGJhGTIG/z41iN5KZ59jPaQAJlM7/UIXmMnMnGJiBjCO3ObN5kdkaPhjS1wUZQTXKOJY3k6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785893434; c=relaxed/simple;
	bh=09L1X6h0jSM8hkRWkVqwD8Sli0tKbwd2Xwn+xKRPGJE=;
	h=To:Subject:From:Message-Id:Date; b=JD50n6Irdy4VZRAEpVyT+JigUkMgpgkTcE/6hD5gQQDKqMvno0tWO1VVXBDoas95FzsiQepyun98CtxPM9wbTDArS4kEMtXpq/rN3lEpSpJQ9fi/PR5L10BuYo+ArqU8dV4gj54CaQirnTqceUMzfmh/Nme7A0izjEpafqJP8E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lou9Hwh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lou9Hwh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7234C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785893433;
	bh=09L1X6h0jSM8hkRWkVqwD8Sli0tKbwd2Xwn+xKRPGJE=;
	h=To:Subject:From:Date:From;
	b=Lou9Hwh3U67lrurRzPQJAV00guUMA2Tu0m4opVoH8P0riDl/ltqtpou6vYxNHS+lB
	 PiGOnefERSZJUVC+zLaJMTmc4OQPz5Jr+jIvfq5crJ5Znr9MPHRl7zbhCpIKaTasle
	 OmqzJff1uVuXTB/b63e7aRVGlC8Xfle7tQOn4WCHpe2CiCqs58eY0TpnOmMdnWf+gW
	 dgAsyXaePwvLsNDsR0v578t2GcOP1DAsLey0RtowDGi7ZSUHzz7ejSPRt5b9tYagzH
	 2v1/IFMRnMZ7C5Sj9YF1GDcgLtSOu10xI2R0WxiXb20E0n3Ii5Tf+YlkBFq5xQ7yzU
	 HT5VwrVCXEjUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E4CC55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589343371.32441.9415277305790636653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066b731554583b2611c8c9a9687f9f03632227a5cb69745cac793ebf4eeaffa0
Date: Wed, 05 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785893433
