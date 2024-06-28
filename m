Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6AB1103
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719570863; cv=none; b=NPxUZ042mLLUqlst5q+oW6YTYJ5HRuefAOOwT7EdfvV3c9+8pHJfYv2MvQhSexPYaUJLtKCU6Rr4Ie341QChTWGDJO1/ZXghm1uDSr25X+3pcelxeipMuJRIpd8Ska8DYxgkOB4M4VjNjV53VTfcaXPpi6t7niWFDpibn2CIELA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719570863; c=relaxed/simple;
	bh=TW99qoLx1//dyAYdXNghsa1MyLitWAHYYjrZua3WuUs=;
	h=To:Subject:From:Message-Id:Date; b=WDYy2S1rhzYWaveR6PqhgIQFcKwcxg8V/m66wob88qOM+nXJmuYv3tzK/XAntjSBBQ0CeD18pOMBBkcA7VWMkB0gGlZ09cBhX9SFAXBZ34rb8AVudOAOjgPH+qo6Httge0cNh311nAvCmg9Mm9NXJT1HNxJ1gmlVR9p0SXDUYaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkYss2jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkYss2jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E32C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719570862;
	bh=TW99qoLx1//dyAYdXNghsa1MyLitWAHYYjrZua3WuUs=;
	h=To:Subject:From:Date:From;
	b=hkYss2jTEnzcUba37Y2xnSZwz5wlDLxkrWkciJQfCt/iAQ0dRIgHmMcPgp3SQIzlm
	 y6eK4hlV45PWfTjVUIvzwreZOdT7JcNrHCf+7t8K9O7/bvrXz5RzQ9HZ2ZAZ0XqJyo
	 LNvgl8B64erFSLXwBzsFqOwN2nXPCqwQMCZXGr+gzCOeVJx82sx8Hd8OE2fq3xLWMF
	 auLoaXAzCnqeSa82HWLVLNB/B90u8tpbvf6IKk/d8ypuYno5d4DT2Gm0KKyG5JTm1g
	 2MPkY//FONJapJz3eXo0nlQk3OeScJdgVz/Nlw4h8ZSrhOtxyGFEaAPo4X3o5O7To5
	 Ya499MSQ605Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FEDC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957086279.6383.17292215233202625368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ceb81cf8acb42496e04df0eae011450bee967eb8675cb507e71cc0d7515872b
Date: Fri, 28 Jun 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719570862
