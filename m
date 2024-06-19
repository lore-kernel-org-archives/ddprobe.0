Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85DADD26A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718771363; cv=none; b=ozsYdoIjtij6zVfNG3LEjkMAKNqaRcp/kHL8NxCsqgTmNxiIFnVnOSMEsL4+l7gWfs9oNDEokiay+2PFhdyyiTN34x1jfoXRw6gfWe+amEgP9lxicjEbq01fgvNEHmY9luuwo4f3JYy2yHJOgPMc3RWUjKfWAv8EVdkKYaJqmCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718771363; c=relaxed/simple;
	bh=8m5ZbrjjJ5kdkXiUTHC896M03gKLd7a6HIlpzBihuqo=;
	h=To:Subject:From:Message-Id:Date; b=Epp5ccVCgzaQ4UvXfY0U8gBAaUKY4QoVKFYyG/GFVKvNyqWWo6PqBWtYCB3gTzN/e7FMgHvcB6TLdAzKHl+i68tM9UySi2Q/LRjGPkIMEjld+z80dE3LB1tTHD1VgLKEXaLr+xFgXUSBVmzo0TT7IlgKRsUg5w3qqd/mwPakLHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5P08zyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5P08zyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3A31C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718771363;
	bh=8m5ZbrjjJ5kdkXiUTHC896M03gKLd7a6HIlpzBihuqo=;
	h=To:Subject:From:Date:From;
	b=g5P08zycVmjUPe46alfFNzpRUsNlVL9cnGQmGa1XDDUpMHz2LyUZB2OhzXyJ61fjI
	 w4pX2Q15Cvre0Bc+vyGUh3wkYqM0C3YQLywaTa+RXmrWshWSNCDmjR79166RIue/dF
	 SCsf5k+ExwRhbzTIYrVnh/jF0x0u9MVsKbz7sX1YbfGwGGWWEpqht4Y+zvqb093FFD
	 qbtSb/BHKPV0f7+nN+1chQq9v09BbFpkEdmsdPBHCMZsuOMVv3MQkctr/DKIqisBn2
	 gnuatJJW5v90wiyP5t95WXjfZDEzBHRghqaqYldBhknm0Rl9nObsfngm3jXREgvD3w
	 hGuExOZ0ESX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3150C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877136283.11191.787394102273868660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95e27819a86371b76578531b03f2571a6afc400e138e6519737532b9d6fed85
Date: Wed, 19 Jun 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718771362
