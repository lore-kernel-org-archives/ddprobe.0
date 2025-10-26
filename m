Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220331917CD
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761474594; cv=none; b=TQSeoLgIwbSvbZpcfYUwnbErTX6CtPYhgV+05rmo35jTBYnMPMxoLg7vVKLo8sq3x3vpFHOv+SsCgTJzhH2MzyTDzuuPbdU2B8aEfoyuB/TYxlK4TfDcL/jRMJai0YucQeAU0rLtNy+XmqbEE9CvLZEOKhwRa3Rb9H4dne+ZOy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761474594; c=relaxed/simple;
	bh=dn3APL1JDprg2mxTbcJbfgn9QjVIhyddH2Pl3tOTexI=;
	h=To:Subject:From:Message-Id:Date; b=oTMwW8Mu3Gu1kvbsGnvSdNnm3sEEBvWdChLu6RP54xsjhoVJ2QOYTo0agNVrq7AefoWnT/7MX7qn/GpP3rsHRbU0PVeZ91uzf/ocC20TL7PL5Pv/7KwnA8iju8I1OFWtW7IblV6AWadED38aLJ0Q0/Jw9ftBQRspzX0A51jqI8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJ1wz8S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJ1wz8S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E02C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761474593;
	bh=dn3APL1JDprg2mxTbcJbfgn9QjVIhyddH2Pl3tOTexI=;
	h=To:Subject:From:Date:From;
	b=jJ1wz8S8BaAFQp+CqIYY9kRJ/Xnu5T4HRcCDGLGz/mdMFE6mzIgo0t5w0jw2KYGnF
	 cukGpgSS61KcTWyaGLOMU4hRw+1cQErx38INZ6ZFM0u3DwMfLpnBtR1LKNDlWih2O+
	 7GjmnXP74O+qjFSqZRMpJHzrA+XKmfXW50S/PWvtIHRmjKlUyB1R142P1MX3a/2Rt7
	 nZgUkwlKHzWefj9l9II6CHDLsl6dQCEsqs7yF06G0V1RyOGzSh5SoNQuXeK5c5JDKa
	 chfU/qWXeQf7bhxjtbSUikIQXx5EdaSPWJZS+7FnzltcYp9Fdcey8Rb3TURd0RSk7I
	 gUIxkYlOSKY3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91260CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147459358.7801.17942919701200881331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa5618ad0cf7248da62d9e36b4ec6c33a5972c23527fcbc667cb75518ef7191
Date: Sun, 26 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761474593
