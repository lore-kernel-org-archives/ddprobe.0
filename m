Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C6B25782A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763361114; cv=none; b=R44AwQ+3gVXGUUAWG6UPVuegzBVmc7sQC3cM3Fvs7QSzI/Yk9hDXQMQBxjYgOVk8NFZyZDUwal3WvZ1eowg0O96jgUhebJzuLqq+MvovomKXV4rlDWSZucCF3iUFlJa2KxSQnw3pIEGbdI5b+SQ7hiGUx13UwW3kV1Yt2FQyuvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763361114; c=relaxed/simple;
	bh=i4pYroYrMtE1c2hFQra3LGwVICcb3fYBsBFUxcuc6ss=;
	h=To:Subject:From:Message-Id:Date; b=QoUs4o/X/ekQ6EIQ7duXt8iqjkh/qT/K7cshEo0KB9dXPzw8/KNqvwuymON6T3ClwkBTTo0JXCRpf112lObE5GPcLWc9zO1rsSgN9P6obvOGIfORZVVNvpc8/N493cqLRj/Jc+VIs9TLqedZyxk0C6mtcgghi3/ahWOPnMvyEtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSwi3twA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSwi3twA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1201C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763361113;
	bh=i4pYroYrMtE1c2hFQra3LGwVICcb3fYBsBFUxcuc6ss=;
	h=To:Subject:From:Date:From;
	b=QSwi3twA24LBypj5vyGycpmsfeCtuuxjPewoYAuOECCkOcI8GkutXpz8bedh86tS5
	 zA2974XhN88JPyk+iBHj1LnMi4Z4pmS9KgS/Mixd0grw/0jcTfDOMRoC4p1mu/hEve
	 MlNdOj+PHPPJvphbCfEWyr/WiDnmYS9xX9qN+ReSeKQenyDsdjTdynQ2XvKymWC3Sp
	 ZBbyKVf44HhFvGAXYRdvu890FdQvjj79UaxvYwOyzluYEPM/s60ivdnMjMwyfkAGI2
	 wgjmzcKCIHGQlNPhS1MvbqGk6cPwTfrdV3rlY0r/dyY53/ggMXvi8l5eCOOZu5hUpW
	 TAjqRhiMlkDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90569CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336111358.19869.15974468515244523384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66da556d8711a32b0c7acaeb2ed1717efc31697749b04f1f9655ea09efe6d284
Date: Mon, 17 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763361113
