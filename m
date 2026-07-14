Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB0733F58E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784007514; cv=none; b=GSopGgVk1uq2REo7JHHwxBCvRHR5gMp92PsdLZE8DZ7O068PYNtxTBf4peyxOF1u4IysShAxxm+nWRq431fmIxRyi6gH8/vivOzK5F77GDDt0/Mf34FjFa3ozz5k6yh1ioMEpw9WcVkkTkaSbxyVfCNc/WIzxr5DnCQ0ysJulI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784007514; c=relaxed/simple;
	bh=jWxlMvgPReX56FKdKbfIvIm14UyJcvBKvoFkxObc1mE=;
	h=To:Subject:From:Message-Id:Date; b=i8DCr5DFbakxZ1X7PUefmU5NQxmVDbJlMyQttgp4TDclU4FyN4Upqp1jgfhgJK89j3ixCZj2hZTCtbiNQW1AKZZckd6+6eRh8VcI5e+WtO/Ie5c8+ZJKyZ6QM0BOr9mXouQ8xzbbKdvtciOVWLb7o0nAC+9XE17qGUdkrfz5v1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrYJJSGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrYJJSGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8421C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784007513;
	bh=jWxlMvgPReX56FKdKbfIvIm14UyJcvBKvoFkxObc1mE=;
	h=To:Subject:From:Date:From;
	b=RrYJJSGtLSWCOSWDhmJEM8USLPVZ9XY909Xla/1nLf6UQiaMZbA+1PTINw3l8I6es
	 KbLDzl3t0usSTvm47UPAD/eceRacgZkP6q5m4TJnf98CsfIQABEWaxezRvXQG2v4Cf
	 zbR3IfJpZMi0ghZRm0p8OaEbwYHCRS7/snWzE7E23Ll2Ion18tL/BH4avAcx2QfwSX
	 PlsLxxCGC+LNh0F20to4f2FI+TlfNuFT+2HTv5KekxMzd2C1cbk8QsB4cpO5anCn9W
	 dI8tcfw8txpilo1Ix5ohhYt/OpXQayNM2G4fhsUZZHLHgXrQTMundAkaJoKyTe6QGT
	 +IpbsX7Y+MptQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C69C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400751367.2564.17823463496025436678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68188688f7b5ebcad135027681388b164e9397b53a5d692582092fbe7fb06f2
Date: Tue, 14 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784007513
