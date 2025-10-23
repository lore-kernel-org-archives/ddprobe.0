Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7FD34A3B7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761241194; cv=none; b=il9qqWGu40FUc/4kOQM+V2l4Em09eSuh8kCnUTL+lHzamFsAoVSlYDj4EeAkUOfe0weRs995gm5p+zSzpjigiisRbzWtW6TmvJhYLELba6d+OPbh1sUXmqWr9sRQ8riD25GYVoRDs/18LE04RQnKHRBBzE79yl/mdU5Q8G4lVrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761241194; c=relaxed/simple;
	bh=syz93ICpKnNEh8eTX6bNg/SPnVIX/xAKICkXQpjgx/A=;
	h=To:Subject:From:Message-Id:Date; b=SSoCPJSIEA0sEFQEC9Lm5UNcTWkNmg/u/A2jGa8hnzVEw+Bji40SuFl24CGWJcK6rc6jL62kIPoZpqGavq/HlPE1JfigbK3KzTG2su838TBEMRnEthBfKY6iMc5hbeUNU3KvwSWq/RKrDuf/0mC972CNntpe7E9yEWtvD3/Swhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO94KRir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO94KRir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE281C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761241193;
	bh=syz93ICpKnNEh8eTX6bNg/SPnVIX/xAKICkXQpjgx/A=;
	h=To:Subject:From:Date:From;
	b=VO94KRirUwcKorSh9qWEQXe5Q22kvusdD/S3huSAyV76BjjO6VhuUeVvUsjj8D+Pw
	 2fLCS4ndZJgVB7vdOAyq7S6gwyLzgDf+zrH9JyysSky2epZMai3qaCchcNgqqFArAf
	 oo1vKpiroINmlKngbDZGGC0jU/TsSXvjhZJ6OME/cYKnXK2jXGsQMGZaLxHyFRU0TB
	 xJpgaz1llADScTLE72657ia7aLkTFWMxJgUO8wcdgcCuwemLDw3MhzuFYratj99vMB
	 YJ7MWaDc8Q0S2Zltp/QAhP2BMKWrfbUqMGm+0MFIU3SExJqa1IluWxDu+c5wxc8XVH
	 rbKuX3qvooRXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC1FCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124119361.8378.8207265082753822753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bde20158609afcd78f0fd7fbea5e10f46d702b421955fb0eb72da3b778ebb80
Date: Thu, 23 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761241193
