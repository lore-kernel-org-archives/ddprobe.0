Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBABE175A9C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775939854; cv=none; b=uGBkCyknQmVZXwKxcHXQcdwgK3zocpDY+pVIp1mvczdZXPBZi93H5cS4oylSPeK3gCHGs2509p4ksbIkiP2jEs0v3mwgdQ3DkmKoXT6DuBJWUffSvZVE3OICbHHmPLgtLILV10tUAwGRB0bSurMlizoK1wtSOEd0wFvV/nepmLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775939854; c=relaxed/simple;
	bh=qkdrmZt32Cm7f9Ig5pEEJ0p+rq9tWoCiY4w/XeBYdoo=;
	h=To:Subject:From:Message-Id:Date; b=Y4FkujzfmbjOEuLYW/GHrQiIwf3e0inEYNBuvlwwNomvHp9l0zcxnNVlkZvjrA3F79+zrLhTHkqW/E4LvApNVPDfdel1zfG6VaIhBXCc/7nj7sq6WfA7kXXSjEbzHnoeM6+C8u3V2U+5jS8qC4ORedp9pMi6le05AQSBtnRjSYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZhK3dVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZhK3dVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EAAC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775939853;
	bh=qkdrmZt32Cm7f9Ig5pEEJ0p+rq9tWoCiY4w/XeBYdoo=;
	h=To:Subject:From:Date:From;
	b=JZhK3dVENhBWWoUM1PJ0LvohqjzhEmnNY/tNE77RcZP+udAWXgCnBZyi/wLfjSKVz
	 rLs5ZQK2VXtsGCa97gcFd4V7AAwJ8iSszAXP3uXRbT2mAeVNXthfH+dD2xWXA7NqJP
	 9P2wNTymgXVqPm3aGrbX/lsQkCHBtr0buZs2xyg3rchH1ZvovHz2NaiPzw1iPLu1Il
	 7yygO2kUChUPNgQR+tL+v1wiJrlVtNP10nTQk4ib8OElUUxw9xD3VTA4keFZgvEeGs
	 KI56RJ8s+ICgUPwBp/pLsX7VlNaCzfj5wzbp24qC376ZHJ8vFWN5thk2paMPwfCBt8
	 ZIIqYzsiWwsSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA73F3ED66
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593985368.11758.9129108490660306368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b5be97d878a86b147abe1e87123835211e3ef7401f1c71a54280b77cf99cf3
Date: Sat, 11 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775939853
