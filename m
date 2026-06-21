Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E72340D56B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782045394; cv=none; b=qTpXhM++2VNOMS0wdOxjBu8+8Nq/Y2OsrEarbOVR7p+wLKHjNXNtJ8xH/oAvLW8HvRk/GWrG2f4hxTTZPrAi0Q3hXE3Ta5tG4WkKncHpHLgcfYuM5pp16Q1rBaLH8SQkPeS7PbKkCGygx11B5lqH2Y3ZfJmDO2HpqFlOpAAXKcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782045394; c=relaxed/simple;
	bh=MwLdF0vnCWmYFFVP1Y3iwGiTuRFguBeNjhxNLCihSFU=;
	h=To:Subject:From:Message-Id:Date; b=jJK9VGQXDfygOKf2kE9/cu/wK1OrdrCFOeCn4lzA1BlN+Bc8eKysOCJQ4Q3nhOmtFW8hRolK745K00KdV6U8A7yJ5pO7jNRriY09f3okHAUoE8pnts6Errs8xbZLskcWcLpu+0Qt8YP8EdbQ8duCW8X05cKAsXJWw9io2cWFLmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIqA1IsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIqA1IsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CC5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782045393;
	bh=MwLdF0vnCWmYFFVP1Y3iwGiTuRFguBeNjhxNLCihSFU=;
	h=To:Subject:From:Date:From;
	b=LIqA1IsMcVe9NorputNV3DT0PXDtcCR+sMDrBx920A1oXc2k4MeO3eTutAg98G66t
	 hwQzjgai5XUuDifR8c6vNQrauZPQOal/QiPvWLSYrpSEAwmRVdJgBUShUQ1LWpRQlI
	 AbmPqbW10JaNY6qOvgXtF+Ec/iPnEhRZij0YpVETBai3swWjFVcP4EqcHWCYavM2C+
	 vDJmslHNsP5IJzblzRUdXBVe0nL4a6W6VljWjagLUHLVnxXY2FmuFcQmhoeUMcUNMl
	 aRKg9gVSqSIO9PS6UAJMdhOwPhnz91VQFrFE56T/IBXesc1vfyVXPf0gJKdRfUalFS
	 HAzhlj+wxoxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3730CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204539369.31708.8588654694667127786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336d403b2e3f97ab4d72a3f70287c3064a5fa7048ba781f35ce5a7197e8d232b
Date: Sun, 21 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782045393
