Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8AC38FB9
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716075143; cv=none; b=BBNcA0Mcp2bqxN3yVqf/7U+G2wL5DcpNLPUOVcijKO9A5gLvcMoXHB430fcbjk7STUmy4K6eYA2w7ZHLu6Wa/I/qqhYQK6XRA9telB2UOXafS8tebG2B6CDOLwKdeuTCNvdt+rww86PCtcVaE9ffbgMATDwTkG8gzU8MlGk7PQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716075143; c=relaxed/simple;
	bh=UfbXu9VFF7o6Kams81iH5GlC0RKqNKyUjrE8hoU3QF0=;
	h=To:Subject:From:Message-Id:Date; b=h3io49utfoefaZyLxyOsT6hLQ/icCSxiSq7FE0Wi26VagZ+17E/dFz1DRjysJ4I359XzXe5NMAh2aXBQCGmriL+Tw2OOlpLgjGwzuA9jMytF/TQoScHIKbEJdkiYjyYXYQXjNz77kKUEECX4SctXunIRfJpyfYIxbRhfFZLMqvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OD0VCqPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OD0VCqPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C9EC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716075142;
	bh=UfbXu9VFF7o6Kams81iH5GlC0RKqNKyUjrE8hoU3QF0=;
	h=To:Subject:From:Date:From;
	b=OD0VCqPw4va0gcCAk50thh7h8XZ2cMdsmdYD1ivUDyJg/44q6F2lMsWN9DjdcHOPI
	 xPVw6mZemIFC25XvYnAQrMGZ7m/yXVMp9DaomOslks9HJmQsGl4kIQqTe4mDeWTYm5
	 PQGv336rCSOneu/jMu5iqjuvgQSaTBrWEBKqqmSse0hQYxPyjZ+LQDBYIzPCeWuhKH
	 N++IMTtC4X0/MLDVU5Zwq8fCQ90WuTNkfNcL0eEwaKWvEdgX3v6dkdsRsHUYXA/wQh
	 gjz4/nu59uMa45O9QXzJJJ8Fiu5Ff3aDAqC/RI1fI+vPZ9ib7x3f84dX8KRan1FHFD
	 xSwogo+CP3Oeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1C8C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607514281.13092.8209540454698796361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33912ed98ddef297b8a72abb910599c1c522ee02a19df189fbe8f00e30e3d19d
Date: Sat, 18 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716075142
