Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F096F3C48D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705924097; cv=none; b=an2LaRihbyCt5sXx3/fXL4XdRK3ttwSExWj+Xif5EQhAfsaltzyEukaBvsBVdKMO1cZ0CrOB91htCdif6z2OtPKEwUSzyWzW1FJhHReg3ABgJRtU/bKSiKZYgioJlk4C26mYQkcly5LrXdqXBz6inddx8TaRODg31gaXrcXFxj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705924097; c=relaxed/simple;
	bh=QeSZlBilLtenzwFCj7kybOLpcbHwJE12gQp1BV6Afns=;
	h=To:Subject:From:Message-Id:Date; b=hyAp95KUaEBuQP9Dzmyb3WCLimC9unt+uDmTekCNE3EKn/tImr49hq4jFFAv5R7SjjDpwiKav4eg4ymcEQwdTZLDPfOjDIhXzzD6/c2ZtRSkxN985b4CmtcBDgZt4vjEfBDz8zYQtUflpDb4QROAwxQqrkJIarrE2ssq0oCWIv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/Zne8aA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/Zne8aA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1A4C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705924096;
	bh=QeSZlBilLtenzwFCj7kybOLpcbHwJE12gQp1BV6Afns=;
	h=To:Subject:From:Date:From;
	b=B/Zne8aAYANA4FNQAbYEAJ0bc1JYn9QHrYaq1/Hpf3eRO0dJSlHfoZZIT92o3wayc
	 xS8IZhccZbEIKHY/iIhgIPAwFTptDcOwKB42288tFr3O0/9OX4TMMe6CR18s/dyFm5
	 rec4uE3QQBl2h/DM9jqvPfm76UPb2zoAQjd2BzD93klpS1NtEdvMkIWINWPPRwVede
	 qJzK9X3th8NJMYCKKW2S8queatgBc6PTP7bC+p8/gQrQ2kVexV+pbpte3c5MqiLU+y
	 5E3aqErgJyqedNh6sBxwo1bPrVdymeUA8YcRlBNbSPvwrNvLxLnhVYCwFanwumYW7k
	 zELrNU4L7xGEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62102C4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170592409639.16643.10490918659055031896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3770163c2b11c451ec3d53f3d73f2ea7890a410e7e3d801b266b83ba74c3d8d
Date: Mon, 22 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705924096
