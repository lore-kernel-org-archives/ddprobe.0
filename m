Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D1F1E515
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721342754; cv=none; b=YuD8Szr8ieodyzo0hek6mCYzFth3riLmF/hOsvdxha0OK93dH1ygEg+2iswgM10ZUJjYgRrd59JqbUWaMUqpfpDdatrBi2VJYvccm/3uo/ljlf/aVKFCrgm2kHPpCZgAieHKvZPTh3ESw3GIqXC/9j2ODrYxtNtB4/yl5kFOJYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721342754; c=relaxed/simple;
	bh=9bNKUtRt2RH87T8rk5/3wnzkmMApL7U2f3ChqUlJBEU=;
	h=To:Subject:From:Message-Id:Date; b=XoZU6lj+HqP4FBZzjXhpRpRuH+fa71FqxjF85ywUhDQVXbzkdm/hIQ4UwdDfMHDtpHpcQQiS36OKlkOcPiCF93CvNPLIHrFAEirKZYeCdt3CWoaR88qLVmhyEhc2TsHEWlPO5qAFyuIxVm87o2YCf+/UtWPej4F/6VlWc6/mluQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUs4wMNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUs4wMNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC414C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721342753;
	bh=9bNKUtRt2RH87T8rk5/3wnzkmMApL7U2f3ChqUlJBEU=;
	h=To:Subject:From:Date:From;
	b=QUs4wMNeu7xOz9F5ZQILWWOwvSSofh96DK+CLy02cQwpA+zgb5SzeDpFRgzHIwoYq
	 mq11iXr3HRsfEVGgGOA/CiCgPvmi0uL8c01Ktbycw8dQoHOISouUFYC1Pf5USbqgWK
	 JS+hKIXTSyQWVj3d0P1WJ7+KYS/J1SAz/mSveFOLPmt9fiJE2WwLr7tkjW/Ye6Uw87
	 fkySwugul8UW8kXTrRXr4HgUU5Ox7psun3jQfVmQ978AEPzFgVfQl4/c/n6E2nA34B
	 cUjlc6P6Udp4C5055WOKlAsEX3eT80eKCOqyjsGGJs/o9qbqj9IoLaB8rK0E5VgNrF
	 bFoshYHvF2dVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E43C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134275360.9959.10360456250889211921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d039c4c9be413d404c9160d71db03a8feb593af27cc4ba74f39d752d64cb8a73
Date: Thu, 18 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721342753
