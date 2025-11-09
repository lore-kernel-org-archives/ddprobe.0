Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F05E15667D
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762685994; cv=none; b=jFFLLG5SWWMLUfRHw2lHu9M4OSzBWQCqriyiaisvnCZfk3j7Abjc/fBs7RydmSdkcRV8VRgd3E3jIiacqpbr3pIQJVPjMgFDDN4Q8vA7BgaM0sIvRvzWkUqEBH4Q7fGWXNleFyaNep4+fSKWOxY7rc0oBT6n6ZrlCq5sZYoE97Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762685994; c=relaxed/simple;
	bh=e9m6Cj/tUK8PFvliAOvTkvXn398fFRoEhndQ9jXq73o=;
	h=To:Subject:From:Message-Id:Date; b=aerPGsFH7tC7ArxkKFhhKeoJ8t9Q3Roof6WFfL2ktr7xlUgj7W5RQqMvo9lh6UKf9WqZmDl9dXJ/yprYWOqhw9Nx/WjhohMy9VfDejDrq/ChpeToPQ7U6mp91akrJWuWdedtLcP+Gdlb3EPpLBEiTc9X3DDvtjRqTLCmL2QgF8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqIEI7Ky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqIEI7Ky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F57FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762685993;
	bh=e9m6Cj/tUK8PFvliAOvTkvXn398fFRoEhndQ9jXq73o=;
	h=To:Subject:From:Date:From;
	b=FqIEI7KyCbaZ8xzh+0WXhFILTo8ctYy6uHSN9x8gQb2AKIRxY2Ngeoy7s940VuI5T
	 iWATT8ysET+mG1UJ+ZCJz2rgcueHGC14eNplcfzmF9HQfPopNQsXmBzqZMtz+U9aWt
	 s4EO4exH4TUeBqTQZD6d5JSPXDgPjWDfhcjYvfP+elP98iPhCxj2LPWXcfxCeez42r
	 RiUgHJbuttG/1nq5tJcKWysZJpviIkGmTxJ692dXaHsfaN881nID+3T1ZCHF510DrC
	 7ZZ2Zsi4cpJHmwV5X8k2cyvVcC89Dl8TOdtz6FhAH7obfnl+qHVNNcPllsc2NhbNbd
	 LHpFydz6y1eUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927ECCCFA1E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268599357.10161.2904003334885719623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1a31e74a0a0cae544c649ed609bd6a905156c123eba33d24898634ef6b1b1d
Date: Sun, 09 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762685993
