Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FB521423C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765375974; cv=none; b=BnOJOfNo5/fkG69h5r7P/ZHvP8KzRWwtx0eESlhTJnZlCN2nxrqRtVEFHSJGu2kRBOkj5bJOtTRPl0ZxqJ/8DyQbOkDIr26yryqmvyy+uVYgcQlZoOPzNxWhjGAESxtzZXl9Zs7p3cCGtGIhJetCMy6swUtlOVQSbILHBbIimSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765375974; c=relaxed/simple;
	bh=FS0UD8UDL4+e6Iro7YZocBLrQ8T494iK06mlezc+CwM=;
	h=To:Subject:From:Message-Id:Date; b=Be6iQUWzRb/GlMCmW/z48Lihww9kHEXQlT4VfMfJgccSvWVopwIS4AmhGNrGdJ9wNoCz0sLwyOMczZADW0PxyrAw/40Amk47za+qo0HjOQk89raXTRyBgZBgp5qwAZrQKFRstA+wsj4nxqYjKbzafzkl/Rb7VUTnhyoIjaJgnOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIp3J/kE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIp3J/kE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C8AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765375973;
	bh=FS0UD8UDL4+e6Iro7YZocBLrQ8T494iK06mlezc+CwM=;
	h=To:Subject:From:Date:From;
	b=bIp3J/kE1UbpxvD2g05rMfvml5fx8NmK3aF85r/tCm4YWfENBTWxbhmez58ypmN/G
	 Bv3SpCozwQO0fAXKMkdStke+/21UITm7MhS9WM+M1E/1C9WrCvHYXS3aVQjATa2Hdd
	 9Xmd25zkP3nZlZQHTjmJnsb1wtxmCzMwnr+C5o+JVXZmL4T9RSifAkzeVJCjlEPDY1
	 eFTBIQNQ59SLA7RU8Lk8W1Nm1IR9tCjtv2WUr+xAXzlJy63Rj6ZCrv6QsIEqLHXjpD
	 Lq8/ug8dbfRZkUVdvPczisD0yT8kvXKQMI0SYn6HAy7mecJPeGzEteFMC2njN0j4YZ
	 EduIvM1NYqjeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9165AD3C90D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537597358.24920.5196065664849921081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13effa1238ed7887eb411a2b4ebbe89e2207a9dc1a3ae0a5b4b7083cb66075c1
Date: Wed, 10 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765375973
