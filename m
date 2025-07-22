Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3AE28137E
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753218594; cv=none; b=EJl095lJ9JvRDHREGJEnOmnTEdfRcSSYV+k7uMkDc3iDnunBNINFudrz1EwsICT5l1qA2D4BpQ+QABr1XMEGldvpI3VuhY4DTN/80MpGFbEQ9niGceYTilWBRTlXP1SUIdZpmx3u4LRs3uibYwMRuqPf7jvsxMPCuUK5SzPKHT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753218594; c=relaxed/simple;
	bh=sVqS4kRt31t1GPA0yo53Mf2ak+A//t5FkpfxzjtqLMA=;
	h=To:Subject:From:Message-Id:Date; b=JFvuX3As8xAMB5dLtgruc6FlAx4OCr8uIm1cSrMGy29SYvN7LByTFL5bmLW1zEU/wYYgvdQJppynWoH/9i1Sn0UGbo1IclF4kSn4GPP1mgxU9h2ZuEtYohSJM5Quskyl9awBEI6T/6jeK0gFqqQSadNLYX533pubuIMsGCGNCLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ismxz782; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ismxz782"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B8FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753218593;
	bh=sVqS4kRt31t1GPA0yo53Mf2ak+A//t5FkpfxzjtqLMA=;
	h=To:Subject:From:Date:From;
	b=Ismxz782ND/SbnaUszuGEHco/GL2oU0hrN77tTh2MBJy4UMsQlRYvi4wlFKa9af9E
	 SZQ71MwDZrYyg0m5DGWSj6NRk+uJ9Ecie9lLKtE8OxYpLBA09jV8qF2TGeyXZ1cbyW
	 0Fg0ZGyWtOTmMGvjeWGt1OUEDXYlNtLm8zGmJKHxdqHjzh4034L3zx4vwQlXtHYxu8
	 Pyo5KB2Xo+gV5uzFlXMJY1GSswJs61its9IoWh9Z0TnYo5dl89X8OZJUWYdD5V1Ri6
	 mlhAsOuoRd9+8IZVtWZCLE+kM3kXSDzaK30wPdOxzBgT1903bfjM+vsqjw/H7UbEnp
	 VTfGjwLzaWn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1BC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321859358.31828.1216773270056223356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d943d87a04fa828a8836b67c9968d3437386699b20d3d010b5965e7940ae3ebf
Date: Tue, 22 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753218593
