Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401AF2576
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748005194; cv=none; b=mv3/OBj2FcvtB4rufnG7YWUZ7WDbCH6qkiCJdAbzYZHq+64ov53noWFJPJdeEZEhbTWgge+xqgESgp3MGlyhuuMDqtS0SOe08QsvjrIDW/DHirwjJ9o/kWkZF81AOWsHizPEO2rDhVp0K4ONoqtgdjLvyoqx9WGCtrwVEUhFKD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748005194; c=relaxed/simple;
	bh=mn4DzXG9SV0yJ0ioKcG6BPeEZsqjG7EVafLhNLbGvNI=;
	h=To:Subject:From:Message-Id:Date; b=mAikFtB1A5bGRWisrmCW5A4/G9/1mX3wowyV5HIofKx6XYXPd+FaYcLWKZ5XiFH2n5Utw+jj15EEbJ+S+pMfIRE8bzfRbI/J6nsr0YvirYIGtVftNavTnXpYW+gaJjQByeSO6Y0kQK7piB8Ry3fI7mD0xWzYAnefuuXJsuV5Cpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5Uftd+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5Uftd+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EAC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748005193;
	bh=mn4DzXG9SV0yJ0ioKcG6BPeEZsqjG7EVafLhNLbGvNI=;
	h=To:Subject:From:Date:From;
	b=J5Uftd+sks+rFThYaz8Ig/MQKO8qzGFojdoSN8R0MIZ2orSsQRhRmgkrhyHbwydSG
	 gOXcZeifiWBDaF2fVYdpNUs6ntcept8/4zXRqAex1/AZ4p0DiMoE8eLbMe+9nO0wBQ
	 YUHBgYcDjpFJxRpQ+K14g0+4UKkiINsZSwfp7G7zIXTjGf3wulLAV6LQzRNysoqkxK
	 bcYJB5E/ZnMcQOHI/qhF8n+sHGyCbpFWk7/T8oFIJV8GYy7X0ORqzamUABCsc5lBQ4
	 7hIznyBssOBxnXkq29xkVj9gHVr8YtU3T0o8JAT25R+31n76xvML4fuZ4H4Co5XHGm
	 YB0VtLWdWk5DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90249C54F2E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800519358.27729.8145242534195864720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6eb2c20bbb87072f1a354b276519d13f1490a543a1f7d3d608841429c5792b
Date: Fri, 23 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748005193
