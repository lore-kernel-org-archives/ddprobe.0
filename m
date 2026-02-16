Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271DF2135C5
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771254294; cv=none; b=vGRsE4kvmRBB6VXMFwDq5bO/hg4allSwNYEqodvKLuR6E9nhhBXQhb3sMQR+nzv0d2PR3uOFkLwJhOxl5XxTCc4EfR9p+zHB+CYJubXUv6HeqNnlp0CJT5dNxMY/EgWWif+9201W75yWgoKSh7nCueP8KmSQ8RQ8yVXQGaop0u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771254294; c=relaxed/simple;
	bh=PpByZiQG6Jn4tQAOZGOx9sR8F10HGWNepxRfV1l787g=;
	h=To:Subject:From:Message-Id:Date; b=STsyM4qe3EL5GPAO6op+qDz3eckN4iz1WOaSyPV40cYnw9S5TOf4OMBkJEHnDEG0jTFV+iXw14EiqwXrbepxd0E8aWOE5rHzBAD8qhXtNMxHiAkUXsa6AdcAHd0GvohRuaZ0Xe0aDkakqn9O5IaBBMfAX4xzBCWAg54IGXBL2TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR4VliAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR4VliAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D25C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771254293;
	bh=PpByZiQG6Jn4tQAOZGOx9sR8F10HGWNepxRfV1l787g=;
	h=To:Subject:From:Date:From;
	b=SR4VliAmZGNiydgduN/4Eg2xlayKemsZDu6aIm4bC3Kq8u3t+e3XSiMX0qy0jq1jG
	 nRK1Ljb/sGUOj+i+kRiVNizSbLmmQGwdcewtnOb2QeZbKpbd8qfRGyyucRvJmdMfLd
	 ihQ9RhL+b7FdwhpbcQ2uBRyg+FBqiVNNKVZkotIEhCET2vVg2BAXbLRVRFEom3qMAr
	 IJyN3urZ5CaBwHFlsuzy2SQXXFygZNwjQwpyAl5VdcPSUv+X+zLhwRTxNVT73xnjZv
	 LCrlD/ydUosXs3scX5vxx5A9/gIs9FfauGeziBJjRkLvLuZilJGHUsqNEeiOvm5Rj5
	 EE6soStu/yOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A2CE81A25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125429362.6158.1933706034403067973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ed4ca1603f3179e468ad08f78b0a9083ba3eb9b3b67f80f1bb51d7ca0fc02d
Date: Mon, 16 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771254293
