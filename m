Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCC31C4A17
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760483994; cv=none; b=qmqe7BOeUGaYGDCKJDP++1Dl0YicGYmDoV5ZReJUkNgIZfky7IE7TQQlH9tFadkUMiwaM5cAOZhOyPmD+oP/EcSOH0XEuWp3gZjnPJ3sS6yAcaASI6euQLYTkLId0Nuqs/wfM0CT0tCzEBu1rbYuQB7IEk1AeGGstCsEzTMHDDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760483994; c=relaxed/simple;
	bh=3L/f7Kl7RbT4WguaPTzK0jZbAhRHkvFJaYCJdcb4zZs=;
	h=To:Subject:From:Message-Id:Date; b=mLRgLD1ZPmNAFKtVAcLjLL/eIodsSR4V8UQOE75h62t2jPRmCSrrvUe8kwYA1upXtvYNPVNLWhmKDIj19APDPI57z/nfCzDQHY0bxhSzAmC2ZkAvEDiDFUdNepPSpiPoeW89+XEo3cFavX4bwSMEo2/3eVOTvRL36FUemwaf6Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHjYWr8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHjYWr8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D76CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760483993;
	bh=3L/f7Kl7RbT4WguaPTzK0jZbAhRHkvFJaYCJdcb4zZs=;
	h=To:Subject:From:Date:From;
	b=bHjYWr8RAhGZFUg5RZuzIL8v/u3SmNlExrZr5y02+K4hjN9upeI83evFn4xgy2NQu
	 oM1swE1dR4opvx8Rw9CoTx9dWFgzOiWtRHUoUKIF9Y6F1UAeDSFj+jvNKXuLlByO5n
	 5OERMdqG05A5vtGYi6rV/74P7bZPq/nCchmTJ+XF4PCCXlrmw6RAqKy6lMre3ZYC3M
	 S8MlYoB/iP6I5LU/nyYzhoTl0KMnET5EZ4UuKz1sBQe9PENfMkchY86em+PR7sLgy5
	 Ds3x+7xv/MjceNAfoVuplCBJL1c1g12EPllS2LsTyVcEhaVi7lnCAV9K+r1tg1VZ03
	 PVNdILJ/q8Gug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA52CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048399357.26565.5978986180512382232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b758cd0b35ad997196a0d25af096cb71aaa8f605c4d785d410af81078e0707
Date: Tue, 14 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760483993
