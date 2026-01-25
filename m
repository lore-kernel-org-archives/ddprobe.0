Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3D23C17
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769344434; cv=none; b=Q6RBZ9OFk1K0TUfV1PMH7Hok/TSJZegcDsMRpcScxAmafc4zmVFCAIL6XCbcUwkSumhYT2oB8ZvC1F5SKEeEOLrt1FvdMnznVkQuVYcExoFBsWD/UbC1Us2htYDbXq514X4HS3xVD9QL/l20INQun0FG20WsBpvXHumzzeKdk8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769344434; c=relaxed/simple;
	bh=uZ6XFpAmCy45TPcATNTocfOlTZ2BbTNQg6LOZoTGouA=;
	h=To:Subject:From:Message-Id:Date; b=ikQVi0k+S2iRrzyszSSyAMMzdiJgKg1Y1JQZw0FZWZwGzwLbn7xsiRSJLK/lrUZ8iAqrOOYHvnxyjJIcoN89kXXpKee9x+loveCycBX2WKoNjjS5/YXpK4ZNnuSy+CnlwJ3G+0GaQzCKc+LiyvuOnRT2Hnv8fm3H47B7xkcpsMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL5aB7a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL5aB7a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A131DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769344433;
	bh=uZ6XFpAmCy45TPcATNTocfOlTZ2BbTNQg6LOZoTGouA=;
	h=To:Subject:From:Date:From;
	b=jL5aB7a1UMbfDyxuw5P9pQCUZsJTkYM9XdInjDbOT+oDBCwHva9yGLVd9yNDB1V/c
	 /cg1m02DrQfZOO35mvv+sB6pRuoKhNaF+ERkdRAp3+yNCKYWugznr1IO9QNwwhqWMY
	 +XdPvisUueM6gxXneRLO8n8ovz+CRnhfbdTwfeJq9qzGx47ZEAxbvBXOBgj1ZvAnqH
	 7YrH1eM7Jp+l6uKvfjfDPAHRAxZcs1UNqAgpK6tkS2vce527J7g9Kq1PCN4RH6/w8I
	 dRD49/iUJ2dOQvc3Uu/1729+VHZOeqX9YIeEw8xUHjyrRzZl/5Ku/eTO1OsqIsk5Oa
	 TsC2lNQvcErsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA87E63C9C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934443357.23387.9249731912610310122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175854508cf614347b6ca4f4aa597e50c6f4829855ea9be6f942b7a76922c660
Date: Sun, 25 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769344433
