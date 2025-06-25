Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1873711713
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750817394; cv=none; b=Z9KuGsBKCCihORxPKFwzMlP8P9d89MFbboQeEacA/edzdjgFOkdd1nph4KSTH6/av/AYNSP40llbhAuzCWHyZDtRJuQ/+BObLIEMkBMr+VTemPXwaTQFnOoTsVCSom0xXuqkf/j7ed0Al/m3gVkjJwKpfqIDGrxJ51ENWnoKv2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750817394; c=relaxed/simple;
	bh=U4hNmJZ7DZxlw3clf+CA2UWIZFaZJbUQQzDbAj0q6rw=;
	h=To:Subject:From:Message-Id:Date; b=uh72iJWYR7dsWMzJyvUEMrtI+ilisdug3hHcyeBg9lUwtDtOaLBIxbk9AYEOzInJxqt3sSoKDyTcX+U4OCxB+fHltyIcnWGVAfYq+/mXpxV6rl94u+IpltNqq4sV9UvhJB+JoEvmA9MNGS34p1bQoSDpkgXj7Fz3MiUnuWpKIDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTvF5+jZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTvF5+jZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F5BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750817393;
	bh=U4hNmJZ7DZxlw3clf+CA2UWIZFaZJbUQQzDbAj0q6rw=;
	h=To:Subject:From:Date:From;
	b=JTvF5+jZjG/BDGQ95YxLGMMINaDP1MwZl0SFfKmEy+gWDGmiauq4kR60tpkN12yZZ
	 BI9izH9YpmUoPxJMWYO7I+LE9vzsudJ2xh5nR5FzSX94cRStLcDC0E9UAyaoGmMUyg
	 cTi35CqMriHBWByRDEFPsGCYCA/gswxBxFeh9Fy1AejhciAtbAbdR2jNtfNKNVgVnO
	 1u2Gh093vTaVopPexQd2zGZZedGx45ROl06hn1BNtBXYb1oU6CRsxLBOQE4aW4En4Z
	 sVHZ93REj0W5HpjVK0Tn4p3SBJkc75s5p/A12QPdv917LSORpF8+tEf/x9NO7o8uD6
	 O/MTH+9Xioprw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D5C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081739357.850.4640703666888802467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c953dc5886c5309652a9134946c8465689c676bf43fc91194a8d9d3e09c7806
Date: Wed, 25 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750817393
