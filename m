Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D2D388E7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772528694; cv=none; b=PE141thzRdSlkcfWOgqYDj/iDm6HQ39S5e3pjqmMULFtXjF6nLxyqmh6mMeK4ZTbmZK1CdE+P/yHkXLfSMPPfpgCvK5Krv/Z5yDh6tB38OexzuHJcOGTgsm4TGJ+YLM33a9xaW+3nLqcrmj0G0TFmN7P6WFOG6N5SQCpgMDVebw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772528694; c=relaxed/simple;
	bh=b8kGSaPCeEvsLesLpM1XNRKC7GN7zoZ/g45vgxg7M+E=;
	h=To:Subject:From:Message-Id:Date; b=Ne33Ov8rQZx9VwFnCp2ssYFH0UT8Yg4gJZ23AT1Z65w2x0RApn6jHLIoknksae7VjbqmOnMEZFatwnX2GCe+I8AUGdYICQDuIrguKzss1xsaH7Mv/V4krtnpID/ZqsVkQH2yTsr8RxzC5PlVRZGJWoOxCKAQGyXIAo+uIAKdcKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdtqMPI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdtqMPI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E99C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772528693;
	bh=b8kGSaPCeEvsLesLpM1XNRKC7GN7zoZ/g45vgxg7M+E=;
	h=To:Subject:From:Date:From;
	b=hdtqMPI9xmGOZagJDzg5MUd3OVIxMj4TO5h5FCXCMa0HaOFBBMKTjVnlkDgjBYxl2
	 vtfDH0iTW1umTUg4yp7Yy2358xTLVTAUYpgamVUGnN9hXZ9NXDz+1MLm+mJEM1D1Td
	 9VD0a2Zxzj6/ISrUBXMANvR/C2d9lu+gHJdeMyESGoIuKud1fNLG3ypLNgPf0cALUT
	 U/H+Ew4kDkk0ib1lGEXNFqcqXYB+PlyCKprP6i2IEeoXuLKtn0++ACQihKtatwSvBY
	 dKHfvwz+wPdXmUXsQ5t1g5KOqUkm+YLyBMl3eQaQ/VEsdE1BcwVBKPayQgpuYQlobi
	 YgL8K/oMi2C0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B056FEC0460
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252869370.28394.8388947434562406631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b307491daad66ab0ac110c64d2d7b33ee629ae3e587357428eb75c3f45f5b8
Date: Tue, 03 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772528693
