Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5220A34EF06
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770813894; cv=none; b=NyVtQm9QDq8xvuWUWIwKClUnxSGpZI6yYRPHmw0laYDUuLXvBZWnPBdIIhK6jF24ikZR+HjG0Iuk4jgGiSbAxrcRUo1rHf3I/gh/h5FNASHlhv/TT0tpkudXGLcO4w8vV8deuUunmxQ9Zz97T1MGY/9gwyPwnMI5+SPKbl04fCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770813894; c=relaxed/simple;
	bh=SPzIJhdVqNfMQWV6Dg7H5vA3b+Gf6uAFhHavvLWd4Is=;
	h=To:Subject:From:Message-Id:Date; b=MOepMk+BMNnvVRAsRvsuO7greG9D9/07zzLJ8uHi912KxECTLVVNyBlr0Bf/7AD/rGCogapmYXZRw8vEMlbp/gDvEAD8SYTe7b29qcGlCyc+Fo8b7HMOQLXOZNcA+fOwHsdAiXa2s68VRQogpN+afrd4PcpO7N+Ys8+xWrtFQGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHcW3wn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHcW3wn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C1CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770813893;
	bh=SPzIJhdVqNfMQWV6Dg7H5vA3b+Gf6uAFhHavvLWd4Is=;
	h=To:Subject:From:Date:From;
	b=FHcW3wn8Sx849MsO9IBFu5qyBqaopP3+j5D45u4sDxbCxdlXCVujgSH/iu+/Rj8/B
	 kClBmGN2EWdXhBeaG7A5lotBfxPY2vRHHlq9NV85FivVBvxP+WHmkrcSxoNubq1/uB
	 C2sjooXEkoYlJfmwfgJFO7dXH1dd4V+qbnnun7KGtzY1/nRgVjn1I+QjX5D5N03BRq
	 DCKWIbqcp+tLkOvwtDr3xuiio81L1YHvz88QthmmdfCz4AbE6A5AyIROefvUlHPhlL
	 Oxz8Oew3EhhKXgw34p/WvDEi87f6Gx80XxFfSNZas3jhVKBMxxYmGX8T37Mn/A3bxL
	 LqrcFQBfs8qTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B65E9E2FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081389370.4933.8196699311873470419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978b93ea8184fdb5436845b6e788d8d648be363d8da0f90f0075a76c0e0d5da5
Date: Wed, 11 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770813893
