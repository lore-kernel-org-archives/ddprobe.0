Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE5F1B3948
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736675754; cv=none; b=Rt9t3N8croTMNvV+hMNGBBl4WmUbYh5BkOsMnzmkmh5mQQkmlWbPjCnjiYNhv5SVxW6P55acsgQsoX2cTaHuATFxTbnOBrN6E9KfIRHrTRs2BrEwggMvNcSry+48/4R95TN00IGNmKCdXMzZlNhp199iIOvSvE98WJ6RbrkZSKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736675754; c=relaxed/simple;
	bh=GbS3z3Kq3ZC28HEvNKHBRjq2soYfTP9T0PTT04fTTgk=;
	h=To:Subject:From:Message-Id:Date; b=TZZN4WyVFkFHy0Wp0lsyZDNrocP5Z2fjc5MfFrQknYjVT4q4F1YhS0jQ7EDgko3KAij47HTHaFNL2qoZRAchURgwWWO0hSVFfh75bFbDkAZBcztCmako+L2AiPVqxOldYYo4k1P3+/d9umCjpZX6bOpfJGIl4164yGEmfqCwjvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdH+1/Qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdH+1/Qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FA1C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736675753;
	bh=GbS3z3Kq3ZC28HEvNKHBRjq2soYfTP9T0PTT04fTTgk=;
	h=To:Subject:From:Date:From;
	b=OdH+1/QymEAb4vFQbtr1/RRUaSXDUSGeOhvf1v1s6qcg0+Awqc6roOs6QH0fqtROp
	 bcI1CVJA4uCoXf5D8wChLDFTZrarJO/YDnm+PQPhc9FqI26556AbqySqZTW/s3CYNA
	 6BKRFPQaDOd5THGrNdxybynpSSYFb3W0ZtJR9HWcElDjmhEuu4f/7G5vA52g7KasGQ
	 I3NdxaKQehH9AErTOJXra3PP6VTB3eCfmqrWSonkK6VJJFOTj2JomYkSbL52rAhGoF
	 kgYxivU3U5yV1m7AaBtfEeRdlRZKnJxEM9TXwYcT/iadLRVyLocqpjI5P9hY6+geZ7
	 xFoEgtBaIx+eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D0E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667575358.15054.987330952407896747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483b79fb32788413480a2dc5f3e7ff08c28a907990b3dc3a2e2da0cdbf302b51
Date: Sun, 12 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736675753
