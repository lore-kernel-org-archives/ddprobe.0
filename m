Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEF0277819
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754403594; cv=none; b=WPMHVaIQXUBBgiY4L3fW1NUWt9GuWqCY7sexvQhyG3T9lWLxFHMYP37e1JuzGX7oaWfLjrFhg229mgGUn03RpgEONdJwkPQQAct0zRdF43S2unWRgWjXZVPq4wJ8RTi9A6RILr2JXqiNZZJKABm3+bU395EM5Rtyj+nXvPeLC7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754403594; c=relaxed/simple;
	bh=YmPKbMfzftCJvO7OegXktL4VJ3iwZLZhDuamz7t8Rys=;
	h=To:Subject:From:Message-Id:Date; b=WIZSWsOzPCH0/20QctTzDmazbNvsBtFY/Q1r12nKSKuOChQ1G73JffEaZmyA00vSFveD7LZvstwOLK5vPueRD1cYH5GJEl8/sP/mvLKeA0ys3aMmyEmTaQqHCtYgJH+xaiydwxJCastxlGsii5ea2OyLRmUov036qSE/zLlbjvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7gD4Owd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7gD4Owd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E842C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754403593;
	bh=YmPKbMfzftCJvO7OegXktL4VJ3iwZLZhDuamz7t8Rys=;
	h=To:Subject:From:Date:From;
	b=l7gD4Owd26FlbfZRZcquE4fXL8JHgB5SSA/Nuhk6i8rBGVr+sliPJl2pjXS1nBe+L
	 /UljChmW0INCBWzbAhjLsVuQpvOtolI36/LBzSYu4UtJg3VuffIROrUiwhS+hKgH5f
	 H58cvg/N0xqE5sRqCNrPpVj6JWwIo0W8z8gpxbYfQzobzusII9aM52Yu7rAnla5XeZ
	 iBJYDSRYMQ+PNGOnEIeHEvSt7/2NizDEUBfxyrIc6GQQygX/AAdVGAowbSutoMv9Bn
	 HFCQYzMc0bl/ZouQ6dPAPwQRlJ81YwuYip+mqNJPaEVrBYN0CGgX3is8D4FRgECLcL
	 ZoVhxi+KNl27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F914C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440359358.20627.10658608147919315199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefb50f9e6f5b12825da4992b2fca09c61c07f7ef70411e26841dc07d680dc9e
Date: Tue, 05 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754403593
