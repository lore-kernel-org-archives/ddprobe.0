Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAC58834
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758635993; cv=none; b=HsKuHRr+uLeDVNRpTXjYCrRW6ykMGIYZ9U3CXFt+qrV9RI1Bh9AmRJaKBiql5JU/R2U5ce+EMGj2zGR/ZbPVqlk7JoFpTSjcLJCvJq4+KJD+MUbZcfmlpo+E0qrhtemohI9xgJfuoXf+UdCjr846lEsnW1cXNEd+r+mZqQXTqyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758635993; c=relaxed/simple;
	bh=0qThh7AzszgxM5caaG4GG5PHs5MaiQunV8ltCNMBiiw=;
	h=To:Subject:From:Message-Id:Date; b=mJfXl69bPD7Iz0MTifQE/omfvyATDTnB4EObV+9VIkrKPfVjxrdYoasKWw3PXA61TPAo0dG1l+Hrg1+B0iAbA5zk6yBcYmJjvSYRX101nfahAtcbsE6ufg5FEuvg1tkSel+BydCBxWiXzLQLSfDU+/T/C9qJWrxEEuqK+UtjxHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtUmLUHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtUmLUHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A9C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758635993;
	bh=0qThh7AzszgxM5caaG4GG5PHs5MaiQunV8ltCNMBiiw=;
	h=To:Subject:From:Date:From;
	b=LtUmLUHolFi9uRf3JdcujQvLauPMq2wBnc6K0eeWxcfbbY8mfqwQKU8Sq6odOgDTB
	 1y3199tov8U0fsxpe4wbS55KM0lavzX0XANbbS8CYuGcICUt6BTRaNkzahElFCVEW5
	 nKvH9MFikFpbUAtCeTvkfLs6uXnS0vUdegFlr4nAtn0dgqz0Dzi7DP19SUw/HAxMD8
	 aj8Wqy2GcfevpJvJPrri0fNjAjQ4PN/mlzCrdIxS3zlIUa2A6oiSFu43NRR6kVOA4t
	 f/tRbErBMZ59rgnEq9cm+NVa5pCwMEHP7F0SxS5lX31BTrkQ87ZtomflbNvW6k0sE6
	 chbaY+VI/XaZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07BCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863599357.15204.14939940641541328131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a4712fef7d66108db6ec6cb0ac55068b41140a7c927e67c411fd7b6266ad0a
Date: Tue, 23 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758635993
