Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7732DCF61
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776581854; cv=none; b=VIdB30famyXAfIu40OqkbDrIGRjojZAc/aG4C4IQNoLFQucQqlWouAQ+tgsZpUZIOeiq1u5KkBAzRTt09j3hYlsHtJBuqeO9fYatFUO1bbv36k5Smuj0LtYkWMnLGwAbv0O1DmoxwtKarrXu7HA/nxJL5oTs3ZyarVpbGIojCws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776581854; c=relaxed/simple;
	bh=AkV9vxHK+BVFLb/y3BzzEsnKA4v3LQOEfLLd3ICxI14=;
	h=To:Subject:From:Message-Id:Date; b=L9mbND0zharOGNkExWbY7MrW32s7PikYYE8IJCuDF0ZwKI/GTyDaHC/8C1TRoN2Q0tHqTUGAQhKF3J0tHmlRY5Oh+U1vXp/Mk9CFHm3j7G2ILWSBUbhCGNp8dqcUoqYrW9GJh9z5bkXbPnvFE1BVnxweWh1MVZSb353p1wvVDoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlpR7Pti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlpR7Pti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38E5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776581853;
	bh=AkV9vxHK+BVFLb/y3BzzEsnKA4v3LQOEfLLd3ICxI14=;
	h=To:Subject:From:Date:From;
	b=LlpR7Ptikf8znLz4gceExvyNX2kj+PZTWnAFPwL2x8utqBL4YW/qDgSFanH5Prb8g
	 jaIeBBPDOzKKk3z96w3xnbUBMkia8Y08Z4nKFllUo/hkjiJoemlKVeW8ZI7phL70WO
	 0rc2agfgIJtTGXdhi8Spamx0HHzFdjn+17a5z51IxSQKqtSODtwnGdXgn0pKBaUXmY
	 DrsTyJXzCBJ6arWv6j4T1hD15dc8mjMMH+Cs5zKU/qfsUVWziICCMGcANPfiP8Ch4O
	 Lx88AwZV2iegDgwb8/+Ow6zgu/Ki6BrlFJXtEkoGfVJ9WJvHiLHtVdXxJXDhRcDIP4
	 RLlbZ+aVEpNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25F0EA718F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658185369.27935.1380487215726590005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6080bbc74dcc56614dbc477b8b73e8a43e6b149c94b54cd6f9f0abca68201307
Date: Sun, 19 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776581853
