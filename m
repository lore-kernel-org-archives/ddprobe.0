Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377811DFFC
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759897194; cv=none; b=Api+1M/tR2Pxvqe/mlWIqZLHa71pTvToJ/qkF65lXk3gQ7xoXQWDEhV71uDwTjS4+rsVnIPAQgn5iBNhhcBXOcq7NoIe+ZRKa3b/eXSXhL0F+jQ/EugIB5wibq+f2+PSaqG1Y2koW5qzaTaMnKYdiUOM2bVUAJ5I8eKu3tX80K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759897194; c=relaxed/simple;
	bh=DenG573WzfBshq0fpGSm6+QgqKxLJn8uLmtnLjhSP9E=;
	h=To:Subject:From:Message-Id:Date; b=PukpBIiNmOgnV0orbaGt667dwPQnRjbE2XHIUQktXgMBr2zpc2mAEhAKhoqo5/vYvbovSFqxp1rfmU/Cj4iSi1knivHu52GMzvoWk+i+lt4vf9IvO6N6NhdtdiGC+RF5e9eCrG8fnfoMRtn4Kyc/VogVLzJLL6YXrzxzhHnQBZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW7bNJ5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW7bNJ5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2827C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759897193;
	bh=DenG573WzfBshq0fpGSm6+QgqKxLJn8uLmtnLjhSP9E=;
	h=To:Subject:From:Date:From;
	b=nW7bNJ5Ov3V2LZJi8MvFVCSgtYLa9qVkTdU/qluC9HaKWLAKoydf0+yHiE8wXU2xI
	 zKY/mvvUsIGfuava7ZfowL5Us/3QGJ4//mXxN06olJIMFLuv0i8a4e7Nm8DZgUGtHG
	 M0zWJGnpbfdZpF3kAbm4cT8F80g0qQ1rtWReyL4J2Nw+ECE89uLckJnmSpNfZXWOFU
	 U1JQuEfp+G0L+nQbbf4++EQFSRABj4BFp0daIGKo7hb4Srbe0mcUnSwS1sTE58adIe
	 L7S/n5gCy/n96L8CPRss9bilKemogNk3b0C3Hvz7BQTq4QrU8ya047yDYgFXbEgn+A
	 ksLrrbIfUqI3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEA2CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989719359.10984.14711991959895286106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82981e71906691a5b576cf264873526743335f526483792b9a7e6e7789ba8b20
Date: Wed, 08 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759897193
