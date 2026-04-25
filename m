Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3401B2BB1D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777082254; cv=none; b=PzoHsBQ7p+fLwqIQ71gen3c2a1Vfg8W7uXs3oIvql1oqWNXdlG+7ER0LuKgoRacr/U+x3mXSqBRicomHkghlxcC7uxU0YOvnOp+4yf8Jn9SQZN+d32g3cmYSp6DbWeG4YyI1cyyK5/UBkct4H/YB+FNxdtg7hObdqyi0ciGIVRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777082254; c=relaxed/simple;
	bh=QVwB990j9CTDRwUfk3JHDR85Pl1xjWB0MJTt3pM0ORk=;
	h=To:Subject:From:Message-Id:Date; b=OG6lSxLh4G0h8SjK7gj51cYjO9tXn6mJ1mIITGOjnExnWMX6WJ5wAVuCgvrIOXdR7b1OqJBBjtxDWf4/ztytNt7z3bDLPbMlFR4gr2p9CFNWATq4MCcaJOp94m1fhBZSN7EkfBg8CPC0srVrZjMg1/oyDMbker5W+u+YU6odW+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt9ps5wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt9ps5wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF48EC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777082253;
	bh=QVwB990j9CTDRwUfk3JHDR85Pl1xjWB0MJTt3pM0ORk=;
	h=To:Subject:From:Date:From;
	b=Mt9ps5wXnub3U/LGRrWK7ZBzCum8Ye2D+XbRYpvvbNuaPLclaMmM6ixq6FYOv6AeR
	 W+sapwiSPlC6o6cFPnC24QFGKDBE2JDN7jJVwzsAljkpWGP0Uh5wg7pI+CUNEGWPo4
	 NJVIzmvESPwc0RGLpuDzzmxHzlrXbNOZAgIRAB9AtqADQozKdxAEf/GrB5CuzwacZS
	 QoDn7bGjz9dRaQl7upYLaSfe3paVW+0PZ6igFmSsiQ9QBRJ7GGXqEwPlxnZZ4lYq1b
	 +JRHSDhNMN3RkWnpB9154mKiwNcFrwxfSwpATuI3sWz3uZumldAEj1257y3GyJFRn1
	 MGHQuZruCB+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEF6FF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708225369.21811.16054014504896355365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d304277c734f4b2dd1213cd650e1a1832bd76ceb51055d10e56bc82db89feb8e
Date: Sat, 25 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777082253
