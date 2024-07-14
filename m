Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBD98495
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720994423; cv=none; b=lzCa4ITSTlH9ASkw1ac7T7xxRsQaXZT3gLtgYTTATJ8gcFYjpggTuLg4LzRm3o9C33Bkx3c8RDo7lWeOL/q+MZN5aS5i+x/4LG88e0cnT7qV52ZSUe5LGn3u+24VDvjNHoonUlabnoN5swW1AzB+OJaRvXjX2kdZNCbrx2ebX34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720994423; c=relaxed/simple;
	bh=hbKZHV+JkL/1xoCaY0emxR3SMSTPD5wHTDjCSdtnDNk=;
	h=To:Subject:From:Message-Id:Date; b=nJEaR/tgZEZBXErscDa3CNQy93OsTtj60JBzvtIDIdQ8OBkLfFDAsQ39jlMuNdrl66CLswk6Z9Sst80RZJRF9FhQQ26qN7KsVAxDLywyufQrCfvxlv0RG+T/Y8P7yf+1wmu4IZGA9WHatH5gLa08zFgEVzywBXrHsluXrk/fd6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfZ8gDsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfZ8gDsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4ABC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720994422;
	bh=hbKZHV+JkL/1xoCaY0emxR3SMSTPD5wHTDjCSdtnDNk=;
	h=To:Subject:From:Date:From;
	b=RfZ8gDsXBBZMY5crTJOJJZhB5v+NJP3jOSYx/RoZVVBbkWlt1vZN8xn19yw+D0NLQ
	 qLQNJLfZlMdwwc0+ulS0wpBcS9uCTRoqsW8/EvCod1hRIuG1k6F4S52VOFn8nhrsUu
	 YUCczRIyXDg7cpvijzedCAUF0RgUn2LTMyU1DCQe4VGLYAOWsiT66bg6QPVmhdvfBM
	 nBj98wVVsWgKFnnWtuc2PHyegrw2r8NE3Fi5A8b0Ty7F2CfsSq9IEqMw9hMyV2hi/3
	 PFa/UepOCXjz+2OB0AW5OaAiYasW6BFjYwOhDOgytSH3rCf53+CcUy87Ae+tFHYGXT
	 qoOzCxw88zo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53F8C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099442277.7898.6070332432960859717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f595e98b31b39d7b07d2511fad1143e0d1fea35a7332d5758ea12a49156f80c
Date: Sun, 14 Jul 2024 22:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720994422
