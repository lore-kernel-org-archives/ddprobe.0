Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE721465B4
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763274654; cv=none; b=uY+38g4tR50MiwuWCwKhj7mbKuE1wYnVCl9T6NIXOAWvGoXPBoGZbaaccIjSfzCeo8WvVcUNN+m1aGW9Ui6FfGjzyPUijYIi4ZA/Fn/1J8jGHlChkpX4NUctTiKomxNm6T8rEwogDzRBEhBsh/jNqcGRDfUzPQMuParEpCDsB3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763274654; c=relaxed/simple;
	bh=Ypt7dToKvVBsjvPdoULxt74nxItl1T1HoeD07i3ymzc=;
	h=To:Subject:From:Message-Id:Date; b=JJJWAo/X+397Ph16DrQaqAQq48dEj647Roe5JEdnSJ6JdCY7pIKSoNgLA5V81rXgkChB1TLVvxweTD8cVMHapHV49sFn88LW2MkKUpj9AjJWqUVdU7MenbcDUsBxNFoqQOgy9GV65HA3G5dzsWX1btlhOqILxljz4LWQqM6ytyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXwEtR1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXwEtR1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBD9C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763274653;
	bh=Ypt7dToKvVBsjvPdoULxt74nxItl1T1HoeD07i3ymzc=;
	h=To:Subject:From:Date:From;
	b=LXwEtR1dG5eeQvXt95GeMWFA8XciwTtZQV44XztTLqFFX/CzAjiXl1WdwWlBgx32p
	 nVLihIJGfkeztFeH9VjPj1Y9Xo+NLYNve45fqJc77xCQiUj8VpFavoqVnH0L93eVZ2
	 pth92J1X/d2oNENrvQHJYqgWG1OJhNxp3G0Ud6SLhrcrsn6Ye9gjLUB/mU5gjQmHx6
	 d09qlu1P7axsh8Vhsk/e2WOBNQ6tv58E4aPnUv3TnkQKyhSZziQJvTfUWKDi+Qa2Nw
	 eF8+WSArRw7j4CLyJAN99NaNZ+PSOZu1HEXVbvyGjTce/f6hsnfq7zfXtCDZIeRLlm
	 mSSeM74qmEazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD35CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327465360.21160.16955153665135153847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02beac8cccb3b8764850d46f440d4672b923daac74120f1743487e2835cea0d
Date: Sun, 16 Nov 2025 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763274653
