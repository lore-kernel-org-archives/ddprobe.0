Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C22010EE
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773120894; cv=none; b=eGZO8OMbpzRYFkGEqBCp//E0ACdFZCYBi1kpOaAe20IJR/wzCg9i5IMi0w3MXTzFrqUtyNQJVqTfCAfa5Z8rov6/HCRjaBH32GyrUU0NSpJ30xAaydRYW75XGYBohEN9CtffpI8+difGhfqYyDE9FncUc+X9kV9/UhXA/rt3pt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773120894; c=relaxed/simple;
	bh=tfGVsio/rbtOaIsByZ0oqMsXrnEEN+mjnjbE0veQXoU=;
	h=To:Subject:From:Message-Id:Date; b=T76wiaZvJqWMD00QUcLjTcrMSxqgDtrr6qkVCWRIXdKvsrawf1wRbLc9w7uwQWK3xypHMkTwkn87HIJP0m6nL4/Fw3CdvmVl9VwS6drxTSzb0gct2L44mY1R2//1i5MbcV9cktYEorEbF8nRujgTR3sekV7XeuuBpnmOFYvvcis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAdDkI+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAdDkI+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8FC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773120893;
	bh=tfGVsio/rbtOaIsByZ0oqMsXrnEEN+mjnjbE0veQXoU=;
	h=To:Subject:From:Date:From;
	b=lAdDkI+Y/zETvy8iScOGWZRev2++ji08jHla4JTJoXKG1ZbgwhyKrRJjc4uk+5enY
	 8/YiJMwwwpXUTAiAubx6KEqvY0FPT0sgUKwJmg3u1NwbhnSFgBJwUVPuthUvf4nUR3
	 vFxutFWHmv12/ai2fkUYimvgjyf0yhWrs+LrL8IUMR30qdCac4t2G3UDj4bQ3xFMA9
	 GkqB7cnRibzwyc18/Or1G+BSA7687uSDPDoZBlCXMRVo2CxuwRu9GNljdrwqGbG6N1
	 A5LzV76wYnsnSa7a2QjYtDkNxJ6UkbmVsnL1G2oONJ0b6JwGpPWCjJKOPrcAb1BHhN
	 00DFQ1Rp1ASRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955CCFCC9C0
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312089358.13460.7344725037972611860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc9e3714202f194ff7704428e7b3c9156716bdd53f47805695a59ea03ea397e
Date: Tue, 10 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773120893
