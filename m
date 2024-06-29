Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA181C36
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719620063; cv=none; b=FN97YwHovPvjmUW5B+yDhQJ01zWnFvvIewvLhrVXd4Y90LmLr1sCD9fBhqMbAjyowv4b8RX+WifCGVPeLvnEFZWYHrqiaK7hKaOszIgCBpGiYc7jzkIRqiOIFxDS+lIMeoCa9dsLD1zWFrEU9LhmnQLslTqhtHHkg+ysYsDA9V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719620063; c=relaxed/simple;
	bh=aQaKYcjLe1aDPQN4PRLBx2yw3C2chm9Tq1il/Hi5OZI=;
	h=To:Subject:From:Message-Id:Date; b=CfAcM4lk6y2wy88NgSgKhItFSk03mviarsCFcbDmBaEzL1+ixyyXTzniOB7jkowkZrQ60KBF2ZX0L2lTYwGY6srwGinpuX7aqrvo4LDwlzatRBfp0irEIlJDiSp3w8UMCc5ZE/Yg9VvBG53cHy/lXTk2EFpeBqkSlyp47Fz2R9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHHtuARk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHHtuARk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2AC4C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719620063;
	bh=aQaKYcjLe1aDPQN4PRLBx2yw3C2chm9Tq1il/Hi5OZI=;
	h=To:Subject:From:Date:From;
	b=JHHtuARkUbZ1bUek9MPetsEmYX7quIttucPJGrfG34OVqxHmTyBu1fwyMdzgXTCv6
	 DPm65b3MctLXS3rk6SAJPGhThxnHNd2DzzJGf9PqejIWWz3b7b9O5JQeKjHrwxyuib
	 P+WX8CJWCS5E1jZX2xliwqukjHOUpe1VpBHFWFgm7QREWU0K5NLlIhvOCSFqjX/rhk
	 KWovRCa9KlDpe6mg1wToxAZTusQIXx+Hv4nXSQ2YV9FfvYdCg7jwdvAs6xWXntEk8V
	 JwQKmUMEesQjg9ZU4CmPDD6HshEWhc6ROZy4DonzR+TVIQZXRlKk32m0WdBtXeHjZJ
	 BJp14oYE5DMfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8FBCC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962006283.14505.10126025640929252520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43015cba50724978586784abb69748117abd5dcf1d86d0aee87f609e4f47f642
Date: Sat, 29 Jun 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719620062
