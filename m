Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D41635CBD7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788359434; cv=none; b=DbqLieQC3Vbu+XfBvcBWkSREPPFaX+x8VhYtAXAwBTWFkfYvWt+WCxfWct1AJvaulgTY5itXDlVmhtN5v7KgznBnvmLIQZgvmI10s9FYcG2kFrAme6J1V3qIsi3mfP9DFGfcZLZ2ekRrrPr2BtL/RwlVcmCWxclPbMqPxdTEiAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788359434; c=relaxed/simple;
	bh=mQnfFG37Ccm7um6v21QMJr5dHozCmeZ9ttjSXbMqbKw=;
	h=To:Subject:From:Message-Id:Date; b=sD6fA9rkx13DYQm+Qr0ytVD/+uwNoXEzgWIFgI10FTyPVLsC7RNFEVzFjC5O2LiM6FYwm4lXleZ8cJHi5ww/79vghtoZNxDdc9UB93lZ6RZqe0J3R/8s3oD0cSEQYBIO7r47lLwA9KMpk06LZjmdsrCrpVs07MSiFCnNc3oaUlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPsaDv95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPsaDv95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D003CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788359433;
	bh=mQnfFG37Ccm7um6v21QMJr5dHozCmeZ9ttjSXbMqbKw=;
	h=To:Subject:From:Date:From;
	b=gPsaDv95UZEMiBWQrsFGjPbpC8ttIFRmwN2sTghmchXejWMsldRCwxrZOVPTh4L/X
	 qgy34r1HwDbI3CZL4uhaDQbWd3j5N0KRJkbDapOMSDsXpKUHnteelnnXOZnPEOCdbE
	 ubDaEFpnB2FDiwsbXNa35junKNyM204jsuvMgYvBrOxL22QY8y3BhBJiCZMi+mzEtR
	 N7mFCqyERDDPRCtpw4yw2CHMyKqLhKxJjY2xchOVcJHSQfuQd7D20OKe54lFg4Xl1v
	 p8EXKVrUCIXeDeXCHiwFWBcw3vYoGdov8seYurdmVKv5jVIUKaJFYT5t+gQt7tMpGg
	 5H9MHvqA3aJlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB82C624D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835943369.9283.8260045992854914573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b75156f912c32c38ba2a82b9c8c6f7b3ca2cad6ae13baf8a5cdfb64c8569d90
Date: Wed, 02 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788359433
