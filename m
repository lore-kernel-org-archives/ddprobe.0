Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287B42DFF04
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771275294; cv=none; b=LzxdH/5TwGqC+OyuyoKFZOEyWuAeOyBe65JqpoGlUnD29EvX7MgrrL9dwTq5RNA/XEnqXmsdnq/IMwNtKTOoTd7GZfA6wQzm8eBiiGhMJKUDLpofg/THx0SCoPDxv6rMmFxTNO4rIv3VgXNzEf+1vkm+Xpxpei9/AqbsipoQ6B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771275294; c=relaxed/simple;
	bh=95laeOl12pwri9fosAln4Zbj/EPAaVEdIEQbBiKyt6M=;
	h=To:Subject:From:Message-Id:Date; b=jZjfi000YXTdBey1glSOX/6/yZ+gxupXAzvXOyDVlgT1KfhvrURMGb8b0ZtXzQ7A5ieBcV0s60uYsbDD3IECRZpSczX/6HVwLvUkQG314IYnuRopZaoUL/bBNhV7qt5zmItkfvFFLzT4yIoglrnIApAnfP8lxeY5VCCU/MYL27k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYrgrCnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYrgrCnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82F8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771275293;
	bh=95laeOl12pwri9fosAln4Zbj/EPAaVEdIEQbBiKyt6M=;
	h=To:Subject:From:Date:From;
	b=gYrgrCnIMW69Lj6KZUxIn/LL8yRzMp0NH1KFOm9OcXagqJNvQmq4McfWYIoEDR2pk
	 tLROludt4AntZI87L2A6RCzgdPwFwljibhAsRjfUmN+MMQ8XCb2TmiuE2dinEuvCSq
	 6Sb4UyFH4PxlBYVw/gMtMFnxs3UBPE0phPgrGicvesttT6PYKVwRue3d9F3VXj0SCG
	 PmaJYtyqlm7PqXyrV60Y0vJvp+6UfY377nvPYKeW3VaA7JdX2k5XS8R003qYlAmw0Q
	 SHAsGUsktjq80EbjCoIdjFQROSKNRx5YLDfBrV9dbKDwNB1iCt7bsIObr8riL9sU41
	 3zHimDXt1X7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96477E83834
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127529360.19101.16909502437151092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e386130e38ea75d1eac75353877c2c3c6dad986b78a1e93d369d9a86a86ef3b
Date: Mon, 16 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771275293
