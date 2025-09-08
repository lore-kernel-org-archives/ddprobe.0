Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2C52DC34B
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757369994; cv=none; b=WYeuFlHbJ+HBm25sdmFNrlC2+WDC4WkiizbUJXPob2LPVUiydeN6DbcTSMtWCePwQ4uog3lWHtasl35D8+fu47+ji+0pX/8xhRdQegNpjUV9L7oY8zZTdEKP4jdGeIyL45W8kAqYQfPyO8K0+Vpv2b1j/eP23ELmrydQPsTj7VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757369994; c=relaxed/simple;
	bh=SRkWMfeVl7IKpfDA1SRC7ykwUA1YNKBTCAKKrbwm1W0=;
	h=To:Subject:From:Message-Id:Date; b=USzgk8+YcEUJFgu5pMfV9+MC6OfQb1S9Q6coYx3dTReRGKZFsCovyjxqc9tGVAhvBQ8GjZfo+7OX+2c5z4Bsc1j4h2S9VJBYLrHuDJw+e5AlsFk4Ko+/SzVhYw+4+MmZnu/bhpJEnEmnudV8ns/zSBes53dwz0rxnIX6S9eUj2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RV+qWjyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV+qWjyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1863C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757369993;
	bh=SRkWMfeVl7IKpfDA1SRC7ykwUA1YNKBTCAKKrbwm1W0=;
	h=To:Subject:From:Date:From;
	b=RV+qWjyW8VHb11Vs2sKhcBbXriS875zt6zatbJ1R0vIhVwqvGRfHmsB2I9M7lNybM
	 6UWwkpW5CJTS+upSLgvVwPChvtbhb5IxA41P9xVZ6MxRy1TQcKM7Y4SZZic/khuO+G
	 WtG84OMZJoREVrul5108iX+ey2wMbWbOpoab7jPFuuCy7pEssy0w063j9ZdUUNNwWf
	 CBIlU1Iqa1UvGNIelLa14W6sfDQ/RLeGTZbKeXem11SRGsH94sMS7RSFq5PLqmFqII
	 2d+PHRyWSAUKdXO5UmBChsBpSTU/wai4ap8zh+U6B5tT1UD7mHDzHGsAB0IKTVPwgR
	 B75aHtI/QX7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F219CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736999357.23872.14384908845284446132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c285ebd800a5e417fc484b4fa674124c3262dda4bbeaf0e491c1dcdb4a4135
Date: Mon, 08 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757369993
