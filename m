Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FC9DDD2
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757730594; cv=none; b=V1V1BevkbieMLn41g5j++YEHAa54zebRlOMESPf40Qq266Q2oqUNLCZztpwgYuzsQ/JpexVjiQN/4l0KgVzgBKRfWNHIVc4vpY4uHbsX9ZRWbhuuMdyvHFsVcANi+/gQPL+cqp2yuM9hnsUzkYt0/qMe+wax18hK31CMFlJpWHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757730594; c=relaxed/simple;
	bh=1kEQ0Km1UfeeRlH9IPml4fHGY8XaqhbQjZzsERS8Byc=;
	h=To:Subject:From:Message-Id:Date; b=b5rHRnevewEuq14N8S2jlNkhhsnUq3WzmLG2axxdJoWo3HyiCLaxmeg+l+u1CAGqzUT1jPc04mizcXxjhzuAc7W4LU/t2O3VxWzvdr5ybR/gH6eeZcnhlmADM0Eh3E9m2N6dANvn27AeLnacQBQJuj4p+P9vR7C5gev0e/VrZLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGx7RoHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGx7RoHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757730593;
	bh=1kEQ0Km1UfeeRlH9IPml4fHGY8XaqhbQjZzsERS8Byc=;
	h=To:Subject:From:Date:From;
	b=GGx7RoHXxQgU7geQ8aw2152bci/uF6O3ZeXEAf2WCKgcMQw767pZsLCdZaRyF47Qe
	 TnHXm3AQKvM57g9DhQm0E6v1iROjWwdd76+uyh/qdryaw31wMHvmAjdlxoHEzgDvua
	 PjRD4vsI6w0v/CO8hFqRIdOV1jAx0v2SGL9lBXbPG7sbs4mMmPgofIP0ScYPJIDh9k
	 4IRm1nVh9g5g1Owp6qWQ1UhpQ6E/jjVStC47hLWLGEkcYtUm/qH1TB+Cmn+TUxJ207
	 J+zfleesq2LvLxx0JR4AwkKk9a+QQK7sTqU1LJtawBTwilEEjkm9MJQqahard+D3pv
	 hDx4eknGjRD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3CCAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773059357.6084.8456992410274958556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccd208c2123c98dea62eb2622d175adc734d8661c2776ec2d06c165ea3b264c
Date: Sat, 13 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757730593
