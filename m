Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F0842050
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788712834; cv=none; b=KxUL3jyoGhe1Poiy8JDbwjl4cnzkCNsOuVlWoqP4H9Hf1nT87iUoYD65QnDSU4NqxcPMebQPqPZDOLql6Qt3kOeCGOoOOzkm0PhiGk30cJs8g2myyFHfcBBjVOGgi+Xsg2EFnMwdavFUXlIVmOoYqIjce86FXHhWmxQF4dii3Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788712834; c=relaxed/simple;
	bh=XSL6dM3Es2iYbVnBUIY66cpb8mV+TzEc1XSkJs/V9O8=;
	h=To:Subject:From:Message-Id:Date; b=Ig1OZ+qu23poIwQyDndGzKnFgHXy2RKGeDMCRHt0SFnEdXlMSnPL7XSfA8BezxvVl1Zsn6qr9RyqYMMOs1ZLp3wEu8RPYg0pC4a/021pvLm045U+u9XcKsR3b4oERZsg/8gvqhBR1wJ+vzXKqb1/2Zy3QabBQ1lgEE2m0TzdoW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPGgh7mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPGgh7mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD569C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788712833;
	bh=XSL6dM3Es2iYbVnBUIY66cpb8mV+TzEc1XSkJs/V9O8=;
	h=To:Subject:From:Date:From;
	b=fPGgh7mxVgYTYira2mreoAneANUD4EGz9bCvhOi9PioyDic4LpGuRg9JZ3Z7Wletd
	 ICehD9kEmg3nwhYgk4bSpowVPKLdLxea61b4rFQQowjmpZyQrLzHVaLq0aGFDQ2OsK
	 Hdo0HJ4bllccJ1Qsx6ToLUpouD4GRf174FxqSPp6hH/U2pBY6j+fv6D2Z6liGcgzH6
	 RPgf+FyNbkWDyzkkVDW1vCuXnBQOx9/7yMxQijRy0jyg6wUf53JM7+9gPgdOssh/Sl
	 fmLWqI2tPMzrUF9bIUCcPQSCrWJJ1ff91oI0oLkWYvAQ2ighLTTa3Qog4BNl/sgPbO
	 qAPGUgkh8b6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EB5C79F9F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871283374.582.16415830352375989136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e7133b609197923b8ff6c5db886aa0e9d07fe2cdbc440280c1f68a85ec5d12
Date: Sun, 06 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788712833
