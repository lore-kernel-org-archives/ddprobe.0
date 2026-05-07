Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC0640DFB3
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778128654; cv=none; b=R48WCfVSLDYrkR9BGCzTwRk8MV7DsOwaiRFc1cFTSbNS/mL3xnLHeJAH1kzfKXhbDCffLE4jHRTcNGWvSY2/kpJgbbGpDZEFMwolNkw5mf5t+90ZGYrB2JdZQGS3HsBIOmNr7nE5LtPdSfC/aer9fm8iG+dwABcEJel0ZOIFtKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778128654; c=relaxed/simple;
	bh=nIFK3UZ2INJf/crD7wPyBIdumyR2RygX1RbcVLMNCnM=;
	h=To:Subject:From:Message-Id:Date; b=ZsaPIpNyVV9Atb+pSCP2iq84WapR7eF6qZLNWua1urUQQ/hI419VQT8Gd4TMXdqt7znKrhkZQyUg/l4kLqRK+T1Wf6PKMN4Bt8WFNsvT6xL7CyF8NIjNHjoSCz+y9ZNnmeZyO5qs3byHCoJTD+j8Witw1ecmEh1oeOWe2IdDKyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agi9KV1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agi9KV1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6463C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778128653;
	bh=nIFK3UZ2INJf/crD7wPyBIdumyR2RygX1RbcVLMNCnM=;
	h=To:Subject:From:Date:From;
	b=agi9KV1ocb8yx7B0PDI4kZwz3e4p0MD9DzAAQQE5czcJrycQlsdYTANBoacrw7VMj
	 O0DFGv+gMPTPx8WACbEXVKA0ALkpIFfxu3tWbhN2K0yKeOtw4hXiEXp7kYWYL7MU6i
	 9+FbkjPaNKivHxw5FcV4AP1Cjv/zZxic2TZPW7QWL2wJKaUSylOaE+CWPHxSdeuJAM
	 MLLZiUB4DK6PlLsSrlwi7I4uPjoWyh77E5wso0guVpbQ7j9qEkf6SdatpUKgEKPcxp
	 HsFvmxd6QDVes+0lL/W7JMpaJWW+duhGys/TF0tWuvLERZYMF4lrcpUgCg2Nd8QAQ5
	 Vl+UsiH+FpGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F9DCD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812865372.26871.14609311367416957784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dff63961e654b7f3b744aa6b93114d8707d1646444b0ebf93ca1fce781c2732
Date: Thu, 07 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778128653
