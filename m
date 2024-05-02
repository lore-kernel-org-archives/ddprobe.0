Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C19E54FB8
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714641143; cv=none; b=cstD/k6MZ2yf/EUvkEtFZ4h//G8I58Sv7L9HZcc0/6Ho3NkNH15zqhS1IiOHR3h9VS9w4nWjVSstwtpqNYITrrnfNnoKik9pQzqKPMGNKHMwuLK8dKYFsxFNDQK/5J84ctmow0P1D3jAV6FN7qVu2YxMPu+zqP432KJyMi+fMv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714641143; c=relaxed/simple;
	bh=a8oez2udBcpTUQ5y9vrBDM39lWkCuMA2rOSWPTSMl3o=;
	h=To:Subject:From:Message-Id:Date; b=RIH4hP36sGdb0ZfZOa5WvfFJaOWniZkJBlIn4IsDx5qAX7z+7yy4ty0n/dFajk0mFsw4WgsP6E3ElHTWanSy95OSADOI0UpIF6XNt1w84BIu7g+Wy2t6RnJSJhIqx+0Zl+gBc2VlQU++UPR58qOV+NM0laMFL4oa1qm6CYSCFvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUrvXaOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUrvXaOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8203C32789
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714641142;
	bh=a8oez2udBcpTUQ5y9vrBDM39lWkCuMA2rOSWPTSMl3o=;
	h=To:Subject:From:Date:From;
	b=GUrvXaOzorJozIK3+u8/6AQVc1auSlkQgxySv9f3Bg74nJ5rQ8mmbMYL79oxRbz71
	 0pnV5Qunb3MixZwRcOzDQ3uWyMID0/Rkea2g9x3aLHYwneyI5yLHB7uHCBAw8jiKYT
	 hQfDJcLeRYZNI7UsevJlC4vfLMA0X4w1vUNMmQVcWdObA/nu7o0dZFVWftb4E5BHKQ
	 Rfg8IYZ9IuumIzogs8WbuW2iT8nFg2q2zmamFR9NprE5XClTq/R8RaZhdva/pjgN2K
	 UzZ1fXiZ/O2wWk/Io+JJ0Im6EOBa0Wj0k0dLVYOeF0XcUGoZPp+OIlsb+mAD1+Fd4J
	 rhrj92v91pMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC5DC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171464114283.6495.3741987835961108089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b57a7e985994a55bf982309f4607d69c6e7bf049b4b28c8077aac598ac3135
Date: Thu, 02 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714641142
