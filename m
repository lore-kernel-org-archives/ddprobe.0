Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3222F1C
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729977954; cv=none; b=UWYrTSSWv0kCqFrJ0uCtL0rI3SlyaTtGoCcJS3V+ZOmHiBhLUv3DouVR+3nCHBbwAVnaoWw1T4VYOYjU3cBxvQVi+01+DFWVBgTpdvGi71WP273AN87woskgx+1aTfyo6F0BTmZ4n1tNIctgwDtws0vaEPmOldMSeO8UbixoC0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729977954; c=relaxed/simple;
	bh=U6GMkpfS4vUDfwfwwhp5znGgP2wNuwy3gQNqgspPEH4=;
	h=To:Subject:From:Message-Id:Date; b=ozrKB3gSCmt2nVIpiwTlPy3bQXq7MmUYE9Uz17akEKWo8MIJ2mmxWKRTZP2Uz/+ex/6OuHB8jzohF0r3k8FCsGLiFfUF+4tlcmHhKTCT2jcHL9jxwjW+jjp3Uj5XsknWdkY1bBJ+dCO7o+mp6VgcfjkYnwnypPR4xJL8VECKwQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qfy0HXZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qfy0HXZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BF4C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729977953;
	bh=U6GMkpfS4vUDfwfwwhp5znGgP2wNuwy3gQNqgspPEH4=;
	h=To:Subject:From:Date:From;
	b=Qfy0HXZT+6tEpucpa1oI2hj7YWvWlwAQjiaa6xtcGxL8xQ5VN7xKRP6RQnRnpEzPT
	 HPxtCEJQ7n9mPltmjum8Ven6zwFiq2s/I5kcsRSr/jvKFFqr3i6FcNE2BtzLp57uIB
	 p1vJIx+pmebSnwHIPnUC3jtKU9eAYoGTkbcYL5qrAz/E62A991NlpVJPdYTsQC+2G5
	 Zt6VYRdfNBMUR5gBpM3wteKjmDH1hH2+ICVrGUZOTFWGuDTesILZbJwM5Pzu8wc4Hp
	 Ld3XzHgSpFvSSoWIGk8Dy9q4HIxtfP6fJbIzptaksDaIpklsFoxAufRQee6vNMvI2D
	 X6VHIu56ekZmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20EBD0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997795363.17957.15851063024308012861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36a1e7be13f0b1c3980c625ea0f0d53d001285dffb54991d924b778096fa312
Date: Sat, 26 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729977953
