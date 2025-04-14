Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48497265604
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744631394; cv=none; b=OCnfXRh6WwGPgtFnuS2d8wvuhWE3okWtXqryLnn+gnW2pQx5SeVRRJsbddP5ak8ggcJKmqocjfjzoWa8GnXTy/r46yM1Uzd6s/dbeddUK7w8IJdC+YUbYLzsArCpKj66BGBomIbzx7GN9W0wXroD7L+ZBKRKoxuMG77M30s3j+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744631394; c=relaxed/simple;
	bh=ya22ZfX/0gAmlMfQD89ygQF7lGTlofjp1z1uXbzCMzU=;
	h=To:Subject:From:Message-Id:Date; b=Y8AXQ/O7d85uB3bJqlxc0waECqRgp5m5m0kxu2nHam6gKD1mmReXGb066y2u4jgP6aJHaJV1sTgyH8DqYuTGVGx5WV4kMva9EU6UrDqjT6wihFaNglC125vnu2Pzikl9A0UvzLlao5/yoI1bRfp1fJ5el/w8MbnQpmOhMKWZX/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfUiM6yU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfUiM6yU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD144C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744631393;
	bh=ya22ZfX/0gAmlMfQD89ygQF7lGTlofjp1z1uXbzCMzU=;
	h=To:Subject:From:Date:From;
	b=DfUiM6yU4QnIEI1Vcoaj6jEpE4KS5JbWEl6mCTTo+Z8cbzjVwhNzGjd0EkiZTgpiG
	 UC64KR2N6m+UN7LinLv+Xox3coZf7EkvdCemj/mF/GL8jy0HTUuqNz0VREsA7ln0iX
	 q0KG0q35IOJe6EdWjlNI4RtsTYs41SBLDMCpcl9DQ//GXh8NA0H7wNR520TpVcJtLy
	 d7ZdnAISIIzL+yTpp/E3IhO0iyU3Z3Ee0QTzr/tZfrDcbePjvh+wu/4CJIJLvstX0R
	 Fh25x2gHpG5meXCXsXlFXsNqfdmnXybZrpuOi0lR8ikSvM1/2jPp2myjXn9djRaXKl
	 s3nPr5EcLGCMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89FCC369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463139368.15309.3914568865855832486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053d57c953a26556e315569bcfcb3007d5af8016adcf4fa3a799b38e1d3cb449
Date: Mon, 14 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744631393
