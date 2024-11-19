Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29526148FE8
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732047354; cv=none; b=ZWFnH6jUg3a4Udrp1q3ETpJaYk7bJnwQxdPYKiBb7mCnkFIZEF+f9LtmO//Af/j80f0Pi+Q3ODttWlhvtaVU93TUfPN2vScF/7hzLqwMUj5ORYOaAxWW2GqU8dtSIP4D5sdg8gmCrofr0KmuCNaKNZ3n78TQhiaTVwAcRhTIu/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732047354; c=relaxed/simple;
	bh=LifKSGiN4Q/6C/NYyHFbU311eLqqzF6vtJ/Zk2sYrzY=;
	h=To:Subject:From:Message-Id:Date; b=LHi5eNPWXH7PTVYeTjBPvLtFlUM2EzcwiQ8yV0rm7Z6Iz7NoGzTbTZnahpvI36AKAzWiYvTv2BEiylQo3O9+GZ9Bcz2tzhkqICoGwj6ffjQRe+npUGEu94B6ltM3hPZ90cUVXM62hhRr9Ei9xP6QziqWhE738lxOrtY3eHLddUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xkca+PJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xkca+PJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C29C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732047353;
	bh=LifKSGiN4Q/6C/NYyHFbU311eLqqzF6vtJ/Zk2sYrzY=;
	h=To:Subject:From:Date:From;
	b=Xkca+PJKR91BzDVYoZny7F8eooPwiGRMzBxW98jHUrPnTmgE/5Umj/MjxotYkFWWu
	 YIBtHO/cDylLhAGRd5YE5cvzM3Uent4YCmq5CZwNp0MDYW5FzBeCYAD3sp09aJzEOr
	 f4446QtMguVNmK+eKyYJs5gWPnoG1MT+SrDkyqrMizhJ3yC2sF1NvwafG7E4+LWHuO
	 GtnFs1eeZwqoXXB0T2x25bvcnMC0020sFr4LjfE3kF3V4GeBCwf8LLDtyXL4wyvD8F
	 z38jq9aIkDj9epc0gRwg1KNqILFWNgb/Zcz8bd3M0DqWX40uDu7SZsa3G4dIRNtv3N
	 bDdkWFDDaf37g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1C5D6C290
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173204735362.3368.15769648290584956433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21cef5e637bbbfbd12a336447cb0785ebb36e75a76caf842c1fe9d970c9f87a0
Date: Tue, 19 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732047353
