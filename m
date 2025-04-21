Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFD91FC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745210994; cv=none; b=EiC4a/8NH8MgR1qL0CVQdEnBeQK3DQ72CN0zGIgqyCv8/N/5Upxhw2aMSGiW+8JKpIz0vYNdGyDwEuJ5XmTdaGwMvVcRQhCRPxT0JmF8L2rRA7c+ld4/tJS1BLoeqd0QDzS87z+VfdR5YMqxGGnD2rJivoNFSacE8P/JmAVm2iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745210994; c=relaxed/simple;
	bh=lG85eX0Z2h1hPQIviHbiv3pZ2PW+Ml/SbxJ7TI+KejA=;
	h=To:Subject:From:Message-Id:Date; b=DrtX47OwCrJ6CRy/I+qXmSPUlIUFebTuiVL7vHq1tVB4LwFyGtb8dIizkut/qfJhJAMThlqEoEU0UzeDm60LbtE3vjMwBz2wIQK12wSfmklgxUJttyjwnd1JSvUeARd07EtNxvktbS1AXedFC/HEjx+5s3D8/rjXkeHFaztRgAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSzSkuxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSzSkuxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF376C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745210993;
	bh=lG85eX0Z2h1hPQIviHbiv3pZ2PW+Ml/SbxJ7TI+KejA=;
	h=To:Subject:From:Date:From;
	b=LSzSkuxR9C39bHzjKsEjPdx6plsWnCy2+X0BolS2aZL7W2xKGvylSl4DFW2ZDwx4G
	 zoRRpHeaWH5B6ov8aATkfJXqiVgeVa6OhomLLd1JLYWSoHgdgiYnjZ332d+Abdvjyr
	 hR3i7eA5NFhQyM9N9sp5BH51cYuR9WIXvaNav13d/5Ay8mNdYRAbZOR/8T1Mgf1eaA
	 eCEpuC/V1+jHgjuPOyRt6dAnVIPmBKpc01ucTbJPnLWivr4VF87+qV4xU8L1K0h0H+
	 bn9GZOCvX43diylncBL/3yTzrakOr4obo8QXh7ylk0kJ9iF51wB3Si4gG7lzbUZMmj
	 Yxa663QQ5ZGvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A451C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521099359.1105.10080061730354215963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a97fd209e63ecef77c30d69d2a39511890f7798c7b21f52886aecfea61c32b
Date: Mon, 21 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745210993
