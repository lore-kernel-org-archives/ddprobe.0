Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BA242065
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758667194; cv=none; b=suyFaJ2Z4j2ah7UnY/fqgvqNq7HkybRk81Xf8N0E2ATs7HRtUGzgOypJZ15BtYFd/ZJC7fCt+vIYDUMR7LwoJfnDEfHFy3fqGqH1ko64WHDf0aOgr0Vj0QwMuO7V2lo4Rzo82VQoDEN848E/jADR0w83Dm27es+scnlfCVq00Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758667194; c=relaxed/simple;
	bh=BZh8qaJlkfD9h9v5P4I0PmojxUyX+CoxKcQ9l+zQf/k=;
	h=To:Subject:From:Message-Id:Date; b=AY9X1rfp3vcu0G/awBmHFYVX/+ptcl/CKJ50nKYEfVUFh2PZjGPLejc2nz06tnq0TVMSLc2zaojH7WIXdjGMYMqOCB3IspNNzqlOU0RHj7Of/snSXc18ug3puGc4Kqs9rNZ5DXc8YCwdwEMnY5KYJO5nUTTCr7eO8M31Nh70168=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzdYgcmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzdYgcmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F40C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758667193;
	bh=BZh8qaJlkfD9h9v5P4I0PmojxUyX+CoxKcQ9l+zQf/k=;
	h=To:Subject:From:Date:From;
	b=DzdYgcmRJmZh/JMwDNMQ6YzYiayPWOEtB48rewNAaXsoi2ZyD/C316AzuVRkeTrU7
	 wLqdD/ZToswyp/G9bvHL+4Z2veJhfo1Yx3RIoDsAGB7DxshM0ExYm/9ehaeM7J/y9Z
	 HtnYgf1u8WxReGKREOrHkXYPIjiN9BEBUKQ+JF9YRQL8IqLoR3s2GCxl44wF7oQTnR
	 1UPIyo+QgR5omc1F1Mnd7bpE6Z02y8/2ljWNpmxOXbKG2HAum4Yr0CTi3eyd9xSNnn
	 8w6XkdgKnRE4mmHMbsXRx+JKAg6YM6jFn+w22ZsVUbE8gLdnCPQMHJwTlooQMLCsdZ
	 JJOZHzmhDH71w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF9CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866719358.9525.2103301611086760947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c8a09a872aab8e4548f38ce34bdc2634a317f6302376e4198d64284775afde
Date: Tue, 23 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758667193
