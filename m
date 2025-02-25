Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AA94C6E
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740455934; cv=none; b=k5IQyMmKDmQBIWPm++8YFjkVX1wNMmg6bTXNECuNxurgU5xeDtZ4DkcKxyzFm39SQdQ4KoinDe2TqvrNF49vEFBz/A8lIC8X2ZuwhnWiKpVYRFLvbLnKF6NZCfszO/wx1MF8CMbdtT5MGs+M10dD9crKOstn7z0nqig/W1NcNjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740455934; c=relaxed/simple;
	bh=3VuUJnrsggBbnRGzGVy9VypBZHjqIwHUA8Z0yo4HOIY=;
	h=To:Subject:From:Message-Id:Date; b=QF838+2/QrxSlYOBai8MlBqWfpXsyIPBdgXgDwjtqyvrYDqb7Q9VmwTCmuGmDeT/buz02ftRwF62g5f60UUvrZJbxHayjxbRXgRHaAumUAPG52HwJeGkexdhFcxqUCR9DGk9nh1f6nR4djB0Y1ZzRKZ0L+9B6NDfQ9w4z2G+UXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwXYifVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwXYifVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6125C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740455933;
	bh=3VuUJnrsggBbnRGzGVy9VypBZHjqIwHUA8Z0yo4HOIY=;
	h=To:Subject:From:Date:From;
	b=gwXYifVMCF5IWeRyRMEuO9MYbCHFGDPItfxCdEluK4XctrVyqdoo97EElRgDNwj78
	 WImwPjVh2QciOeIYSzJVrBDe3scwnjwdQGXU5CJE+O1QBMJq9jPuTUSE2I3vz4GqMh
	 R8W8nkbLYofX5ZD5Q11NKrb5IBibAWY1oX0y2kxuI5+CfT0p88APXBzTZAGmXFYZoH
	 hDC2zKvl6stLYS4+kaRb0VJtUKQUve9mzimT7QJUnDyoLz5AYHDQ2hGiAHIx2hbTE8
	 yY8WDppm7o800HHlugCh8/WxA+Rj/mQ3+T6s4xREkSX/XFmHVTcRVBPz+l8R5cSjwa
	 gbORzQk+6uOQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D95C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174045593358.10053.16007089774128674689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd15955fa0239e7cff0bce10d8c34beb73ccfcd4f2ab6df0fdd5d2eaa3fe9c6
Date: Tue, 25 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740455933
