Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F6C4207A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764199974; cv=none; b=I72zOuRJnCxHXDPsvlihMPwlzMvUxDysAVU8b11tz3HC8G/PX8G+vo3GBkJ/gellVKx2OEDd+Jdh9A86Iio0bXAcp2qBcy0q4tlmEzqPa37ONoUdvzEbve5Gg7DmEqu9/gKPj3wJvqPF9yVRkCp5fVGvf9DIUSOxeqWoWtPpkbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764199974; c=relaxed/simple;
	bh=0LCwuxXFk5W4zYDHIljzv73F1ybDUWIpdBvWLqUXWUU=;
	h=To:Subject:From:Message-Id:Date; b=FjMEDlIrFBmXFmEVWkmbofAovAFpr9wbAuxbaGJz/d62BzXwp9EqmBHpDTuf6bOP32cdvvN6gBo1/J96tCFW+9BZ5fdJOOkpIgRJfwW4IeKmz7ir62vOtcEeyydpZj90MXj9WT9zq2ntuoVfL2YQ2zJNTbh2ZMagPJGpcqr2cRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKmc4h29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKmc4h29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764199973;
	bh=0LCwuxXFk5W4zYDHIljzv73F1ybDUWIpdBvWLqUXWUU=;
	h=To:Subject:From:Date:From;
	b=BKmc4h29tkhE2GGOcjaey3/WvAJzjMGbSliRxPK/phhjXyWIP/2HNAtWV8ritpcyc
	 oDhZDbO+6P+uEKAzZaDXdTt4vMu3pGYm7V9lJa1EMYgTdQuHkPiuLzh1j+cu1F8kYj
	 6L9V6WakBTt3vxmFisro6AeVCFRqUBLK8zi7dOOQKfAb5XPlKhdVP47oRsb9MM93RI
	 glFyko1/CdFykya/slDyZ0qJeYO5C6+fU4u8LjfdM+ZLiarb2WHQ3qJZKFbvf38m8c
	 +/V7cfkCCK6KF0xI22gPWjJ0t8MP8SHeQ2fx9e6YEwi9agGLV/LVwyFT1hPi9tZWVc
	 cXY/LYKY3PfUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94109D111B7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419997359.6817.1785239006754929650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3da883ac5daa1e89a5884df971b4f155cb4a3ca8b282a877d581e7b4e7373aa
Date: Wed, 26 Nov 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764199973
