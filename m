Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095537D3EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707408497; cv=none; b=cSKPpkDzNvZkoj8IKU28dknahjUC+2Vfqc3bHLWFFwkjnMeOk7zrjggDwZpm+HvbjjgxPDcM6WDxHYk7N4Vs4Apf89oC0sK1Vgl6nLD9Y/tDuFSukPxRuGMcaY7obCRkh5Kx7auH4nZplSqv7EDNQjIMYY3MmFPZGtWB28qcu8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707408497; c=relaxed/simple;
	bh=QcovDYBuyIMApgoB+J1kV7lruyAxjdiyvXwhfcCqpZI=;
	h=To:Subject:From:Message-Id:Date; b=ghpOfyQO1JAVFWfsf71FUYoQ2YWEkYcy8QSMpyKG+on25M62DlWGAJUWJSNojirrgTLGKpDP+B9MTIYWoaKZLecYePVxIwqCW8wlxyWcwOso3m1aPXilLdBX478Cxxm6vv/CZDaln7aD885n8xAf4hBZ0K6CndHw0IC/6RhQ2tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxXBYfOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxXBYfOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F28AC433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707408496;
	bh=QcovDYBuyIMApgoB+J1kV7lruyAxjdiyvXwhfcCqpZI=;
	h=To:Subject:From:Date:From;
	b=WxXBYfOyqaurh22/CA+GL7/T0hXJl550SWWaG/o4jQg7btiQzxSK+8KreL07ImmqB
	 X1A1xTSx7ZGgP71rEovmGqaFtAoSa31W6MDe7KJ+WiqxRMOwDn/2PykCOB6dLo/qcC
	 mMUeVWXNheJRIfW8hEv2nUMU0R3PmYY5M9MJe5It/paYydnchpWkvT9oxeyMSOfhTU
	 gF4b+1zKYS7gblRKevhn4E6OYGtjb2kKQ6g99tOiD+lpjobME/FtT9vlgJF7RTVFaF
	 j5PI8nZ5Maw+qVcVFtSSozwAf8puVEAzwi2G8pnygx1S6SfFEGxwd39vDamvGjw7xl
	 43G12CvEkzJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650ACC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170740849640.9765.611420000358513732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44524f136dd9b62d9579832cc472973c515813324d9e3b24ecea411225868fb
Date: Thu, 08 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707408496
