Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D26633D6D9
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771026294; cv=none; b=I3LTO9FsDRZ2S1oFB2m7RJelljwRnpwq+wzZdXEp1bHFnhjxOweprXKWNpocdaxia0Nsl0+w5dvL91Kt+IYzDCe0eHursspcwoTiKkLk3BQAzV4ark9BIHJhsp//lJqaBP+c0T64Ji7X+pIrL6z2rz+lRBX5hOfOwVuPrAtvPuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771026294; c=relaxed/simple;
	bh=EmaongEmvre5svq0gYB4T7JAv3yeVJlr+WyxkZqDB3U=;
	h=To:Subject:From:Message-Id:Date; b=eTr9MDU9ZDVTDXUkahYXrsR2UUvp8pAdK6UNyielIySMuRZcfQtPToPJgmCq3065DXG0vntO6F2y+IuYJ8FM4QVcWRgZP4bBb7ralUfdWZOJdoI1gyd5CvG9oJ8wuboExGOVv1OSsBXSrzPQ8f4qfyU/H67/gBSK6DoEFVgKllQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNDlEwvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNDlEwvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B064DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771026293;
	bh=EmaongEmvre5svq0gYB4T7JAv3yeVJlr+WyxkZqDB3U=;
	h=To:Subject:From:Date:From;
	b=QNDlEwvw4lf+dnyseHOlTRvGMtDl0YW8wi5fGQNpJjJNykVvGiRczb9HfdTHykDhS
	 QlIbJYuhcZZuRWU5IQZtaLgw0eBXJPH/Q28ZPeKrLz6I+BC2Fw9KlQYZCskbktyViF
	 1nvu27cyM7hWwUxTdNfYCs/zptTWmbZgRbqD6tf+hx7FTED7eFtrtTalWb6U8z+6N2
	 UzP6Y81WIYUKNB+kPCENQdgWgaDj5KFfMhRkKlsKhrRLStnfPKd1BVpT4lf+U3fs4B
	 JH95iI3xdWmHLskT9gAKRYgloZLr85RJbh8HY6Hj54ceTkuuoNjn50hrb2LR6sjOxa
	 2pFkoIbW8NX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB0BEF99E5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102629360.27316.6637746321851812606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e045b85b9959466a9132dc18ee13e411ecfb74b92b83b5392e6d375c958aaaa
Date: Fri, 13 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771026293
