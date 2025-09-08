Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2FA25771
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757293194; cv=none; b=cJ6eeGHox0CRsaSyx99lR6gv/upqFfg1n+P//6Juozm/SPf+id3MUMWQD8CRrzUuigTFO6DpOopdaMVZS9qFvljjPtJq8RBsrt+1FmuulokZEMLv+UD3mjfFj5E9v800LXD+WqfZCgVkhuIC37Aq+3XzYTTL8TDcq7ZqPtaafvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757293194; c=relaxed/simple;
	bh=nJbhOULN/HzoFM6YMJ0mg4eUvbXYzKKhmCkxd8hYrcA=;
	h=To:Subject:From:Message-Id:Date; b=ewrXzVhOsaxsYSTzGMqrpTPunRB7Jrjs1xOsNsztF50/wYoO54jUlOH8WwoUF2MG/yzQsWzD9w3Hr3qTnkf9lMCmuMYFijIBYhFbSuhJ4lJo0NBtg/Xv/JShNIW0x+CffYxImXKfTHu1R07lIwvYJ0hBwQblooY2RRiy1VrlEDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx38eqPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx38eqPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258FC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757293193;
	bh=nJbhOULN/HzoFM6YMJ0mg4eUvbXYzKKhmCkxd8hYrcA=;
	h=To:Subject:From:Date:From;
	b=Bx38eqPX9KOEZtuu0vdMrgyU8xwPSXVmZhXL8MyD3anRMFhNW9ZcEOpkcXUXVEs/Z
	 0q4q7LRctBKEQzZfT8c/HD3735VTpxBs/qumVUR0EWhhKdNO3JZEk3gNJFVaPv6b4G
	 clmDTSe6aaRtXK7gR2q/bUsTCD/vMnrWTZ2S7nAwYB0AsRkzk05zjItd158ceWe3No
	 rT16xV34mnxjjj9IHrmTb4+dV+n/khbFb3s6sJ5owlYuMTAE+R7onXoXqcqSTQipWn
	 VqCurvD3dbeQjW+tx/Owm8hTuIdIKhvGCPKHofPMB+Kv2Ii77rONCPLmjwy/HkcwfW
	 dk9+TLe406gsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B86CA1017
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729319357.6192.13710589352108693358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b389e0791bf678c8da2abffa7a4149d30226ba10bebf4fb64d391b50d1ba0f7
Date: Mon, 08 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757293193
