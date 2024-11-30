Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D631C6A3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732935354; cv=none; b=AUFkisNsUwAxmhq5SoiI9iy3vLGr0XCvVcfFtZEGdDCvCLRnDVitKDGsJI3KpE77D61opB+oLoO86SZ5YS0CYWyqww2xYEzlDZHk9ZHn7jtGgASXL2ZgMNcJyRG2Okz8DFAT3P55VHLjshLT2+s1DHbxbLkEwkTztGMROFvSPc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732935354; c=relaxed/simple;
	bh=kBb3sjiWLIHNHH6mVbDOASElnUfFmWZ2ZKFBmwU/vQw=;
	h=To:Subject:From:Message-Id:Date; b=ouwh4EHnslzBptWUb+sTQ7KBzWr3L8KU5L9X2OHnmJ2bW/jZ9iSVmEGSZbrj4A9kjtMalE/mlLFHNBDF/tznpVsuFhhgDWgVsN4grhf/I6H1zMGD9u8mxd7igHSUTjD5XuXpchrIgYCJMprdjae6JSJSXZcvNhO7Ae+Ov3ewGBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIYuabF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIYuabF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D21C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732935353;
	bh=kBb3sjiWLIHNHH6mVbDOASElnUfFmWZ2ZKFBmwU/vQw=;
	h=To:Subject:From:Date:From;
	b=fIYuabF4L2Amx4Djt4U1iK6d3Z379wDyV3tB+o5rQ4VJ9CQNhtFwXQRDKq7zH3Ay3
	 1KgRsu7LVW3/9ykF+91gaIUuW1Oa6VEMQwi/IaAaUmz7kA1ymSEOJp9rfsknnb1Y37
	 7+GB6PbUiCFRZVvfVuAmzxRiaOtpDaQLY/dE19tRd66jjGiE9BCW407a5YTBVE5j8B
	 bFAwq2yUn9KFvycOL0YpKHgRJuhV4+n6Z5yZfPzWr6br7I+5sATWS5d0CDYcTot/Sn
	 Zy5HIhM7URpVISLI+L2sdL9uwgNo6FpXgLvnRsjRrKR1zYvVorJzHheAbjWf+I0DTz
	 ArMFwwED7ahrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0373D735EB
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293535360.18567.18257161852103317211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15af037fc2c91a813b0b427f9139ac6c85cd415e561b9c8afe3d3ae626764f47
Date: Sat, 30 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732935353
