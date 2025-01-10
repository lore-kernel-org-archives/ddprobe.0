Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2280118C31
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736474154; cv=none; b=psynHLLRY8W3Xlz/k+KLQl4+qTGZxBsIUX2wk4OYAnhsUaq/QjihL4OZ/wsanFqD88zlS/FdNJJr0Kd3pWonFep6N1AdbLBzY5jqsrInfUIN56hLmrsQeXGxX4M/cjZHT0EB9YIzSlFNVII8HsHBRIM0jS1PeqAgHNTKwmpyg/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736474154; c=relaxed/simple;
	bh=bBI4+TVY1DYmgSbVqg7N3tlvioHPylgKC8x1FdztK50=;
	h=To:Subject:From:Message-Id:Date; b=eh0kWaslEhJkiWTQfDr7fUr9RQQ+WyihzhLxdT3OQ5qrtHR6c4R57kdKjxJ7eOiU4tVBvNkK0rz9fqgw6oYFwTFQA4alrPQSfoH4MpyajYhJEOg26pb5RE+Zw+x6ZSrETmxCdv4uk1vWinQK4ajxBCUBNRQ4VOEJLjeXHkwxqUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HA5/yGCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HA5/yGCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA50FC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736474153;
	bh=bBI4+TVY1DYmgSbVqg7N3tlvioHPylgKC8x1FdztK50=;
	h=To:Subject:From:Date:From;
	b=HA5/yGCyDVf4M2HQR8t7xx3wWjVJAYQ2RZv9jlOeeRWNbkJY6de841pmiCz7N5bRF
	 xS2lKpd1zHX+4QD5woclXIQuAX5YKkUxnecttQo4cT1bOMdjng7LP/U9z6Lh26KWSN
	 93PsF70y8+l/iDnJyBzsJIp13RTyXPJCBq2j2qf0mVzEg/DLyiZmUDyvT2MyFGyPgc
	 ccBNvR0R0+2/S1GaGFRVxA8YWsI6/BliW5bJfoowJfzYv1UzylqaMRgRp/78oUDSpd
	 12sr/4xVj0++nrJvtLT2bSOZmx38RPQuMH1jdoXJK2MMWUABADXV1fz67qacEzeJzi
	 N/aDCnVoXuFTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD1E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647415358.19162.7179231873094453218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8874f6f650634ffd864663a40059d7840adfdabc8a752437bce43ae94351e7c
Date: Fri, 10 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736474153
