Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2838114C59C
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722596754; cv=none; b=H0fr9gZpt4LGLefEX/viSAAHThZvw0HZC6h59V/alCVehtcobo+bwuCzyUoSs2kCbCPQQWNEogscuIsUzRlFgn/zIP1yq2Hk0cYhUHfPRFy8CYXexCszmTSwCS4ps7OpBgEpIzgrhA6qx/hTTz5SesBLVMBOxlJcVLTpXtCxziI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722596754; c=relaxed/simple;
	bh=wDA88kHT+ePAyGZK3/ToRSqaXx8PeQTs2+I5fJ0t+RI=;
	h=To:Subject:From:Message-Id:Date; b=C++Ljkpgvr9bIebV1+Jje/PPcbG0/41zzHy5KgtdO2dnQSWRSKB/D05iI8h0nVNSwji5xo5ydVWzqd2DvS4ftXV3EQLo2pAtIfAy0OutdW3YMv5Q/CgzdVVliRSbgL4YKGQ5VNzWAeyg2RJB61Iu1dt8+1pID1cCeWQkdJVo1o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgKE+HB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgKE+HB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC969C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722596753;
	bh=wDA88kHT+ePAyGZK3/ToRSqaXx8PeQTs2+I5fJ0t+RI=;
	h=To:Subject:From:Date:From;
	b=lgKE+HB/c6YHDIc9cM+xSoVhuEVFVeyztf9tFw6i19gY3PgOKGnBGq1TzAZ24fyfw
	 MwaYsf+l4OxowEAgT0GmxS/OuXQXZagZKpKJjbn7gkEevQStGit/U0d+b6BcLsUgeu
	 FJxCDCBh7e0s9mbNmOwL/E+SZJx2YaP+Kz8CpygCodOv/ThuCvvRr0QiDCs9RdK37P
	 YMaxGaDnjBtL9Vtnx+Io/0679G5/jB7I/HnyMDUAgc7SNiaxKvgeruye0KREpCJWJz
	 CitYHSPh+/8NQO6oSXYVLLp3LCKzOycCJmOj2cFzsYnpgetGkyLKXlu54uWp844fy2
	 /8OhZXOeopk7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ED0C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172259675361.26855.2143410697152065593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ec0cba7008daa6ae68c57038ee75a2d4be34e564b2c9275c78d7ee01cf43a5
Date: Fri, 02 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722596753
