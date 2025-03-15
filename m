Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42223CA52
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742000334; cv=none; b=RbtWdUpa1hlngCRmpbOMsGBPgR9oeaO/cgZ4teWqoIuN3puOh8JQHDX0lPavF6SSYO3lg763WOWWm3L3y7wVwj99qkCloWHt6ySH+fVDIOh237CULFoDUPO1b/SUZKhg9y3RhZ9iYPYDlIVKyJRTMyelsbQcfKtqo7aZ+7LVlWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742000334; c=relaxed/simple;
	bh=RkbiNUVCYklwQqqtrlRQfQmeveF5cJQE/1cinda6JFI=;
	h=To:Subject:From:Message-Id:Date; b=r65VHnUCRCpS6TqLyrwipb6QQEniJXfT4fuIcJ8/77sec3gmI6TGsT9edYGJ9YG2AxwZM44XaygSdTRhO4EZ15azPpVvJKaR2Cm3T6S0V+C9d6WvwCzpCCSq7eROc/lpbmxo53iqh+xunrGmbJYDZC/kFPOvtChkFs8yqcPTa7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSfvsLWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSfvsLWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A40C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742000333;
	bh=RkbiNUVCYklwQqqtrlRQfQmeveF5cJQE/1cinda6JFI=;
	h=To:Subject:From:Date:From;
	b=FSfvsLWRiUJbq/KgiQhl68kLZPaWS+TF/nGuCl9sYT+qTK/RE8Qs7N1itj/s6zEDi
	 BqqKsfqwEO+C40gjiyi8zxp5ihxN9w+vinWwYzH46eTVdKDrp61cOoiB3rCInmxB9L
	 rydvKUcgI6XxB14xdsPQ0Q9VbCms8ZWh32565Zur/mbG1DdipLESSQNlQMcdTmlJ1c
	 rPHW8gb4iW+GQCfNw5PJBOZ6fqVOlBh3AdZMdnSyzzhkALf+aFqhUDyTQZU9EZ/Ows
	 U4UXWiB+PkBd0BGa5lCcXEiuX+EFCw6Lw8mAyZ9JItzdvxhPrNHC5hOFR96ySFBMnd
	 yZEtD/GixB8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D407C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200033361.18296.16922778799609462793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579d6a5e2cba592aff4916a98e3a3bd067fe2aba31be82f799a414361fa6fbc9
Date: Sat, 15 Mar 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742000333
