Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCEC1C68F
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731597354; cv=none; b=VzH6JszAkHMPfkoPnHLfcyqEELYF+G5ApkC746PNvmi+6P9IaZ/2p0sNvzfPV4glzSscqHdov0ccTCYCHKH13gKpTehywGUvFRMaApW0GCcRxkrYsMQV1XJ4kzDuKo89KGODZXPtB9jO0xMmKzTmrqtQ44bmXpx1on43WtTPkNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731597354; c=relaxed/simple;
	bh=UTe7EDSIqAbJGCqfMUt+eQDoHqJpbQdzm6Y+Rsrrr1M=;
	h=To:Subject:From:Message-Id:Date; b=NaemrGqUz95HhtSAm5MPdaGhOsonwW1BeSxni93plZpkS9cc3imqMkT4uIiv4U7xfTyyYDdM4szeOYVml3GoN66ZNcNR3WvNzCgixBovMLtna8RSqw6pfKrBqOSqvb8b1IrhKccPpciwFiuJYc2HihXGUIfuksfqAA9lbyrzj5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBhfAJyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBhfAJyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B758AC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731597353;
	bh=UTe7EDSIqAbJGCqfMUt+eQDoHqJpbQdzm6Y+Rsrrr1M=;
	h=To:Subject:From:Date:From;
	b=pBhfAJyw+pqp/KmT97MaCW+42z+POxhKus+W461RFgg2fr+KdbsEitAHk1qDiJfxb
	 WNNJSdbr4gjZgxb/vSlENur5PFnjZH2QymeFrn8WTD9zt4agkE4STGFa4Bbaz/fVFE
	 VCgVcBanUHJQA9llXYtwEKb4QbJpZeGciYoO5PoS5adbrecef9nt5lFgO2Z26g4Ldq
	 dswkMvitEmj4mTVWJvuW02HpNLs44xbJXtIKYiima8jEwS/ybhVCmbjxiP1vEFuQp6
	 muivnW8Dftqf/au6NTGmdbQXyXWGn8epHjNixevt3jb2iveXmuOKYTrZstzTEIejN4
	 gstLx2y7tnJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3546D68B31
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173159735358.23144.15687730650933408505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e28ab8dd3eb4c43ff0fcd924e11c2cfe41225e1ee07ec0cf91fd8d3d0fe24b2
Date: Thu, 14 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731597353
