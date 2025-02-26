Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471C62904
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740577134; cv=none; b=F8XC+mr7wb/BjEvb8+QQJ6UVwIhL2KKm71QyfrymINE18JcWXqUlarc4mBpuM6ljygmwonw1YYtu+tsrT3l55vtJKMe7ZVHQzNbG7oJ+6EFVI2OIjDO7ykuk52diRv7kr6jCIJTJjvZQrquKrQtfzJ/IXd6oDhvxrCfq85EpnQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740577134; c=relaxed/simple;
	bh=MH7SOpoSJ5HDpcqRpmpPxGeB0vThT8clMOQnQzc7LuE=;
	h=To:Subject:From:Message-Id:Date; b=nY4qJbKjlkTjt1sWNT8xbJVRRAcub2ibKE0oWn6cw2gbuNEfjAMPnnXWRT2wWK7Agk/jze0prArW9Z7PFMLddC7/vZ99kimFcuUDi5bw92ofLQngHYUbYxUs5PYk1zGwrYTwbeQMEYVrMjEu6cbwwdzwgzJ/PYQyVKa09CChWbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwEp16Xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwEp16Xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBC6C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740577133;
	bh=MH7SOpoSJ5HDpcqRpmpPxGeB0vThT8clMOQnQzc7LuE=;
	h=To:Subject:From:Date:From;
	b=YwEp16Xkm3XFriZTl5q/XtADKe+JzWjFZ42bhRZWCbJPbTCh+K3cRr+0O52kt6kmP
	 VbLDWH4u660VwqQvNSceiCpnrNCvxIvaZONv7ROp60AmJq9dZ4zrwnTP9/DDfh4U6+
	 77f9FcBSiDMKTkJKIMW0dQVn2EMEFb3VYu5pon23xaMXQXvhbUlJw6IZ/X8PMOgjkw
	 nai9Q5LT8xyEuwidtuAMMoGiAKzh7O9M/BAlxVsrUW6HLXC9RRqE2pAH0C0MO7lUMm
	 c6vGrRa4dWU1GwCT2ZZVeAtQioehQ/tXDPcsZY3zO6qYR/TkJtj+AuKbpCy3peH4Bs
	 Cx5g47GVFw09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBABC021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174057713363.3668.8248972701774448622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051e08cf444e1213271ec262079a3dcfc3e1c918761d8f26e56ae269ce5a8dd4
Date: Wed, 26 Feb 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740577133
