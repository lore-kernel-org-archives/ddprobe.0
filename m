Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB95A935
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717996043; cv=none; b=Evbhx99UrygcjCsZS+yqJ+3QGBEZLp2knCDM4MoHLxLSOsG0JF3fD/0cRdajoifBzToh0zM67ek8Xx4nM5n6JwMyglPIOQ1ALqf7J2eGEgt039ZUQSWOjvr7QcnFKbgQk5Dd6XaQcet0O1eB5ejCGO5CrWusALsCl5wrNs2p+Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717996043; c=relaxed/simple;
	bh=hqJKrodFQ5hH5Hyz4QeQ6Qyt7NiveWEHmoJ+yUeq/dM=;
	h=To:Subject:From:Message-Id:Date; b=NttOj9IsuuZTKwK5LQPYoCKWj1M4oKkuZbVX493MufcMmY1VEtp/KO/ebVstNvfLJJ9PlDRVEZEGg1HgPWrlWBALYQFBfmQNYRu8A3O4HZJJJ5OpH6GclVGQCaskgAH7ySvblevmN+EuMgDlf6W6vpJJD3E8mpGLIk+yMAq6DHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcSHpIwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcSHpIwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DF5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717996042;
	bh=hqJKrodFQ5hH5Hyz4QeQ6Qyt7NiveWEHmoJ+yUeq/dM=;
	h=To:Subject:From:Date:From;
	b=IcSHpIwQB8IdksdwaSlABH/7NtLizbEKroq7HcuzA4kCqYYzJy8JPKHMnhe/aohK7
	 6JP+/KYYn8dyJOizBd6Z9sCkP77dZuTXQp2YZiTwKaDVZNZFuvcrBycXTmNl7uXbXS
	 Z51plWAGxYQ/6mrML6lJEK7GVnJvESDUj0uLc00VOLb9b+DYs1lSjw9o1y1bmkxJHL
	 0OS1qCRohHccjtZVbsuhTABFiuAOziDnMdMPH1FbiVufeT13635H5u1R0TXF22o68v
	 NNdikV/brfLlrApNm1j3H4BLoAXNvobcA3YY9MwCa/ge0MboWW2OilayyAdIebJ2RV
	 xxTuJ5K7TfxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD684C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799604280.31163.5069768094695953729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed8e81088cb6f5035fd2998f6ee4190cdfd06ac6a10762ec192ae8b26bdd9fa
Date: Mon, 10 Jun 2024 05:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717996042
