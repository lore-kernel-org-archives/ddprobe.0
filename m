Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A272E8B9B
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779760954; cv=none; b=pyGAbPn89aQT0PM8/n9TUZYP+ado508GUF6jhd2t0qWMvIbE7BeAuEUDjE4BQ0pIZJYJIUzuc34VGt7hJCPuzTyUrUXspXIwmd1Bd20bOEBPw6CL0Ze6ZVjU7LbDgehFiVo4EMB3EAibkDD4bSnmpLBMrXlcMJ2SWDiCUiwbAyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779760954; c=relaxed/simple;
	bh=DUkbC8vvFtqkUGxsx9qwe4ss4AgJVUWUm2fEg6jmoBQ=;
	h=To:Subject:From:Message-Id:Date; b=DIBVQo6/0kYgOdGYfNkbuZrAjGwv4gtvt8YW4r4R9sIRIpSjgD6OZYYhcnBdoUOj/0g1z57T11FBkL2/5R1I8OZHA5u0XCrJbMmh19qf3leUFsikecwTmnlckrJt4PwqL9MReAUOZE9VN0k2lancE3b9j0FXovodFNk/jc33S14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+mBaGWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+mBaGWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7753C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779760953;
	bh=DUkbC8vvFtqkUGxsx9qwe4ss4AgJVUWUm2fEg6jmoBQ=;
	h=To:Subject:From:Date:From;
	b=U+mBaGWI8HrD/9molQ5/IQUswrMwwy+ZncCHYcBLjSrVnngbDyEEYsNaCvCApUYKm
	 0S3c4wEiETTQlpwIqA8Jfvq7HjO55j3RyRp4Y0iq22udtr7vW3lTfPoHFCCS5kglrt
	 CbghKCZMRM2RkyjbOdzchLQqg2pBB8lEW7qihcs5Y0NvYuW3SiGpp1SJxfgvs9zflu
	 sB7J56B/2nzT8UIjWLOwdBmQlLQ++O6U4e03vmfK7ULWwfB4nHXxQkP28M/6e34cF0
	 ntS37hPLyfcihoLtQKCTkrjrUMkIG7zJHgVh1VCugHHe8I/B+DoI3Z9hCGpKHFmjyr
	 EfIA86Au7XUmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD95CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976095370.12803.1963742824559902966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361608574ee4fd643b55c09e547d24e3ec9ede2ab31c6089a0cf6feb64657877
Date: Tue, 26 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779760953
