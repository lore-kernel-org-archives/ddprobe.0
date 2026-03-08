Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C81393DF2
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772998494; cv=none; b=Z+LhCLtKn0NG4hO1KikuCKt70J0aq7zfDKpVRWzORqxwQcCuoGXhT8Qe5bd8YuHM0X/gu0ItNI0/DTQVnwYHkD7taaP5HLWTq9/HfhQecuqlEOzqeDOj/E3KQhh6IzCXCjpi2tI6Q6HrlIgFwvr4iX/wohWstPBMy6TQhvDUWKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772998494; c=relaxed/simple;
	bh=z42LRiQdwV9j0BbgwlJebP8ANDVT/y7Jw/3AjpK9lW0=;
	h=To:Subject:From:Message-Id:Date; b=WeZTqCEpBFGOBsHxMzXQdwM5SH8OB5/1JfMbc/RPJ0NuWCuoJGLjae7PfyAIC0Ehxr8bwDGG96GP0117m0zu5kX/1f70X46Ejsha22pPFa/9I9ViFEkVlXd7MnRVtY1C0DH41qKRAc/m5HY0a7u8C23gzzt4UOnWZVnYPuytsrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4rZTlCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4rZTlCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81D3C2BC86
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772998493;
	bh=z42LRiQdwV9j0BbgwlJebP8ANDVT/y7Jw/3AjpK9lW0=;
	h=To:Subject:From:Date:From;
	b=g4rZTlCXpzkJRcp1rDPoRLZVqX6f7X8aSxySd4rMgK2ILvrNIfhwok7SUJMg7WuuW
	 fqaFRLP2iB6s29QoO/UmV8jt5vyORESTBTTvTLm1mu2yqCkHnBlKU9HOYn6lpZ6JAb
	 pXSJ+lIrPBDgRofXp3Tyc3z75o9/kX/9pkiW0V/+qZ1gsbothqNskJOvsTFaFDBcpA
	 WUWbdA5i+3wuWMBgqMlvONqHlXPl1xYlyp/603cvAWc+vBZV1dEVDuWlqvbhB5I4tJ
	 OiXSofck6xw8irtDVNGy91Kj7DT/0RLI8/z7OgRgHpCCR5ttkmjBx9rmKWnfCNoFg+
	 MLUQf42Mt+lCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF5CEA8545
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299849363.20123.12710159910196045534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a66db42c6f31adc223e868edce0060a2cb2297c0649c7baecd621b9dd6b309a
Date: Sun, 08 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772998493
