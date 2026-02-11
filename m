Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32267350D55
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770808494; cv=none; b=FkxVPuYkChDWcPtZvxYtt0mNrroKGg5CMaqdkSOTRU1eSQ2u/uzCFyQNRM608nT8se2LMhhbpDDdapYQqMPztJ+MRv5LFnPHWFRf5IRSTARdd2ky5zDgB8Isu+ps5biE0z/mvX1HmjXoAMbmJ9qRM8EbnX8uDaXTzqr69Gc1FFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770808494; c=relaxed/simple;
	bh=93YhT8cwXrYr171lOfRk5hhcdZd0eiUBYncALfbipUs=;
	h=To:Subject:From:Message-Id:Date; b=LVj58ogulGE5BJ8/munDhU4plOnfOea/H30ZsoMR9NQOtxT+Wns44QqKb+3QB1utnhM3VSXWIUKfN5EUY8vVT6v54P0w6YHOAPLwxQ3/VYWQPkDVK57sDdugWdfc/Y1M0KiReour0iO68kSte9D1nFAtxYB9o2U/B06l5DBpgQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvJtrZy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvJtrZy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFAFC19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770808493;
	bh=93YhT8cwXrYr171lOfRk5hhcdZd0eiUBYncALfbipUs=;
	h=To:Subject:From:Date:From;
	b=pvJtrZy9G16sB1qWqXAGJf3FrASx3XcrY2Ql8qwiR8yOiWLzEdl6zSSgsd3QrhNao
	 EHc5Qs1tEtZUBH/VxmPhvxg1p6eOvwvLleEQgg2ciDOy2CdbFn+zURnbMKZY5EKpoQ
	 TGw0iQ7aQdI/ZYzlFp0MSM2dEh7yRB/5ihNKjv6KBL7zGl4vA9zJ3eq4DmaM2HiE9b
	 iXWyQiQ+cC3piIUfMWL6+eQpBCWaz05PBaZuZg/Xg+OcN6yjKF3RuMRqj851+6Qz2I
	 Mc/fnzIqcp7rbpQnQZCAtAQwLvhiYxJ4fFWdQ1cvX7+exSkdBcaUsDiegiNFiOI+Qp
	 qX1SPjL2yQyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7C1E9E2E7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080849363.7122.4963143250109135414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c26d7b7f5f94c6c22714fc8a0ba2d992bb90596573876ad6751fbfcfac6d2e
Date: Wed, 11 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770808493
