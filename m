Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A7F3AF66E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782498514; cv=none; b=XXFeUgn6lA5E6FxaLHlZ0TFqidOu8BkL+Gql/iMnQ/rsI1s1hDyIjEh8SCT35SNhi3Zk4xgxIW0rRHp6t/5HYe22oAIrxvMh/D2Nh3IMRhd8DQVXIpkQ13H6N2PX9g3fYqHqwMhZQfwjq1s1nD2Z2dgg6x9BMy1rrjCWR69qNKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782498514; c=relaxed/simple;
	bh=sZQ+bBdHGry0x5HJXtp4/rU55E3+50WUFGexPgdTke0=;
	h=To:Subject:From:Message-Id:Date; b=QSzqxGLH6QjWmBCL8kN0QiYo6ZuNtpBntSEawZv7+Ffroe+85zIc7jLOGg1N9o5payT95w98Bfkfzs4LTLPwMsVRbcM5bEAkGNEUUBqV/B5ki74n8P732TI5LFMF3SLYGiPyA12+2jev1liGZqQ+5QcK91cnBKWJVkRG1FV96Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnAPQXJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnAPQXJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 230E7C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782498514;
	bh=sZQ+bBdHGry0x5HJXtp4/rU55E3+50WUFGexPgdTke0=;
	h=To:Subject:From:Date:From;
	b=BnAPQXJBd6VcJoVyPcHEQSttF9ZympFvkLaOjm5rPxZyZMYbgAkAJjBqzuGW2WK2c
	 3ZsVlNWkga0KPlI9qNPGlbOuAkwplqVzqFcvrzjKzaR8ixM8oOW+T83RhYnEZoriW0
	 LrfBxQxLQ0bdKkcf77ORfHxNe0dVAPNt040Yt3eB2+K1rTRBNiRTG0tg/hPX+zv3cH
	 a/TWVzGPhd9HSwdjtsJxSkqE0eS5Lz8ulQjdY1ailFwlWdDNsT5wFhKs5pgvd7hACA
	 K9zLboOgwVS2syTWBieWjB5XMeMxmVsIsY8sRdVv6NzlQwE3KUdkyWpqI8S1l1VbRe
	 mLVda90E7lUuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6808C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249851369.20447.148167441685965328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbe8d4c1d3994733282abe2cf9fb129fba0962a187456d43125f41f7d7e7775
Date: Fri, 26 Jun 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782498513
