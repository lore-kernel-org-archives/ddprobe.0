Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE19248166
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760006394; cv=none; b=Nx8VPpLIF66gPHqnoyhATX/8hKrYRGwdE27OqpmEiuNq8o1sdj17arUDB0GDEauR57Jg7ViHGopuDb32PATRuwyp2z0/gE7X1Y++nvwk7WdYpm0EmaXR88mFARbIpjGxbH8P49JwkM/2Iuy+D5q9eR9HNg82sKA5jJdvHOb/Eps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760006394; c=relaxed/simple;
	bh=nLVElbuf2RcGDdvfiAWysZzjHGGeUcaHqGTLzIzcB98=;
	h=To:Subject:From:Message-Id:Date; b=ooyWfl91NeJrkep5oh8frWeAAp09fYHd5yEZjNtsi3C9B8yrumqQTT6fazujZOEL1B8T7jK0iUzkIVeeebOMFCcR1JRV7MXHlFFK5JL6WH40AGtZBiIZtfQnqae5oWbmdQvlvaInzLvbfN4DBgyAlKMIXmSiGEea+pNXfShj2QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srcBjDvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srcBjDvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A1EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760006393;
	bh=nLVElbuf2RcGDdvfiAWysZzjHGGeUcaHqGTLzIzcB98=;
	h=To:Subject:From:Date:From;
	b=srcBjDvm8ltd4yJhLsm5fcmlI+lSwPTTK4RCPwfTVgu0quLZGldfzlSS2cIxvdHWV
	 yT/cQxkvVSwC3sgwSXYttYb8P8fYN9zCOd7uNzRiTeSautPb03tj2CN+we2ElFTBgK
	 F5YFqfg6hvuawN7p1yzTS2Z+EtHd1gf8MvcvesTRixlFd08Yc3ovypU8hfZjcO+x2u
	 QYLd189jJ9yWH7boM/0bAI9/hrvLCvOOTd6AbBGtZPu3SU/tOoo1Ae3Ib+AjiV/Aw2
	 3DcZv6VcUNq+T2nfpW/6leygk9ViC7fYgM9YzH1UH1154RWOrknseJmag5/Kjd1XDS
	 W7LHxW26ISaIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90917CCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000639358.30991.15690418965014208584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c65dd94057b9683fbae0d8368d6680da973f41f767c7905dd092dadfc99b0d
Date: Thu, 09 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760006393
