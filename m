Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423184C97
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317194; cv=none; b=YshdD06ZXeq0O/e9KgqBNyrva0xwnJIlscx8Z7jgOcJD50XQWi5EgwdmW8Rt8ojEp4wIfB4bFKOPtGlc+EjBXiLMrfUzDCRpCHtyP1tblAWybkXnxeC0kQ7hUDi15sjJY//+99Sbp5Aqgubtquvkq6BWJvTLOdEcV4ISj4uuebc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317194; c=relaxed/simple;
	bh=03k+UsFrOk7SY9akPP7vyIZwzJt6MRYqrU8KESn92gA=;
	h=To:Subject:From:Message-Id:Date; b=azA6s/cauAO2BqOBoxYylcgwwqh7pEE/Uhpj8kbYRGqTRa0DWz4zhR738TrFpkFq/frsvHSiG9c5u0aN4S1HaEOlsBl+VvK0xp9bxwMtw6qy3haY0+1jWik2IVUPpp7OMlW4VQNQuf+XmhN2ZWKmNJnFrXQTZe/pVYHV/YJJ/2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCDV5s2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCDV5s2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE934C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760317193;
	bh=03k+UsFrOk7SY9akPP7vyIZwzJt6MRYqrU8KESn92gA=;
	h=To:Subject:From:Date:From;
	b=uCDV5s2Zoo4ulg2wbSkU82GFKTWhIxn5I39gkIj127vC+xZCOQ6Ky5aB3Z7MRtUas
	 BTaYmiiNYJz71Hjpc7Bbx1aUqhHK5Yc8qmi5vUJabDjiMDjWWXe+Lhv/bFRTigrrr4
	 TAI+rAOZH938+IcxaA2cthqhROaZVaWiqvX7U3I9MAwKYRaJ9tbHHgCTK/WbC/udPD
	 l9hcKK8EG01Ti0kAGwhnXKAUfeM9kdv7n1gcv5AU6K70+S/INbMWk6AxsTtNbrkIlx
	 rnF+JokkPbJwSyvmeHBMW9SIYVbsxtbdWnUpWXMnBMqT95XVP4OFJv+24YcOlv+5+F
	 vOFVlcyrGWOLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BEFCCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031719358.26994.1538387685743290415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69609b2bb8fd2f4ade5d81273f590bba942081bef9a923dc1c664c96bc76a833
Date: Mon, 13 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760317193
