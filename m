Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5520916F8EC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713458363; cv=none; b=fhXV9FLn8ffZ85TUxoC+t8cOlPHdbCOUbElSSHEFWqtgYybo76D238f49qsFhV+ZtTPdSt7f1jK8wKPZZ1Y85wYCkXz30Tns0bJQ+Ewje/tpj1t0gmrcPRRIbNsPF/JxQ2IioEa57+Vb7/10Gp1xji9Ivuvf6u/ZhqfrrWqEkek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713458363; c=relaxed/simple;
	bh=FBdqQ74Sr+UeAxyjBttQfJXaKYCpP7KYZUouCBaVs1c=;
	h=To:Subject:From:Message-Id:Date; b=fHAumM1gN/PTmy06LqpwKdx5FYBXy8oXELIgQdGioLnxoTR6cxZpzmlmbs1rsgBLkdOtoI6ltLRIztbcofgc8f4R8yW3rdXDbVM7m5kI1AQjgG/iyb25WnFV13C3dC4l8sxQLW1Sz6h2dIi1XrV1643cJgDt5Vdw9U8NWV5qTEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2evcdPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2evcdPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4370C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713458362;
	bh=FBdqQ74Sr+UeAxyjBttQfJXaKYCpP7KYZUouCBaVs1c=;
	h=To:Subject:From:Date:From;
	b=K2evcdPEvxFbHDrMyVLuij21YmsrpZlCGgRV41dn7fA0ILqGH5ovl+newVay+3drL
	 PMJkyrKtiWRfvtnTFxCZscRsiPnsNCU8FumBO4+Wp5j6GLEt5HP75QbPJNYCffRO7k
	 xgztnOjZwyCbuV+1pHhNoOKv4l+eMT1+YZiB+GxBs5OIkk5H9Jt0Syzr8GodITcDn/
	 rNxXWR8D5adeYCzBGYzWt4IGReo0xhh5qTihogAaaVOvGUO8+HPLyw5LqWNtwTYDcy
	 QcjjQUCuD6+yaJ5G8CcoqMyviDYtlw2aKM34ETgkKnLOhsxIaW1BV6VJs9MYMlqdQg
	 42lcbEt8vtrzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2385C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171345836278.19547.4058558053006382907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c5aa2c8b6d415b08e1b0cf9a464f1c10327abf5bf1f05e5e411716f4a4aa80
Date: Thu, 18 Apr 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713458362
