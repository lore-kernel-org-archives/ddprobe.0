Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88BE45C6ED
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789502434; cv=none; b=B4Z+ponEemp4TV39vwd+s37DDu3VEaXGRdNYbSkS1JfWlxTS83bISNxEnvGtS9lGcXUJN5Zw/CURHdgyE3yr64qx801598pNdThSjW59AVNgSTQsS3T9ka0YuIfCCX6docFGu7mHbUKaUYccYZt3sQUJkoLGBZANFfEalfV46DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789502434; c=relaxed/simple;
	bh=dUYkUfcZL74IAEVtxK+wqjOJsChnwimhORjxVJxomgI=;
	h=To:Subject:From:Message-Id:Date; b=HIHWgt9I2Z8pfNA2VfTHu932LN53MheUp3FCOEAbBM8lpWIyk0t/AMYFFe+lyNw6snALevFrD68NqYlU77GYp3rAWwSTREbKWKRuEMk7FfP43ODHYEGqNxFsXTWhuGk2d/BjiWjAijU3vIOq4sx7qpadEAZV7T/bXpzDmAAHpQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xguvv4Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xguvv4Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF0CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789502433;
	bh=dUYkUfcZL74IAEVtxK+wqjOJsChnwimhORjxVJxomgI=;
	h=To:Subject:From:Date:From;
	b=Xguvv4DjzKznk6l/pnOflVHYMjeEB6Wx4imTNZcG7G+aR+2sdHfD0xe50YYPjBjDS
	 PSG+gHG42LRfb9ujqwHQSU3Ee+4pHeAqqfSYbAs/FKP7zJRnnOF5QQ3Ec+bUOw9NIM
	 5Qn/7vmKVqpATuihtCGAZ4DT9bkOXy4E3WFteo/dzG2ZGkXx0bo/VQH9rd2kJMbVxj
	 2uYDAHP49TRFKovMF3J7wCOZJ4doz6Ndr2JbPBZa9I7cyrCatmIpKRjDoIUhog8MW3
	 k0oQWkp35cUM6wfQGeQiVyK1LySLbGmJPYOchc0x/mQHdqEOcFKqBqkSvhARsNWaLk
	 1zsa62zheP/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E93C88E7D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950243368.27266.15559136132882832581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7cc3514ebe95a2ab4354c84f279f479bac05e16ef13004df8a240c84f31145
Date: Tue, 15 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789502433
