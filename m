Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6214D476687
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790716234; cv=none; b=vFzKuFk+iO4TWImgR4OUKZAlKSF6LorNPeJ8E5d5xUbRbzoRYsW1x6FPY8+vTkbaoMeILPXbTnyprTmNkgu+0FwQtnGVBonNrMoljYClvCBHGAt6CBPH0bk6AHB5R1aP0zg/zfV1De8oBlC/T/My2ErvCT6GKHyVRfj5sv3brjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790716234; c=relaxed/simple;
	bh=K48HTLNE2OgD6G9f3UHN1BaKJGnfUhn5czQwTTKfTWM=;
	h=To:Subject:From:Message-Id:Date; b=ghMtx+SARQnHjUvhpTIaRetaYlKzlQN3K0NigUauvCTxCu5o7gWGm8kDnAoFCdXPj88qA37yaRIeCfx9ZvSFlU/8g8oQppYt9eAHJI4l8o89M773ThM60MXfh2wp6Il7dG+tgA5iT7TROddMHpjmSvCUjSQhFTmVxJ/alY+nfgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra8iojnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra8iojnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCADAC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790716233;
	bh=K48HTLNE2OgD6G9f3UHN1BaKJGnfUhn5czQwTTKfTWM=;
	h=To:Subject:From:Date:From;
	b=ra8iojnMz+BpLR5Vjslnms1/tnUNNoxn9SWnNP1M9EG7Sa2bN1pAb3qObJFsYu33X
	 RGTXIv8oXBlm6rsrVQjYgmhvVqQJVzl5O7B7IoII3J5gIFAnq2H/EBpesKzUHJpadF
	 XCBh+emrxtZdCuI2HW8Fds0KYMXDkhwpW8bs4XK60EqMCtaxGqVyDIz3klfJ5svoEV
	 PoX8qHuVX6M1ly/TWHNqziW8INPs29GfEQNgs4QbSpgaKo1IQhcATZ2SRmAWoXJs40
	 1KWYNNJ0SXSyDg8U2ZvNt8ch4bQtppANnjTcoxx2s3suCTthQIaVtuiRGFoq5JaUKb
	 oKzIWdmnkS/mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C19CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071623368.10644.14457021219093671435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13c71cfa0da346eb0e8daaa6ff76024d743fdbc9fa45012404381f69ff7e339
Date: Tue, 29 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790716233
