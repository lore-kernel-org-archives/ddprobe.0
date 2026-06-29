Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95428149C7B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782762514; cv=none; b=bKRMJKJG6XiGtpL+ZVEg/EwIpflnS7nUQ8dEKjWmPhWjuuzEPzQQp5XI2Z5MBkTLIKmDG/KUgjcHG1M3NKt6Sl4UOXiqW6QXMilzXff+AaqfPIE+0vDlFK9JKCRlMPNdvqPgSqtsxqsdVNacP1YFbmqASN3+XhguH84MtWabBko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782762514; c=relaxed/simple;
	bh=8/ayGUa+OpZvMGEERgTHuzqTbncz+BnLjMMLUqgEHhI=;
	h=To:Subject:From:Message-Id:Date; b=KsY13ExjttDhYfb+VNibwUTLAmmnqAjkfD/aSzhQjd+On+Bk58+TpMhyhltjJ884AQ4wcXXrtlP7G+pYVJBqO+Qko03nHthOH81g8MGRosnM8p8ZSHAl5A28QceSkWJgwmSFYzPTzX8HumLbVu8GUH2YD6PMLXdYUHVwx3GAdZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvaYeeNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvaYeeNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23BCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782762513;
	bh=8/ayGUa+OpZvMGEERgTHuzqTbncz+BnLjMMLUqgEHhI=;
	h=To:Subject:From:Date:From;
	b=OvaYeeNCYk5AzMtmHMt1eijkk1sKQIy9aTrV6efUCoS2Hn7HbbLoNPAEDVUrZ07Vt
	 RMz2O5gixcA8PVS9AmzcxkuDkF79mTqSuA7QP+7UdQlnZG8QJNGwH8fsyn4VRR0ZBh
	 ZfNFm94YFxR0kRA2GL2xPZI+l3ka1j8GuFWYWWWHghsFbkC0yu1JzKHLIQdwIhsYgQ
	 Z/XWh5l3GLJKl5p2BFab2jjBJmD3Ntn2QdNmLYwxbxM6MyN3tME84wnONisQ3L9mm/
	 +TdqDAtLrYoJVc0KEHfFBYYMjXKzJMVygsLmnUPtSezYqJ42DErDGpId6MyXoLi+KJ
	 FRlMC+ChhANMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F3FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276251368.26780.7991366352351913955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a396200f3c5ee58b24d2e878b04df2c4794c57f15a237cbd1d336518c8cc04f9
Date: Mon, 29 Jun 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782762513
