Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA00326952
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764158574; cv=none; b=GC3iLnwMLcLwWAxdQpJ3ja2rtRiEc1Jio3b3G7i+onhlip8VB++WBb/HqxKtsCb1FqIFeBobC3B2WlumiZHg5zgO3oEoBfdfpQEBlDFXxDD24OpQEF2xTi006y52+v09vU5gf2Lx5yoAn26dPqjIVJYxArTOqyq78LP2Ou9+sX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764158574; c=relaxed/simple;
	bh=UdDdfWB5rmJRURuWeiL7Q0qP2fvxGszZuAGZ5CiV+6c=;
	h=To:Subject:From:Message-Id:Date; b=YUZRP/25gbvBxPbM5nzFAxVjy2m8gyzZhupiXfK3U/a6gsgBt+DNp6wUdQSynh2RwPpubt2HSRYuwgvdvYtCrIfcUjKB86BDWd9omn1WnLtLqn6Pvr8ar8EaQ6CuevBlfNnegXRekJitjlPIERnxTy44+HNywz2sq9nbsMG5g38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwW5uIrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwW5uIrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A940FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764158573;
	bh=UdDdfWB5rmJRURuWeiL7Q0qP2fvxGszZuAGZ5CiV+6c=;
	h=To:Subject:From:Date:From;
	b=VwW5uIrwika5MxjvY9BaaPYqTX+bFN35Y/1kdHKePeQVGm6ZiNOJYvtt2gLmkXkE6
	 EOdF0Zbkm9Qgtj9BS09kP/hCYWhCQRoEaLLigsVpvgyFpVmGocaFXJ0o/go+fjRbkY
	 mhKoXAKNuNGyuk1350QWlkDpVMgNtSJKk3Rh602MAO73qHhXwFfTOkBK+BoWuvlffM
	 V7+fAVVn5LVTY3F+S21W0pVXXv8zTX9mCNSMTZ6nc9H4NmUnoG/lhighxxzJieFLms
	 c4QKinocyXRgNoXvizvSCJ2TS9NSWehCBgr0nE4TNW/TH+NnTgKA4jRp0tID6eYwM1
	 c9E7VtfJ4eQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9478CD10F22
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415857359.29033.1611355930205908042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06859221dd6ffa328026a3eb92be7c17201007f7020086f3fb7b4378e9c0b919
Date: Wed, 26 Nov 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764158573
