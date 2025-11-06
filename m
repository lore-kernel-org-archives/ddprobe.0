Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1384134F484
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762458594; cv=none; b=hM1ByS1scH9Q+0rdpqJ9shNm34YQVBgpV98x3Q+Zve/QBitkzIwC2IK3RALYfEfgyO3Ezhy33l/OFnAn96la9mqehSpooVD99lpCB2HV/9fhZQ+KQ2KFGFbwl1234nbeZvv7s/Tqu3p6N4qGq71WA7JNL4dNddkcEVB7LFs1Q38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762458594; c=relaxed/simple;
	bh=TUlLZDJdqcN6qxvPtM+K21UT0zP4YJXIINZZPRCsoXA=;
	h=To:Subject:From:Message-Id:Date; b=aD+L3byROXsbyq+dcdmsbQQ3p8XHB1S26yK5C8gw4GSlQ76cjZeF6IDe5J6+3XH4mMZ6giwdIek5L1ldQJJj1wepYI12pK2GCy/uNtrDsIO+VGupdjhLubkbwvyKMTUQUfLyjK/oT5fyuiOaOU0NZQrHHX8gsaWfd1pNs6tnRZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOMicyyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOMicyyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7351C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762458593;
	bh=TUlLZDJdqcN6qxvPtM+K21UT0zP4YJXIINZZPRCsoXA=;
	h=To:Subject:From:Date:From;
	b=SOMicyyEQCz+pNX10IrPt7v51eoiWLrtU3YtjuWHkKHy46fiV+SdfLQ1xLOIB7vit
	 ERnUhkmDuIdrkKvCO3ptMCuqBFJCw4RTPHxhBqQKs8yG0OeVPA1O82NHKI7LIXa15B
	 DRJsCH6DudfOvYzc5YAaK4TtEbxpwA6lyc9MrB1V9BhZjUDyACPrnte9Ns1DHDltEf
	 VpPClUOjY4HY8k5X1TIBmcIJO4ST4nNlDhTgBI6iYJ5IWOSTEkcnD/TgBuc9BOKZY/
	 czMptmXYQjBgqZ8ybYjo9hq/nvMeycjw6t/5Ec5WsmQMUdqmaFt799OUxtCmkHQPLV
	 ZzO1MhgJK1kDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960FECCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245859359.19428.5202685300879351123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d3a26d4fc4e8049ac6fee8448b0b61e8df7db3a177899327250d7d0aa9a486
Date: Thu, 06 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762458593
