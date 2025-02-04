Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D15D33FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738638954; cv=none; b=r7SgU57oX2oPwZpyjK0JoCAY4Xeu3xuWn7izHa3OB9HrjspWJdEB5ILI2at1vD58tV4YTEB9NwUIAxqgIur0OyLo6YbbSjYJfs1TST4yV6R8823NygTc2JQiOf9pkTa7oK6SJpOqaawIvv4dgbJB5lC72oj5KltE8FEAtrgGnGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738638954; c=relaxed/simple;
	bh=Ra1FcgENkYkByQdHqaUSx5xkzl5rvdOv2pWdS8rV6ZU=;
	h=To:Subject:From:Message-Id:Date; b=ucJgsRPM0h6Zl89dIMOzUZ8ONYaqN9MkEe/fzYBwPTJ1uZmY8SqOSOx0i3JAx27p6ZnVGMmREchJ3IXMWy0GUiJV1igNekWFAgvsAD0pgxG2xLbSaT7qBaFt0TUH+iseFvxQanJxYOjN1ZZMvL+/cgxy2OSwFiwWlQRwu+Z6qOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY6wuqb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY6wuqb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA2DC4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738638953;
	bh=Ra1FcgENkYkByQdHqaUSx5xkzl5rvdOv2pWdS8rV6ZU=;
	h=To:Subject:From:Date:From;
	b=qY6wuqb8Zi2fkUsypAutf20TN2DpG+ENVwNwIfnMVd44yDOA+hH0Wk8mBFprjwR6R
	 Qqb4NQj45F5SdNmPceVBhsDM9cgdWyARPiphpU/qtzASl14Gxwveut6/Amy8vEJmI4
	 SH3e5hdJkFJoC2cuVTPInG69VokqHKHYnmM1MLIaBgGAL3xVakrae9DTdLk1iSdWjG
	 8jZBTMnaRh882sUBxHTdwibVq5nimCf2cmibiig8KsNBcX6hFm8BP/WWSQubP3fdCi
	 pSg9Q+CxLO2WIoADY93s5jZhdpwbaAWVmnZlDOrmPThNn7aflvVHmn40XGl+iuL9E/
	 chKMEJ6xuaKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8ABC02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173863895359.19995.8153782555980588632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98b149e05fa2607359fde850e0e0988f352c30450f39ef076848dd677b98648
Date: Tue, 04 Feb 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738638953
