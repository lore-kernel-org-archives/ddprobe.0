Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFBB8F54
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745138994; cv=none; b=eHTAqSvf+UA1+UVjvtLVXG3WiCLF6gDbS80UHtwjsLafS/wYCFghTN1bkL/1BdG256bARgizw1+qQYXlE6jCM01t61di/TusaE6T8RAz7No6CXQ/+qQBKwOZCICCUkF8bY7B8cQqiaAl4NFEndRF0vaxWUOc6jmVND/vZ59dPC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745138994; c=relaxed/simple;
	bh=OfY+JYBzUjir7f7Cn2DEevizbFUwbhP7WWkxGfUwbb8=;
	h=To:Subject:From:Message-Id:Date; b=LWJSK2wODNhmPjFCheFD7cAkdMaewBp9y3YGdPk3F+WzkwPljt9et2i0pJEpy57LNvVHQ93KwKc6f5ZDaGQ/H7GHn5EbrmClWiNfZOUoF6s9EG/+b7uRXgQnf1u5t34RMrTOvC0HwiL4fB/fW5+n0aUEHXlUOVy9eMmqDFeoiyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mULcv7pI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mULcv7pI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC7EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745138993;
	bh=OfY+JYBzUjir7f7Cn2DEevizbFUwbhP7WWkxGfUwbb8=;
	h=To:Subject:From:Date:From;
	b=mULcv7pIKW9Y0Z3Sa5jp7/2M5G+6v+e75O+5nXkjehatBxc1R14/aT8ULeQxTDNkf
	 I0fXYPmsCX6VH80ke7KNHkijXjzozted5WAnMC/Qh0iciSc+1D/4p8jAQFW4OiZM6D
	 TWxR/3QYL06T8ieO4vlI1Y8+5MIAkcjklQkEZWG0WsJITGFYFHctsCY3fvy/hK9auh
	 skFz0cI2eyV20YDV6UgG7oSH1VSI7Ed8rSFMAvVtd/xExIYWgOEi1j79aZIOmk6jhy
	 0gxq3F9LbzRMWDAtMvqdfeQOQSiHLnM5/zCcb7P7sIsBAI1gRFfaDus+9qD07PdiIP
	 a1cqm0r4bwqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D22C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513899365.26742.12880583162495733126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63204864d91bfc36e10608d3655154f18c786cab9fc91cdea319cb6ea8cb164
Date: Sun, 20 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745138993
