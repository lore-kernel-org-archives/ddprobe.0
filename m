Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D711591F0
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728168954; cv=none; b=TgJPuAgatfQXFkhcE2clUeN1yoLobAsUaeexiSly0LJaR5Xf+gJZJBdNevdGxpy0uh6ZRM5SfCZqK11sKRRPMYuGskyD1/9iLK2hLk1IXoaAohPsx0hlTnQaUHKfoBMHn5qeDxFhKPqnhpH/9hknYpHGH5FPvsjLTRrC/8V46sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728168954; c=relaxed/simple;
	bh=Wmuz9waeRie0dtMuYF0mBxEvjFhQrejo16L6J74BGXw=;
	h=To:Subject:From:Message-Id:Date; b=OEf0ozhkyGUl9tc21Xfm6D4YovXs6FXHmgksFWGw74L/QtZWlur5JFm9zBjX4VXreXSxnaOor9d7nCdOhmuf/1oZVd3SYhTKgoV+L637JTSGY6/VSDodGuF3QKVg4fIwMxUdrAzDPlALXtdev9i19t+VifCj2JcUVWNkvBmPojg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfL2NyQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfL2NyQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9002C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728168953;
	bh=Wmuz9waeRie0dtMuYF0mBxEvjFhQrejo16L6J74BGXw=;
	h=To:Subject:From:Date:From;
	b=OfL2NyQic8PDVnIBtEszh1BOJfKebysa0UwyPwuR6d/z6IazOZpGvN6CmR9Lgqw7r
	 ol5hkirXpOQl/E2hHLH1v9oDsRWZTXgAqBPcbl3eLaEjAXIgcs1J3IgZR/9x4xiUzE
	 ZgFs7vnu1gvW3o/141wELCFZtHOjf3qel785xcl+cTL6ImGpxvaXxF+KzeKgj2s4Xx
	 pi56vCyi3FUHdnhQVSkc3nRyWIlj/gV1OX6uiq/+2Tg0UcKWIdSbWRglbSpe50RUR9
	 w2SgpFJoqpcW54j4j+0/HxYBJFEzZvyqZ0qb34Ld8xReIPi8NGuSHm15IK5RLYjWjx
	 aDvPDi6/0TZ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A805CFB43F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816895359.1886.7378831169928463332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4778c0500e12f44dc86deb23e16552483510ec10ed92df332995bbb5b478156
Date: Sat, 05 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728168953
