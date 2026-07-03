Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4460F2367D9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783042714; cv=none; b=dFIrJ9AQQ0ctlHzLQpLL7EVcRiDnXe4wSZ2CVcutNIKPITZwWyzobxPKg9l/7a/FmEbIGWJVDUzWyRUx25fep0SuhFCFVGTi5Pj+hAcwq8yTG7LSsuFXqppgcKGYG980vLo3F6OaPBGDwaXaFjWYCITjtIFZ2IWlt44Seoo/ktk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783042714; c=relaxed/simple;
	bh=7ASPm83mbDLRipVxlsKNneEkv3dD1NTcEuRuwrIRHmU=;
	h=To:Subject:From:Message-Id:Date; b=OTti19ei7RL+vNQyCpakHHZ5abm7ybbndpMvWCj04Uie20a1I6Ct7nusFWF9XVYeJfLFAPnUlwuL1tZGysyKgn6devqaiGIq7ZQRUd6ZpYoZCe5XHsV6VkzyBpOWlJRzSYEWmJbQzJ4hoD+XuTNuWuKNpMNUQr1JfcF0T6lD980=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3QVg3NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3QVg3NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC71FC19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783042713;
	bh=7ASPm83mbDLRipVxlsKNneEkv3dD1NTcEuRuwrIRHmU=;
	h=To:Subject:From:Date:From;
	b=A3QVg3NYJDmjRv2P+qk+Ln/6q18KrKI0jWwVkT4ZU2bWvj8nvjtsd3Qs+z7tFNW0S
	 WRSRozKEW1ZoEN/icV7/0OgAsQU0814KIohm6Dh04rL6KTM72vBmuqS+d2Lie+sZCI
	 3tLs9a4HMj2vJVmJOuMBvbPWyg3+6NJCRSfsWysRzWRNgN9UkyI64/DgN8j4xJwTdv
	 mSu5oNp01SmaB0+K7MMMhB7wqwErNyYbc1jEap6S2QmoapgY8D9s6ZVS0qKKb275pc
	 4I98/PiMLdXa/NW3Ukizeb65I0+t5wgI5sQU9ugiQCPQK7CiBlD0IWgjkhzWs6JvGB
	 GxCc4Hvfiw4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E6AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304271368.24916.14805549651339147033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09562b488228e4f65a0dcbf0a93e78736631ea5cb2c38da89cabfadfbc97586a
Date: Fri, 03 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783042713
