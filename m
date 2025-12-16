Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB182F0C6F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765881233; cv=none; b=DmezTDsEpbOJwGx4Rs15Pud7RmrWyTr+/NKwwVp+2YDpv2B70hMfI02l4U4oyvNWodrjIOaN0VkzcovimDIfAdKZfRrTNffFSz/gzAA0q5z4/D4Y3tv6veEI321oTXUg8mCwjyiQUoZ4vW6UwKPacZVixVETDux0N6xrh18ghQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765881233; c=relaxed/simple;
	bh=U8AHzfA7mI2LM6rXHLBPxOHs0DtnCAPcJalXS+hfSr4=;
	h=To:Subject:From:Message-Id:Date; b=Gxsuz5oFwKDYm8QBbckNkYeLMQ6OpvWRXSQE/oo0Ejls9XaOaaiH6M3KkP5Yz4tX3xsaX6ANSWFpHpp+i6X9FnX6gdvBLx3T5jRbJ2sr4bZVz9dof+Vh+dZXOdolsZRlTDYEwJrdpumHxXXnCz5CFjZ1BgZw4XeyaHCbY/1hGr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLtnZOge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLtnZOge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1167C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765881233;
	bh=U8AHzfA7mI2LM6rXHLBPxOHs0DtnCAPcJalXS+hfSr4=;
	h=To:Subject:From:Date:From;
	b=sLtnZOgeWXI8xoP4PmtPOxGaxeIKkpVmZJ0FK+c0cglwsBAdqTcDttwOpwKBq+eMA
	 KpIc6iDCpEJBQKhakMUlOYLzXGykt7K7KML/rbED5lbShTExko+sLqaIgBvpa1xEMy
	 8cKygvvdj5AR2jH+KY3/LV7vqBw96mXt6Itwn9BKIrLDlFHqKHl++WCRKbBnjNyMfU
	 2lqs9WKexeqnmiUhZYrRkMiZvT1cK/6VdK9aXYqgHS0KKNN7HAxdzCGBUhmmKYaidP
	 lqWvHJD5LTWzV9rCTua4WEx9rRM/DlPyeIWeGnPrZOhYBIzKDLuioRPI54FYsoI0jf
	 I/+rVnsOEX4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B6D5CCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588123358.3494.16237690570248899392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2a3740871d7742c1cf3323ddaac89c9102174b38dfb596a48b9e3cd907d306
Date: Tue, 16 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765881233
