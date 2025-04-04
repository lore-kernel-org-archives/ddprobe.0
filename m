Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF302E62A3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743803394; cv=none; b=PUppWtjfFFpLrvfZk8978s2wPlLkluMfyVAMEhXdvbC1qYwC3sH5diRP/TDoGBfy6dOqUQd6/Rr6FQxUdHL1Ypsy+raTusOERX/3x4XW3IN16vUTks9VjXQb9hbpeOHL2Dvpizr/1MtGpPMO/+aMKfgFIn8gRIeks9fHj7Ewi3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743803394; c=relaxed/simple;
	bh=c9eHB0HFeYreBG/brH3SpMlyZDaTN0GzWgVLrLn730M=;
	h=To:Subject:From:Message-Id:Date; b=lgW2m9UgggXwxiIfef5+sY7A71O8qcHHZcXCSDl3PJzIYjShdQRcssZEYslxHH18REmGtPzLqqMagjK0iMkC59xshrZ77LxYTho+vpIbRbfZsXtu/itUJV/DprsyKPddXc6DZZ5sYie7kDcHHZoJ+oUaKuwN46ZfrbG5GQUaNGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDntzvuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDntzvuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743803393;
	bh=c9eHB0HFeYreBG/brH3SpMlyZDaTN0GzWgVLrLn730M=;
	h=To:Subject:From:Date:From;
	b=WDntzvuOBNagXQGLC8VxlxzP0/BFLTaWEts0wOH8MXGYLaICmOwzs6x7Q3EhI0kjr
	 5jp36Uog9wDf88slTMb0wZU46wjAAYinsfL7P/q9AldeVK7HdxX0cU9HYUCrENANS4
	 NEH/FZJlIiEmncswjymC/ol32YeoVwk6UO4n4s0nbb/U5mdUzA2xNxl4XXjZgylOQ8
	 2K73PitFgMOCl6BqWmKk4LesNxJVMvE1Zch4MXYJLdOQ4yr7ZuNgeNv/FncfjDuXq0
	 ojh4CFVs2Xm05BDxoe1V6G8bMviNfyhU5kUKM7dmZomjGqDQnza9XnYc2ygaqmpmmA
	 CezMyGTwvfanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380339358.19423.13940443488656367052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8934e6b8cd87a528bc9211b3afe20fd17cabe6edfb7004fd1f7f5cc9cc9adcc
Date: Fri, 04 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743803393
