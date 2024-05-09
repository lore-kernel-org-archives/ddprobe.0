Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D9B12838D
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715298743; cv=none; b=K0KJ9G3pX9iRkKY4kHO27NkI5DGZKkOKKIckB29ZmCZQ3NhCSx6GPs4abg631/nD0AvS/TPt+U2ukfH2iOUFCJsSlrz6L1Q4d3NYqXGljjgYUimFGnOemXgKO50RTGz7CUy4WuX7bbbHjftu81NIQZ+kIrllcFzdBN2rglxzM8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715298743; c=relaxed/simple;
	bh=LFAcF8X42XF7UpgX5Wslc5yka6VoHVw1094Jk/o5AMw=;
	h=To:Subject:From:Message-Id:Date; b=t0erWz5oKsUqVT7jykHSVT8mG3Ay+zGt8LCOk6OVYeef/PFJLhVMAaqRbwOAaiprEKSFFSgslcJKTaqTjFZIiSh5QYNOotDe87qObufDNMEh5gyD+plWIEIhd7Qt9W/jMgsDqjEAPafuv7qDam+9Uz24c581TSy8JUbLCWEImDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEDPzzen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEDPzzen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD64DC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715298742;
	bh=LFAcF8X42XF7UpgX5Wslc5yka6VoHVw1094Jk/o5AMw=;
	h=To:Subject:From:Date:From;
	b=XEDPzzenpFJhc9WF8RwODYiayHn4GIzG7Qdh6Jwse0UjVg6lsmyzgTbTH0aWD7u9K
	 rOoWtzfF1+tyj5EMYAvLhoNHr2Kkf7ckMHecJ1g+8RDdRRf5w/6QmB4O4JJtF0GVVS
	 klruDIwX7ilDy4gAw6iW4jfcCTImPoQTZvR+BxD/iuanPzUc9xsU82LGikG61PMV9L
	 aqDzZ3zZVXNVjiqWzfttG6CayXbIBdQPn+SXcXDlalRv61x5aIgm66NQD5fG9QeKpA
	 DUOQyXILImnqcJflXNEXXbAYJpq7T1mYAs6MJt247rQY9zBug0+NuQOMACKRdd5Pni
	 4L6TwvRpIZrcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C722CC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529874279.10119.7665979808623268840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ab215fc08cb90841c6e83c6f648847f7dca869551c455b6259fe781f06a48b
Date: Thu, 09 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715298742
