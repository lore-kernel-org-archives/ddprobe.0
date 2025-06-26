Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317451922F6
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750946994; cv=none; b=tuURq+czTSyGxzF1pkKQOJZYMF1Mwpvtm1UJXcaxH8evZMkXCP7D3S6jGLwWT9gmOQvtVcOcdXlqOoES020hISK/dE0CEa7rg3xapMucw8bBIyNtlZJ08tyA2hIqDW9d9uyIsWZ9BzbuZcsC7ZcACXklobrtHS7AAIXJTKW/BQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750946994; c=relaxed/simple;
	bh=PGAb1vKYR1vEa1ADDKVfKufaKuo8VQ8sMAewRCnbgk4=;
	h=To:Subject:From:Message-Id:Date; b=f8wXiXbHARIf4ly34gV50k30vv4lxdbrTuDGvALzNObeja8G649JwsEAYtS3A4GR6S8H+QiS1cUGB2Dqo3f28PHMSEMUtgmR4xodADPu8el2KJGfEPulbpnJxEJWlpXWiyWk7GOFCxt5zlBiXmKlmUfOhoiQpxv9BEmqznvuW5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMsR4OCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMsR4OCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCD9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750946993;
	bh=PGAb1vKYR1vEa1ADDKVfKufaKuo8VQ8sMAewRCnbgk4=;
	h=To:Subject:From:Date:From;
	b=lMsR4OCAGjICgluS+ZUowo7HFOHWN2oLriDRlooJ1P6/STscCM/vbI3NEbH1RmgnD
	 Yzsod9RDrAOX/PgW4UwovFnRuOVxTZ4TD56rkKvkzeZKIYuH2KDl3c1jZHzOJDyhIs
	 Sz60vxOEmTDSf8JCflAX12xYQV3f3fFjTuWFuPrRfxvVR4Y10exHtYc1k3Y4TUAXS/
	 16qbgSuOa7cSIWhfd7u7ETY5KRFyd/HKIy7L6F/dGFhgHMgB8BPTKBo9+5Mr/3Qf94
	 cpbkPak/hb3PcqRl18QVX9NoB3zpbXFZt3teXCYmLMw59GH0eUGKDKciKXwgmWhr5i
	 wC3Ia70AnWHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDFDC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094699363.9596.260926874590485293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7ca5d84688494584383a13e7ef26c1adc1190259ebaae1a9daaba5506f96b6
Date: Thu, 26 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750946993
