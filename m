Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBEC364058
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767976434; cv=none; b=Bf7B7vD6xkhmz5fviN1MnozmxdnAub3v4FqIdxbjZy1rUhhmBrnSRADyLcLUVUqxZ3jl5Woe+fU+Cqy9qHw80FCkuiWk4Ifq3h6AMGt3/S444a6rfadsgMhMuHU0XgGPHSdfqkcc8vCtVPEmrP9lKgaRlKeD/V5La/1CbY6iCnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767976434; c=relaxed/simple;
	bh=1Ka5lCbmsZOH1HTNcjUmz32vL9aZKzqCD0CGPD4ccwg=;
	h=To:Subject:From:Message-Id:Date; b=CHMdvsI0/uA+levp81G1NjcZq1DARM4SLKc4id9U7Jd5yQGy1n80/q2t4/iyygIcilvUj0owdTG0yMqUzh47HJWmCWSnQOXak1GiceTZMKkjlCBQk+zAnlPhS2nFCpjFrrsl0+i4xDkkD94gxzPXyhW7OrOChDp3d8tie0SsOtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ8AqE96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ8AqE96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59FBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767976433;
	bh=1Ka5lCbmsZOH1HTNcjUmz32vL9aZKzqCD0CGPD4ccwg=;
	h=To:Subject:From:Date:From;
	b=GQ8AqE968EKvAnHSA198slSFp/HBQraCUyerCibHn8BHzB4XfOhq4dH6tw1booDgq
	 MWt4ehoEbGpT4fNIr7MWWydfdxahN3cV11OBPGmZ10gg/uNCvXbVL2zeWQ08UhBJjY
	 uywCxMh1QuotB6w2+hgHfbuG1hCXQKewCH9VHMwV9dlkPuRnmYKKZzWIxqdrJnyUCh
	 e685AUbBmtMeKZzUWa8VDNfp+QTsho7NnMkH5qEp27jJ7vMreAjMLmgGVD3sCkcOsW
	 hji35zL5X3mUpGG1LDsFV9oBZ9zj2G1FuG3B+8VNA7PjWlljeCP98laE/LQyfghYKB
	 xddapgh/xexgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923ABD26D6F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797643359.4468.15660128589866435454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0e886cb800d8bbc00d7901b131d066d71666e9715d97ba9dcac37ff15f4691
Date: Fri, 09 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767976433
