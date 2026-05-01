Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A633E9580
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777658855; cv=none; b=mOvXd5vFBlCoF2IVk8dpXA3aoTAqXOm9AFm8sQ9cztcPo3rJzVoI39OT2tOavudKlvHbM25F60pznt8liEJ9K25DdI3+bJfdahem5O/COWuWn2Fk0G9gDNtnd8CspuAzENL1l7m6D1IKsbuwgPY4zlWAyFJ/YM7h58NAyHTayfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777658855; c=relaxed/simple;
	bh=LDxwGgy475iXpuadgmf8ztL8W9erEqNHWvVe1NAWBZg=;
	h=To:Subject:From:Message-Id:Date; b=EdDmeuafMnLz62yPY7V5aTI9QvuF9sC4lBdFCgpIckb5NItxBQVn+nhxtwm/dCkVQHkamSnTGVULOv+TiauA3azqZbjg0us4WJeRO9LSAXoq0jTKVm4lj2B10J9XhNs4IKPOPWd2c5NWONf38IZdBeMg8flBuoUxoGs/wd47ARc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM9wcObp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM9wcObp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C78C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777658853;
	bh=LDxwGgy475iXpuadgmf8ztL8W9erEqNHWvVe1NAWBZg=;
	h=To:Subject:From:Date:From;
	b=TM9wcObpwAdiEhQkNBfnJgSQQHJfsJ905Eq94EOfFdQ11e4Ab1QrFDIcLyeMbwl5b
	 XM+f9k1EBOPa17RVIQ9BvyOSEM/Tzm4bHqPU5ruNPvRXW749dfg5fGKB1+ofsSbsyp
	 cDxcFH6abjQI/HCJt10DrYNMk4YbJb1gI0qWIi1qa8zXqlUsqS/EjOBOjz/dcZ4VKL
	 enaG4h5WiUCF9u8Eil52bcGDmeNn/9k8YAJS7c/csZYEpfei3E2TQktC8PttcOtxyh
	 Kedpx7qOmIZrOGPHhrFz75DwPAboQIQuis/5IraycxwvsmRy3NNLL5r6tYQjwkRT53
	 lwxtjKLH68Ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F3CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765885368.16576.7253308329433411992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c4ddbd56745f3e5c7beb7231307aa1abb7307839d091952f94e21b373f5ed6
Date: Fri, 01 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777658853
