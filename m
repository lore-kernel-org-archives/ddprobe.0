Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A90B770F4
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714563143; cv=none; b=O5mQrwLY1y78WOVhHy1iF0/EkHR0AO2R3c1hj5QLRjXFKTJzBMX6GP4VzQqxz8Cob5qrcFgZqxuBxXPiKQLAXmalyhXcZStPZLFTc38ZAj1BScb2+kFOEaxWmVAEt2f4th7hlfPHejRPLEND78P7tp1qbWaKZI6+ugedWaOTuos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714563143; c=relaxed/simple;
	bh=fgytu8R5UzBWLgG78JNEotmwC5wpqv4LVa+elRS1IL0=;
	h=To:Subject:From:Message-Id:Date; b=u5zyYmuCzlpX/aPmfG1aSoQhqzK6VFFdeHph6gqVx2N8S0ggzC07hv/0nw3RAl/JAfc+/CCrBJwCVxtqSfR7QiTO2qgT9Z/G8FL+al27lqOazxK2xtLmHMwSNJFWipkp3bb8Dy+Cr4u0qT+8e53qWEIbukyENVOY8ygFCYdnPqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uatHeEmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uatHeEmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7272C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714563142;
	bh=fgytu8R5UzBWLgG78JNEotmwC5wpqv4LVa+elRS1IL0=;
	h=To:Subject:From:Date:From;
	b=uatHeEmFmTM7Tf9IgGc4EKa0rgs6nfICZzXYCDuQdRM2tduXPgAIDar/uNe5WTvIe
	 AXfeuK0NJ/L7mxHzRqo5/5gLdyXErafn1HBde4DfHW+Rtcd+fWPaBckB2lzl/UKqD6
	 r8Bpti+rXyRIW5aCSKCV9vldSIw6VUnFoPJqms/yzOUy5aJMDa35b7r6qLXR4sKB8Z
	 sJFJxmwGxugQBznpTsHhkIIYtgWnz/Z4u9O4Kqu6G/BJbzzb5t4W1GNLkegnBXImZg
	 UJ4OaUBP78kVmZUe7DYHSj7Cywfpt+BwRpPCNK0PyYMyJ4ywt28+rlq0hSTiLs+7Ju
	 kUjxFHFMfU1UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C188FC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456314278.7267.3168854854930222886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e9ffd062b9ee6e8e903ab26df2563ae9878cd0638c3f1223deb95fdfec26d7
Date: Wed, 01 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714563142
