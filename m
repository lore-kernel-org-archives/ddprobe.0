Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D26F4B922A
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792177234; cv=none; b=kMqFKXwC/1kzE6zkcxV5GbVKqK5IQUWlR6Z9iblIXs6aTiRNt7JKFuwAvrpl5xX3UYlbjyKcdTrW7GQU12tlKK2tY/jCsqpfQTxSC6mPUJFKgj1SeokEj7T18Rqof00v2q6FjzTfhEWhEHc99mf93iBSC3Spf53YchDjl4g5KNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792177234; c=relaxed/simple;
	bh=JRXYE+lUZilosCUjaqIPijkc3vMBrJ8MEUVjZGUr4A4=;
	h=To:Subject:From:Message-Id:Date; b=kYSm662mUmYNgvild4duytILCnxxLSUoc3SY293/hqMHAzPpQhx4602bFdDE600r7K82bYKAVr3jb8t4IBvWkYcNItzqq0w2aMT18f1xZRb5yFX4Kc0p6mkM+eeVM3JD7oeg1vbO6NyTM+kgmQFKT9bejPr2ku6X54DNvMA9CPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOcNT3Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOcNT3Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A1BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792177233;
	bh=JRXYE+lUZilosCUjaqIPijkc3vMBrJ8MEUVjZGUr4A4=;
	h=To:Subject:From:Date:From;
	b=JOcNT3PuSTUe7J23oC3+1s8+/zLsuymwnr/yt+SfJOSmBeBrlt2dLirwefvBQJ79E
	 Uj2/c1tUta6UCV5wIV2+PXxR7z1++YBVXWsFKACmPqG8nWQJG7I8C60hTu1CQybns6
	 LnCsvq4HKna0j7EW7XQmYTAE+a4rtQ6e+B0o2fvmzS/ign7YqshU95fyJbUzuNlhil
	 gxGXJElutXqZ4g62kwU8Vn6Ll32om1eIM/Tq9JVDxgZ1bK4vxWoChQis9DjZVQll/G
	 bCCQYs4pp3lm8hL3ymS1Dvsj5GVvdL4aW4cAYXBzDhVITOgVy0LEFsXGd5VN9hELgX
	 WI7G3TwuBrlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5FFCC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217723370.31864.15726948246133769609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb47db170969abe714d5d479a4aa31e2312b1ef8e61176e3701fa15f78a47de
Date: Fri, 16 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792177233
