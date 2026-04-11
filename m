Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF423EABC
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775888854; cv=none; b=k01A8G5ZXbAQXS5/2vzrDCtbueCyBFnij/XNZwkdav30/XPonsutv+czqsny15tQaJFkDcozqNP3rtz+X2b9zXOBnghrErtzspGeL1GS+NQA2oqkz7M1HelxZL5HFRykhEBMqagfYWYQctPREAqH0U8BgfPTkF89NW4HdhLmImg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775888854; c=relaxed/simple;
	bh=GJNZaGDixdkqWmBTYq/paz90nTauUvNkuTfZZDr3N9I=;
	h=To:Subject:From:Message-Id:Date; b=KwRu1vdWSzOwWjLmjVqzotqmAgH9o8+ui8neQqnNdnZEyQRGY6Vo97HBJQLo+PicFhtALVuTIdMh19uCoI++9HNH9Jg6vIEbOWyLmK5Q2peTK6Fj2JIFPC6cmQickNuDSjzfLSs+a0y8qmKlYNDAVFjwVZ+b/3HEZ+RWlQV/2s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MePoFoQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MePoFoQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A18C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775888853;
	bh=GJNZaGDixdkqWmBTYq/paz90nTauUvNkuTfZZDr3N9I=;
	h=To:Subject:From:Date:From;
	b=MePoFoQk1B/9odJrejYqvko5pwAsrgDdswQCPSo+xAfg5fyUksRU57HTJr0x0loWi
	 F0s3zwRiNt4N3oiv6xT8l9gtEYneBF0YVATlV0ji9IRqjo6mslu5TcgWXDPFsIdPlU
	 6T6yMNu5qEoVDhy6JCTWZ0vlbY0y3gTSogYisWlKAIoITzaxO6ZmuCSH3wyMFIkIzb
	 dld9SwK5/cqK0R2a89cS89SiVyZv5gnZHtlwovfY0XhXQ/gnWrZufPVO5Arrk3vn5B
	 XVJqVfvzjx1nmFTTre+oAL6cNMj7rLd0D/ZVZ/6tFJYwP/4p6S1wRNCUnOHKOJcwbX
	 zh0RNTYSh6ykQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBF6F45A1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588885368.16573.17655854974893862924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2247bdc4adcf41cd2a31b2dd2f06dbe823198d7ac337f4d65d3bbdd9a26dbda
Date: Sat, 11 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775888853
