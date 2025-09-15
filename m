Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8BE1C27
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757903394; cv=none; b=edI/8oaqSjqifQ819L8aFTIL3wfaItLCzEo8bCvfceZ1QSu9G5iXEmjVlBftXV/lKWwcSjlNzn1Mvr7+19MFtfl8FZ0YsnKk+flfMEmZGy/OMetar08bXvhmOocbWsCWEB0OYEIwK7WSATEEH1k/oBDifluiNcfU1FH1zOdUlMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757903394; c=relaxed/simple;
	bh=C89ZGDRS31Vn2vYqV6ttzUGi1ztvCLHSjiUYuCX4g2w=;
	h=To:Subject:From:Message-Id:Date; b=P2LgNduJz6jLXW7hMEdjpF+uS8uzd+ozpXXOl1VZ85g+PL8YOu790dJzl/Q50KYqkrEUUIiKce/hNftsJeJXJmBXOCjIgJ3rixSFrO4Z7WKomJ2qY436xi0ypaB62Ek+F7sShuc3DnlKfqZYseSBnIv+utcODqf9sSJQf6rhras=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1g3IZKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1g3IZKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757903393;
	bh=C89ZGDRS31Vn2vYqV6ttzUGi1ztvCLHSjiUYuCX4g2w=;
	h=To:Subject:From:Date:From;
	b=X1g3IZKQTYSVTEX9/TO06GNi9cgz0S9fA/cMamI9Fki3DQTIxx3ZLhSi9QIfdjuEp
	 OB/WKFVuHkGVpROOcajy9PJ0T/hlfJSknFMjPw1NeXfqpD3W1FHU+ZaavERE4XCB7k
	 BfQ8BcXMd3Dg0R9q2DWcn1Jn8ExvQ+b7P2A43RAW+UJSATgvB+MVxMMlgxcBEBZcju
	 D2W9rstXSRv7aLsCLNdQF66B7TN5Nvix7zzPlKQ3IYC9zOtGeIJzr9lLUTaTzMhBda
	 hYcndrvp+wigrua8AeC80794TcALuRUrKNNfPUzUityD/LpeLQOJkYKv9xDq+d/Xup
	 vT3J946P5Hf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D64CAC587
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790339358.32711.9791083607003278773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a13cdc21d790895950e9e3066c95cc546f05074e85b5eb0803929e385fd19e
Date: Mon, 15 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757903393
