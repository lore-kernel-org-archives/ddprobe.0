Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F453F39D1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790855435; cv=none; b=aGrNx8ChDRIOxmtZznX6S3PWEer2yqp5Dqdkrts2ZHa72fWhAsUxrvT3nz9HQDZXW130I2Mfi/6y5UZKpVs7ndyueDHJ7jcCtIbmaMUvyjWhD/hwvbWbWoxy25dThEVbNmaWwP72/rLKir85VnNT6CHmHob7aMlciU2vve3z04g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790855435; c=relaxed/simple;
	bh=6jBAKlgfUaiWOZNLs9hulh29VmI0NpgCImhy9HrJjHk=;
	h=To:Subject:From:Message-Id:Date; b=cV+Ok3+aUqLlMBNqTBqrrga08Y9xkHtVcUMx2Ad4jUR5HW62MK/dbE+ugk5VxrpQtugCLs8g+55bFFQOxhdc+e0WAMB/k1Okz5EJKAjn8XvBuTOVJ00rfIZJg8qB72Rxkyj0vxpVoT78o3l1vKf2mC9CqpF2tZ6MQTa2dW9c8Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0bv1qvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0bv1qvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED86C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790855433;
	bh=6jBAKlgfUaiWOZNLs9hulh29VmI0NpgCImhy9HrJjHk=;
	h=To:Subject:From:Date:From;
	b=Z0bv1qvddpSmHhIgKMNZV8SqXM0lOws1iayPv2aUEao4ssbnYRAFtbMjuMBQyoXxc
	 zFUTDZWzTNM51IHEdAaHHxCLHB6zGnBNKIlsRV8wB4kret3qIouCXjG7Vc1bOun6eD
	 Oockr1oHAIDQOoW3CT5tAxSKa4dbcySY7oS/Rab/+GEvpFlaJ5k1hw1Gcm1KNt1QzH
	 4iVUgFj6YQDMuSHxa3bfaXmNKR4xAw0ch9D6gsbR/hBfuTrrYfOeGUjZUmbBS7nfyP
	 6vQDJ2uN5n61T2w1424zUqDghikgmeISm9voPsPDhbzxNi+9GmfFmsDw0Azyhg3LkC
	 LD03hEaIgqVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4BCA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085543369.26960.11756240226510817933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4673edbec67a1cf79161b4953ad16ddb7d97218cd49e9623cdae602e33d1cc
Date: Thu, 01 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790855433
