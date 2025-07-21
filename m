Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCD618B0F
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753116594; cv=none; b=dLYjVVM4ZzhUjcjBIendnGvHwGWHj85aGSJIosTf9ps1J6cj8V9ELwyO8R9Qp7lq0SRepPMZcjYwJ7kLwIpkGYMvHyhLdiqT3lkUAGr2oRIcQn6lFOdxHKPEDVdvNtRIXOWRjV38vhox0CN0wnnl1jMaLmbTz5YucqXjQOnH9Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753116594; c=relaxed/simple;
	bh=iIodFnt9p+LEZCxzwylV8zXI5PrLcF7bzWEuEBM4K+I=;
	h=To:Subject:From:Message-Id:Date; b=Ke9H2CVsKvuv9JYvt3dLIacpCQZvfINj5Lv8rduq+kwpDbkhBszbu/WkqTqEy3zQDicHcUiDd9cMb7LDnmywBH4/hqegTLyoTMYDQsiXrFupvcWZVQSPxF9d/90N6x1+UIkD+y9leLJ6QEqkmD8FaHmbGrnF5dJoWOezRmr0CNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLeb4s9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLeb4s9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C70C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753116593;
	bh=iIodFnt9p+LEZCxzwylV8zXI5PrLcF7bzWEuEBM4K+I=;
	h=To:Subject:From:Date:From;
	b=hLeb4s9sQJsLQEQ9jvIvy5oZuByNXzmxi8YphUp2f9GdN6tFxe0M92GfVo3pHFISG
	 KwdptpK8uvwjzRUxyx9MlnRhT7X+nKdwA1Sxijb2o2i3MjO46BrsqM0y3dvmhLDfK9
	 zC5fA1iBJ9dlglQM8fovd088D0TkVtv3GjwZRb/HnJlnvFdnLmIBVgIczm0wwU8bUQ
	 UoFNzyzM/ZZlK6HlU3bdcYZ99ebcDGsJO5ZLkRyB6oJYtR6xBU1LgUp4sbI5bjZA+T
	 fmgAJNQbH5UFDKmBCsyXhzE21x+0uHQVQL3QvKmMWyuMqE/ANj/4QdQ/gKtVnSPCQn
	 Z2v7rXX2V9CeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6DC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311659358.16885.10377844657134769125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128efaae93dba356b1e8b6576dd42f69279d5aefeb65ade1122629ef81f6ded5
Date: Mon, 21 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753116593
