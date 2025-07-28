Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249EF2749DA
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753721994; cv=none; b=fBPVe+ik4mjMPRqYwgdmjT3Cjbs0iEnvYKzNkgxqSnShhZ/oGH4zKagGft7KrjQoLic4wRhzkypnwQ85kS3hJbhoVj1VUcs9kXYtNHJX5X12SpXeY7O4VdPqqVafGwcYnipLI7eZidqxhtfJPXrzn4OnLsoX2TLcc658OyOfNJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753721994; c=relaxed/simple;
	bh=hJUvYr4yQZQzLNUtelMRLN6/lL5o36Uz6tpAzpM2Uds=;
	h=To:Subject:From:Message-Id:Date; b=cBREi/f24/puLJER3+qBJm9mpWIawQqoPsesCBVrTiSlGl72B2816wE54+mvGy4mYGxMZFiBeHHYx4Kb0z8KQDqu6EXiCMF835woFQbOqyvsNc9qQsUVT+uNqByqh2fJ6BBlcfVB5Tii5I/V3R78Iscxy3flYurpghp/3gIcZ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9Uh4tkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9Uh4tkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D728C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753721993;
	bh=hJUvYr4yQZQzLNUtelMRLN6/lL5o36Uz6tpAzpM2Uds=;
	h=To:Subject:From:Date:From;
	b=C9Uh4tkd17cOm28VlLUOT84AVRK7CydPBh3s4MJUUQcUDPymEHZh+PrVfUip56k+H
	 +xxywD5U6MMv7nB2wMS7uV6fR/HxQMuoDpzHS9B9T02+pCteRfIb7Iv8X6HpuRAIt2
	 h/EmPtNlnTIqLaqQsbbcjtw+fRSj2B+PiS49N8V7U62EmJx4vRym4YNEAcJyhbSZrs
	 Hj1fisCr636QiUYHOzYuF6/jilTjWv///JgiHCaq9LUkOl6kkUJVZjcGOlyEpv/gLC
	 RTUH/Je9l7fg17y1o+ZQ8LGSBUFzAgU7vnGRtwO92MAClsGpqOZ1KEB0CBZM7YJeip
	 LHccS+ZoRE0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC79C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372199358.1325.13874715251680123364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7007d081a0490114eebcb166dcea359adb7a26ea3b26f1a7f89a17a4fbe4f0
Date: Mon, 28 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753721993
