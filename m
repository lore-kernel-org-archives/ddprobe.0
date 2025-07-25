Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4F525FA34
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753436394; cv=none; b=F5+CwPher2NNuP0WxyjJTClP+xN1g6xJtJwd3P6Ugnmks/7wbEupdpSFPqxTQ6kyucdz9pllf+C+oZs5h4dDqBNj5mF7MbWJ9UB6h/KqSejE1v93dD6mMT5zzmyUKDUOqAfITGhSrUuc+vBWQXHluUwdxqILkgh3xy87HE3hSg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753436394; c=relaxed/simple;
	bh=Cq+j0uyA72i2rxq+yrVCoYglavXAG4DprYakQFfZ1IE=;
	h=To:Subject:From:Message-Id:Date; b=Tg9LiGXwRhOSmk/OvX+8HnKX3eW+W791TxRx8IaH9/uGdV9bKHf02VjMcwqoO1E9IDjRl4sJDT/FxImCS3m3kE+8DlzyT9gsV4ppp3VDO8B7Kutnw+/Lf0uG7h45CDxDGgC+LYw2D1XFTcbdofBZl2JRU+m3Ub6r+piXr1X+az4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYm2Xekn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYm2Xekn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBB4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753436393;
	bh=Cq+j0uyA72i2rxq+yrVCoYglavXAG4DprYakQFfZ1IE=;
	h=To:Subject:From:Date:From;
	b=PYm2Xeknzk985LfX2Z8/jGszm00hEpkecJAHusknjz6geDUt8M3O9UaL4GdN5CxH+
	 eVzQLV0ZfnkZvvMNSh4tJtBTUda1wCbh+cfh474w8a5oVKiGiSwLKCJJquF6dypwx1
	 TqOKVHwwwtSt1QLGMC811xaRdj3IGmS1vsW62e8S7C+JJlt9T1Lu+qky6NoTGzE6Vd
	 c2nxCE7fY1ARF+UHIGRkWb2ilzWrnvzfQezploA+JJtJqS/cs8DXxoPk69NlB+EJ30
	 C4KhV9ToVgIGSDfk2yO1P5GGl+opxCPjX/EznJL4VOcCuZRopGXFHlNk/jHwvRM+em
	 L8Gn05e1nkj1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0EC87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343639357.32382.10990944294199273961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7891052e559357d4a9ff32c50dbd29126d9cf9b11dc9330b9be9babe63e3f8fe
Date: Fri, 25 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753436393
