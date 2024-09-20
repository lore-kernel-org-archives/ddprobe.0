Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C47F10F2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726797954; cv=none; b=K/i4AVREAEOwVOQM6w8CjP8BDAN7F9tQxyabBvDihDJhKCi4chWzlo2oxh0QgaiB2tYkbESTtfRXQatqAsD7JiRrWWZ4w6YbNu+ioCkCTy65J2QeUL5tMA51bqx1aTUpalVG9I9w0e+C6zFGRJcAgxazgNO8blOGrJRdx6DMEsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726797954; c=relaxed/simple;
	bh=An3dx8RxPw54l+MJyQCdeOJm+gOcNbrVqA/X9J5humk=;
	h=To:Subject:From:Message-Id:Date; b=LIWVGBh/h/kW/6XBgcu/Bx+AXPKW9UuP5YBTHQT8MfmumGwZ0ZB7LszYGLCKJK7Z+wgFcYVjqFk/osZ12FL6eaHwchxoHsWde4IC/o3/DbI6Sr4rXK2sTJft/w8RsCKeEdKVPHMXEyGOffjLAvtAt9SbySlrm1Sk/X9vxpsiJtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FO3CyydP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FO3CyydP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1145C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726797953;
	bh=An3dx8RxPw54l+MJyQCdeOJm+gOcNbrVqA/X9J5humk=;
	h=To:Subject:From:Date:From;
	b=FO3CyydPHuaO3cU6BD/jCyFmqeF00bQj+47KFtEEHZvT6Pq671DVrml6ehwmeuPj1
	 kXwYNdBe45m+rAZH4khoM5FKlLfTlk8UbgVvN9VXv864Cj856kLP17GiW0Teja0suE
	 cFGzahH1M2s3opyxcZ/VvGjJUCHhi94CzDZd45pKZRQbYaB/bINx5dCkkw3bX3jnbU
	 /Gvr1dknwjfuX10Hq1anw3GnonpbRKHeDu2uL2HXbXEE4NuAcirP08dN/jpYmZLfzG
	 x1yE7tp/sr3WSdW7b4HZS3ugPHuyG+Krs/Y+Q3nJKXUgPdr7BKbOEzrLvomiDqvF22
	 9D4mD+OPjmh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A111CF3964
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679795362.9109.7905395878396482282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a747b3bc68c6f2164ed783338ee8258904e6edc4611e6886ecf5e584dd7b4ca5
Date: Fri, 20 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726797953
