Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2B4286A5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792357834; cv=none; b=HYoD+OHDfkF8BlOw1yYqJOy86Ph0pOWs/o3nqcu/wXeJ3j5QCFHhLJvYJQOmp6v3Xt/0jpiruDyLNRNVZyPx0ONyuIxuDT1Tq3v+bBvdlV40mi3rF57WdEb/kRvYrjckRwgvTkflk9i7xI73lA6s2YMK5DVai9NomjEwqK8O0eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792357834; c=relaxed/simple;
	bh=Y+V7nokosM14D87qPvEr6a+79lSybTkS0D//C9C0KOk=;
	h=To:Subject:From:Message-Id:Date; b=a5k1ai649WX5imBOp+YnRZ0Ht54vWoeg6oMN9RH8MwEXkuZPkIJ5DQyiPW02/BS8swIp3jJM2dhTXHHbF7QV89OgzfoiaYY1JALtDiGjCWLnT7t7H2bPbw6eS82A5Vf5i61O19KJOGJGsfh/E3fp8A2JUzQo6zA8OiKEAAht8W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdjMsFxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdjMsFxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBABCC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792357833;
	bh=Y+V7nokosM14D87qPvEr6a+79lSybTkS0D//C9C0KOk=;
	h=To:Subject:From:Date:From;
	b=WdjMsFxjcpQpi7fIRymvVTZFtCdi6MM3v+uEr0gIyV2nmGk/gYDUBfqSFNY00ZAz+
	 FRO/HwDDc5QO/cfb/WP1C2C4YRPUjDlY5TPHrj9PP3ucXvhx6CdYVExTpR8jkwu2JB
	 P/jpW15MZA8ESqZM0evFnFMBa4h53LfMUetRm7lyEorLB7OmHabtRpTzM7uUhl3FEe
	 7ll7p7sHd1cpWppLpaSVTBMaa4Txv77wsqracundKct385Z+zQ/Wz86g3utvrvRxXd
	 QYWLkp3/x4HDjuMNTu2kO2y6MsoydwUx7NoY+Uig/6Ahi1UHFk4kg+JN8r0yUs3J/+
	 GiQA28vFDw/NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9959CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235783368.11240.4543350591241397494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb85d98a93eee91435b340c93fc91de2e8a1a0c858ff2bfd229e8130e8b8dcfc
Date: Sun, 18 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792357833
