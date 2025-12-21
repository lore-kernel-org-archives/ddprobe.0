Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368A0219FC
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766293434; cv=none; b=SkbBNxaTmm21rH7tL6sCbEFHu3O1SZgggnZVMfUkmO9prj8gouCU9rkXMQefDHMjWHKSrZz5ioYlMCzFK5Ce0lSMgu5s7vUCWAR9BZs13r1SU218z5Ly6B8z+PCyP+hyVdEuE3XnzNxhjRW5xCnCJK3wTMHLlF/jDuWdVQ3gR4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766293434; c=relaxed/simple;
	bh=1+SbMcMpSOWvbNp+Yr8kMBdYIffniFORl5j7yHWShvo=;
	h=To:Subject:From:Message-Id:Date; b=n02BOumfvHfnzO9hGkRCVsjh05AqIsu7dSEXn/Rb7+NJYj/gHJb2q3Wwl1SgaKKfCXj5XpiF2PqfRzsqovu5wCUplofLTD3bp3dWdtmqu9h0M6y1IPEe2oM5+P3vC9Y+9megjdJnWOlRIufiIowBtwH56Wj0fwzW1j/zYRNGDlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEimGV+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEimGV+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7161C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766293433;
	bh=1+SbMcMpSOWvbNp+Yr8kMBdYIffniFORl5j7yHWShvo=;
	h=To:Subject:From:Date:From;
	b=kEimGV+Z74KAJwpu8UPyBboSaSCR+oNO2Av0Qqb2otBb0bWtJazgTksX7NBR5yFRz
	 2J5Q1/DumGoBJgETyKdh1cj9OSOxheq0P3UrPw9H/VAOoUhAytusZ9BXHtx5DTldB4
	 oLxIK2daLhwoYhiA7sPwJSlgpityuFsvYDOMNHcgL0HJgOuHZXPE88+geNIpvVImXv
	 QDvkUEPY23nMk6a3WV5tkjDawybgD5jnzNzppXgiicGoveZeIIMi0+9sOTBSnP/9y2
	 IHwV04x09K3+mkgYVtBYFtmeJ+BOD+iYi+enc56wdOPT/Ad66oL1eyQgvoHZf6+9pY
	 FEVUb6fxI2VJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A90E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629343358.3056.517096280058957357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6049452803f0c4109d113e6e994edea967860a8c6d6acf2cbf7a4a6d79ccd7
Date: Sun, 21 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766293433
