Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587C23CB2D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789781434; cv=none; b=ChNuNp+R/Nyi7nrEHntZ8B5U+oNY8u9LkomgpZzPOW6rTiOZTt1XEh7RHTPw8weTZrYnLKjbFX8Qn8Y6CcScImqlqtvBP2vDzHN76Zh6aLnIme33EtdNEqjtZIwMmYUGon1B+PmPRk3P5ZhWidCna5hDjcf53DYK/Vj0Vq6z1dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789781434; c=relaxed/simple;
	bh=1dKZwRHz/nCfm3uUTiZMbf57g5kwX0gqSD7nRwNcHq4=;
	h=To:Subject:From:Message-Id:Date; b=G8YGMHwF9qY/3GoadhsOTbfdCj6EbG4DX5XHIjoCu5QgbeXetJqp75utvdcRqF23a+LtjTZKcZf2hdyjqrPvij9ap50oNo0vwg9cbJ1mMz9H0v8XcNdbZ+4CSkNO6xWxJyNgjbDHIcBzXgdQe6KBVawuOjGQGoZbAUqMHzDkQVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcpniU6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcpniU6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E0DC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789781433;
	bh=1dKZwRHz/nCfm3uUTiZMbf57g5kwX0gqSD7nRwNcHq4=;
	h=To:Subject:From:Date:From;
	b=tcpniU6Hw4/Xy8fOKTmCPgjwbY8n+l879eZYnR4eMSNvYXK6y5R5y2mrsZHuSdWn1
	 kGf8kVthWmR9RuQMTf6Kt2W8x/KS1ZkBCdm0WTGnBsvbD/KYYkbEM8b41jfX6QVsQt
	 yx288SYg+2gmK1TwAnkvMJH3OdBPuc6rgFWRPQ1AqLzuPlm7y4oCrP9hOTDjA9Adgg
	 pSPoUNp0qqsr1iYB4Vt9O2E9QdqifEO7SUnYvg4Nile4pO0EvjCUl+BVb08R0YA7Bn
	 S1+s9L9JvQoqQUDMeXC7hHkoqA/62qMNGPGEo4bevqDl1CJzF5DU1l90Mqb2Fy3FXW
	 YZWl/IkXfcUQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE4FC982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978143368.22671.15997929660098597463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e24cfe7849faf78bfdf3f2e0bfea12387afa5e390f17cfe395b2161b9b9aca
Date: Sat, 19 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789781433
