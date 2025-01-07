Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72CA12D758
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736209555; cv=none; b=Zop6/Jl4cJLPWb40Tshe85cp8GZt57JF2OPYsnJGSZXqR0c+wTQ5O4nKRcQwZimzyR8YIFzrSXsp+/Hrx+pvJiVmG/VaWDZQWRwqK88byIWnE+CBlUetkrDKPvQdH70O79ABj0MAeCuOEvAzkC87YrLcVvaxwmduMl3m0TDyAxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736209555; c=relaxed/simple;
	bh=lyEkCm5SDVSPLdhqBJIHoEBSyfvvSf7YDMwxjh534lk=;
	h=To:Subject:From:Message-Id:Date; b=smCp/cAkjg5brfjlkc8KfOpALPt3Y26qQWB7qWzOw8UtRcv7ORx2wF43597oAMzxr1koTLgbtqUHEm6TQ2t3dCSAL4W25v2BYdInzlK4S+8hZymgU0YfheW9BnYo1qyndiqk0YKShAOLgKVYu/Rt0phuVjcuFl9p86pJcsnGE1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtdAHHaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtdAHHaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02DDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736209553;
	bh=lyEkCm5SDVSPLdhqBJIHoEBSyfvvSf7YDMwxjh534lk=;
	h=To:Subject:From:Date:From;
	b=TtdAHHaM8tE+UBxaoCu6c8mVVTbGUKZGc2VotUcro1YeQvSV4J+kd9TTd168Nflow
	 HpOeY1EGW7ZuU4RVV4L849pYkhpxQNqUn7q80kM1UdjS3R2Ht8MAu9tS64KrOHD1qz
	 zIpqA5VXgFzNb/kLj8SpK8RMQzDjC77GxNFpVH4HMefiKLBMt+DYJY1Aj9KOm/g+8G
	 ZgW3oIeQKcDofeoY9sK0fsLHft0dfvzX/KUTF/SH0eC4UpNO3rZI/Sdz/xQPWxiNvB
	 XvTiLPNUNLgZwMS288hhQP4hOB0tcJIJ+Q7YJ1C3JrwobgyZJpYbDADGu1DcnCEX0G
	 W2E0ygUkg8HiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2073E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620955362.12951.10667179654260772899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db19fb1aa2212cac75d1fca56704eaa12472878fc7d601b0cfac41b977660f0
Date: Tue, 07 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736209553
