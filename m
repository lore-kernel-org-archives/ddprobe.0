Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDF62FDC51
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757938793; cv=none; b=Xn9aFM6uEPOyD3XlFDD1q61d3FMMhQecJ1c+tQOIXhW+Z77AEmlkDH0pt5R7L+1pFSi7V9lSZ6CQBqX99axgdwwPNxN1b/6kGQ8sSIkuke5dC75CGgIYaylsfDJ3FvVkgkXrFclN80FGmQNN7rqZoSK0VdEJH3vqbzrnywgQr28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757938793; c=relaxed/simple;
	bh=n7WouLT/jhTze9I95ofyHZ0kYV7V4625t5rz0qlHun8=;
	h=To:Subject:From:Message-Id:Date; b=U7/oeMOM+6sx5xCus6RUoGDjcFqrorOqWo26X/gUoqhhO/tnQxRGXUXG3O8MS3WzDIFIihowMrRBX40U9mLyQ9cNNFTv+SKEwvTrUfgowChFggk6WovV6UOez+Q8TPtz7tzgGUnmJxXS49JcJWy/QPy1hhNtUrvUqNsZSRBNva8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jve2wd4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jve2wd4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC54C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757938793;
	bh=n7WouLT/jhTze9I95ofyHZ0kYV7V4625t5rz0qlHun8=;
	h=To:Subject:From:Date:From;
	b=Jve2wd4m/g2uxnjmkq+woQbxA+eBuvOzTg+m6Zg9KTyOIhAXfCO/3DqbGontMaqGU
	 Px2vFxHfIanCMQIrFN653ou+bdpw2XB7nO//vbTFHMCu6uEBWfkOZswMOZfXl8+9LT
	 x0QgBjygi0PJclmsaMU2DoFUibMj06PyRjQwsz35QpBeN2Y+qXYN6Gzhk0KBpeLvfv
	 QSI7R11jL3O3lZYs6WH4+9y49hqJgPPIGbPQftVBdht6illnYnE2pIYvGLYIPrxPzg
	 2iAMwN9qn3D2kYUhgQOCVpltyVNxII58hQrHi7VBNwHCinvHU/hDjRYvMEQKPY5QbH
	 IWseO6MGCA8Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90872CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793879358.4116.7735570106546217533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5c4aa4be8807015e15ca17f9878abd0d28cad832f13e253d71b9eef5acc40e
Date: Mon, 15 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757938793
