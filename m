Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBB72248A0
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780263274; cv=none; b=FCdO4C+OkHosf9EnqTzoAzq8RWjM0i2NO9pKkA2SYR1gGXykAWSk5wnAC4uJ36P9eNg7C04AFTVHmni1rDBolwSUwkKfxuH/YOXsWyiRxyGqNaZa7kU+PibPk2yfU+nNoney9TUCL1uUSOyqPgQKFNTSDLXvNidqhsjFI50vGcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780263274; c=relaxed/simple;
	bh=y5BjBxpE0eqU8Dq9AWggYeJZzoMrOsNxmGtG6SySd1g=;
	h=To:Subject:From:Message-Id:Date; b=DW2dUrRnwE5FaUZubcqctAumlEn5iANxhLTOLuX7k3okuPMqUhhRE/l8+IFGxnEwYseBDc5TkMuQ260ZRQncq67temA1F4tmsWYXO7pa9wcJAFEhbWh3/OPLHNAqKoRo3+1s/b+E25IgChM/qweRP31pK7NZ7Mj6kQPJb8MR2Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6W8Sy8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6W8Sy8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB49AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780263273;
	bh=y5BjBxpE0eqU8Dq9AWggYeJZzoMrOsNxmGtG6SySd1g=;
	h=To:Subject:From:Date:From;
	b=H6W8Sy8XT/fZodUHFp/w8AOgn4ZYx+T/hcDC32rvgOmFn/K3J3mApqc6jv2/oT9q8
	 Qhf/kmdJIaKIWt6HRar3P+yVGv1arRTQahNCMz6cehCCM2/v4KQyMLoD7iUrEfmtkI
	 l2jiIkF+rUfDAwcudYzvVkAerHlPQrNLM9LKzMrYDHeFDORj/0QTCvEQucuj9wdP72
	 CyOs4VbbDQumsFUs+ZgNMQ5IBUFbu3rIQt2DfqGOCYjx0D2Ygwv5Z0Sn3mTjt87Eih
	 aYxGacWKxoab/aogg0GlyVlujLCjK09zB0QWxpQaa+VsiIn/TptCmo+vhPZyYDlH1r
	 sxGg2GGXkpfkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD63DCD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026327370.4373.17664036333082694630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541ca474031326b9b613a76d89a6e44a0b48131ae5a8649e031ffb5dcd251313
Date: Sun, 31 May 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780263273
