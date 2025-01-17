Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B96746BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737113154; cv=none; b=KYfj2asBu33U52L1BKaGlZGrGvwcUPA7wQ8S4/jNiWckYnRnLuHha0Q8SEExgawI+bnGoQN1sRFzZqC3d9+WGxf7hH7zKlNFW7pU3Mzb34Bpq6ukgT/jQQMlitb0p9VNISwibJ/cCGmhn98szF2hbD7pNhCJn4Rx7wjbbPbR69M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737113154; c=relaxed/simple;
	bh=D3KfnujK7lZ+eovkNB7+5vhIRoaXqKOzNoqTi59sqgA=;
	h=To:Subject:From:Message-Id:Date; b=LA+5rgFBK8Fkakt4Y7Xgf1C2wpAT53xqYfIjiEyLvCPeKhoqbOUehpAoyurUBhMPeNv6NJJvz/3poCTTykVyVDz9mnaZhscwYDOLEKcJELpMXDjS4ebbuL+MGZOjDBYm+FGzqLch/kDqSlkRUJXqDnXAZ3NCXYfIZq7I/p/ySWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rU6ncWcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rU6ncWcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C57DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737113153;
	bh=D3KfnujK7lZ+eovkNB7+5vhIRoaXqKOzNoqTi59sqgA=;
	h=To:Subject:From:Date:From;
	b=rU6ncWcwLXXs0buJtYOYA8DthSIAoGmSfCC+ULf2n/9U2YOeB9FplshOGhKnD5ibN
	 b7wpo4aBNprgTNFTpf/2yPMoP2LnSyy1wCAAOC/DGsPt5t9oP9lClqHk8aVqLXt775
	 XDEjxZ2lg9GZ8ua7/I9HBC5Ln7uLVyF1cn19XrR0YH2+3X+nl7K6icbDqJTUMZBukw
	 tJcSh+VwG/e404Wdq3BX/AiPFM5SWEzRbFtrW2oa76Ammhvkxcp/7qvOOx1VZHl5oS
	 wbZDK+MeKr6xZQwBj5F9BOkOIFyX3VcUaZnyvdumAddWNN1RM3x1I9vjp93rY7g/BS
	 wSyFPn+9iSIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711315357.909.11184366002568927764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ae90e1a822dbcb87fefb7a618b03feeb14795438e9529824b181655c89a831
Date: Fri, 17 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737113153
