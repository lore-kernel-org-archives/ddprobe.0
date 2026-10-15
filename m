Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F0D4C2276
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792062034; cv=none; b=XCJfwyb26YGWB8iEK2Ip+9A52OTZ6HkqD9tvtLtbwSpvfrbGqiIBQHzl6J0o6dKx3xEgt2IiBtu8fuYx31bdzNN2TS7vqqEzeEt3vniTGIdHRBEeNJM0943jNDmel8kjDn7pUMtyzuJ9K1cah/X2NfS3Eh+Hoeo/9Wi6jSCtQz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792062034; c=relaxed/simple;
	bh=Mzwq+h5I3Hfv2EamxjZYXwZ3JVpp6aWiF13kUSvZn1g=;
	h=To:Subject:From:Message-Id:Date; b=VuXSHTV7OzeHW/QsZCZLTD1LrtlPyNk9BesVChMFO6fbgVIkYsRJcyazwpulH/j5IumrRC1FXdqhcBnYrodEfa//rWYOIun82/lOAy5ygJD9cEuduTLB/tcJwmXBsvlhb0HsILDqsJB7ZRxzc0cbQM2aH3sxN3YEj/ekQ+u+TZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLHUXbZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLHUXbZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33D6C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792062033;
	bh=Mzwq+h5I3Hfv2EamxjZYXwZ3JVpp6aWiF13kUSvZn1g=;
	h=To:Subject:From:Date:From;
	b=nLHUXbZbI+aHy735sm//MA1iVTfQKfuf0k+0xckJxcaFWN9ncAT21eCQJvRK1JHf7
	 oEDmqGWevIQgUlxrwS1bwPMi45r2pPwUN9lGaSgWohB8ksKRboYI3ziabP7s3ETSZy
	 OsW1X3gw6utaIEzjBG2rgGyP7Wp4Y6JOYk2XOYGtlYxofyhyGKR9752pxPj3dDO70C
	 PuzinEPhUz0HwEZX18fEb+K7yoIqxOGp/yuZy05hk0GcpcJPBZu6CJkPMNizKFxWNx
	 E3WvNsuiH7JrWvVczGncb6sbzvieYqh6wX5ORz/LE9ELV/OZh8y70ItwEzfRliwUJY
	 4JUEgyvaN033w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5B0CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206203373.14258.4664100984256905056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058cf33eb81aad33ecddd2d92e1467b40b365b2d2f168bcc33c68f69c228ccf5
Date: Thu, 15 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792062033
