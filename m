Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1FF38734D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773344693; cv=none; b=K1s3YTakjnh2gtwZEAMJLS1+NNqaa/e1YihWzE0FU20eybENXnrw0UhWi9010g6p/BfWQQKHPkldkk7vz5i/pdwO+Tin4XwML8y7kTPkBfabNJSItOjd6zXxr9PdX0ndFKVnMyI7o3PMGerfXDzdFOoRaFyTJ9B1PkYDWDFWxlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773344693; c=relaxed/simple;
	bh=jUo656Cu4ncULrMP3qY052fMCXNcQ5IxEHUko2CuYTE=;
	h=To:Subject:From:Message-Id:Date; b=UPiOx+ZgwOvxDOjAFUKyKrWE52zpTmRHG9jcH7sRiRfWEhrdw8TagnoMyH4vDEfvzAnqPUQ0pUds7rutlFC97eiFqzhqgb5eA0Pd4sCvFyuFhzOujQaUsPpjYfuhcPi2QPBSCpcTSes89SHaQBHqx9+0BQ9DCo3ILg7Q1vXXyYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjwNUHwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjwNUHwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F1C19425
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773344693;
	bh=jUo656Cu4ncULrMP3qY052fMCXNcQ5IxEHUko2CuYTE=;
	h=To:Subject:From:Date:From;
	b=DjwNUHwMnjzfQoKpGeVJYJu5JTOQa+YY7br/u1BltMTQCCV43IVmefhP6ExFQ8k1J
	 GgL/PUqXYYeRJroWZg+0+ibIA/8xUGn4NeJuTv74B+pbUhNkqP6jzRxL6eclxIHVZt
	 +z4iebPer+g82sGOyD1MeTBANsj3M/DKjqpMAH/Vq6yK5dSZ2++8H575U+zRZ1zIHz
	 HbJeYGWefiDqgIgNju56wNY97Nsmr02WYX7coaR5lLFESGjSfDx8x7olMq4RhqUMw4
	 kzhHe+h4Xv10Pw/NhRKxR+BmrBRZG86LKnEuBxAIpxoCWYZYYR0ylz8BWQ8WDE0hq7
	 VbzuvEkdDCZRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93978106ACE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334469359.12634.14639161784431088637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64ff821f47fa56aaf7ab9aefaa97a621359b9c7158d2c68f6d735a6e15320b8
Date: Thu, 12 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773344693
