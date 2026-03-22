Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDDF36607D
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774194294; cv=none; b=FqmNqgWTjT9kvPvrzatVJQEqRVrk7m7vSVvDMRWTLGh/KDil43yyBw081cR4lgLUjCBGn1RygJA31iFJRz/o9SzsElsN19JXTLf9LXfB+7VYtGd61OwLKRJwDY8hR6TAxh+5ynqokQJlZ7WbIAMU/a3q2YD9A/sJiBoNVnpkRH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774194294; c=relaxed/simple;
	bh=qwLkUEV9wdj3vTbqHBitFkHZx6fMdxQBhLkT+Qjid8I=;
	h=To:Subject:From:Message-Id:Date; b=rjPG6hKJH3w8cFDJUCrd6qOF36uR5/gARB3oaCmvhINsNqZ1f7eQ/OY8bIekPh1WNlB0OHLhY5qdfDcSl6qMjwuK7bB9x3GIGFwl5YssuDk436k9lo5TB/NXgwsgexWWsyZDdF0WuVN9Zmgrz8tk/iNB+yKjKn3QBh9BohI/ioQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwrbifPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwrbifPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30B8C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774194293;
	bh=qwLkUEV9wdj3vTbqHBitFkHZx6fMdxQBhLkT+Qjid8I=;
	h=To:Subject:From:Date:From;
	b=DwrbifPG3rNnEE0TP87U9lbIITl1Ut3DpXdLY6jOyVFQva9YHVSMa9kJJDHFsvK1Z
	 5WKiumqCHqGjVLPYx3lzTM2ES1cOzoytnkjZoyhqOoGGOW/vuGweou5lpWeRwj909o
	 UZSBG4TM2uJuspaZIm/ZZXMl5i4xKXPGb68FNlMRT3S3nd1nd6zv2wXHi5fxdcwf2I
	 qwcpztjYU/EOnFWV7hGgDVDrlcmh9k2zVmrtmK58cE0/+lpfCiboTUFGMQSq+pHZxA
	 ob2WCblhaNXc6Ky2+nGDZWeCRWLN+u5mKgvQb6ywl5TloVZoZaLs1mQe+d0k76EqeM
	 0z9nSM5Lv8tkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058FFC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419429358.18436.1725958544075469693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43d985e12fd23aca88f8a217188ff8e41c66150e9e9db3189d10fc9d915d86f
Date: Sun, 22 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774194293
