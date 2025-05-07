Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BD7202C26
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746625794; cv=none; b=F8YFwTdllJIKvlRIZld+skyxk0m2GxScweGEvQsWBiVVtueX0MMkdPmtMAtx+YmHqIETQbHog9A7oWAJ6w/4VbjgB903LF6gE+NrpcXbGzzRC8tOmWUYuz5ZRxJbHKSP108if5vg0KYeSapgmd6RGLKmz8loX8ugp0LVHHAO42k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746625794; c=relaxed/simple;
	bh=GkzztoDWNZkER1QfFrK8Ow3DSVVJwMJ9T7T6U648RQA=;
	h=To:Subject:From:Message-Id:Date; b=GULQt3zqIuPQvx2KC4nD7+rG2+MhF8QKtSZCcXH4Mruw+ATWBNA//+5/3iFG5JMr+ttnzQhsips+FxBBkUARSvpssksnli3buzrCU3KUOaTBdxBE3ItbO1Kzq8FEc5QvbZXiMM8tYXJCkDHZTsi4Dk6WIl4x4dUv7yy/FG/p88o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN7Qgk/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN7Qgk/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9FC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746625793;
	bh=GkzztoDWNZkER1QfFrK8Ow3DSVVJwMJ9T7T6U648RQA=;
	h=To:Subject:From:Date:From;
	b=HN7Qgk/3F3dOe/665jjGFS4Hk5VJj3DmVZZMN7kicfqlLD/e6dmEleyLcQIB6fnd9
	 670xofWFuAfUDpYjfniQ6thrwGZlIqqFu8S2PHC9bEtCdH4hrrhpH4SY+NTHvU3AaF
	 EVt4J7QfNywSDNR5Kr+nXS7wklu9rWBe9vOiKbdcunatVPTcWx0bvMt6ERbyks1Vii
	 WgJPfOeYmxTc7VyjDpCvlj2kMlI6JlrMe3IQkPsp3MCGPP9sg2anaM9kBzS4kV9K8R
	 MlhmOcvAi/UP9ghxtI7Si6wOTn+ZA//0dbpwwcku1kkqFq5Br7/83YJMsCuOVr0b1M
	 kiYhdEpfxGhXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07EC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662579357.5023.14268338103118946150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e5b49efa9c5035ea66e20a7fa0ddacafe334530d543562ca9fdcc572e054fb
Date: Wed, 07 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746625793
