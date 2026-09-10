Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4B94825A4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789041634; cv=none; b=RHX9bXpm74jqVRSPY5l/NlU0xHFpfJe8MAsDoW3SrNW8ttg7upQuwQLXunhc45GHbwteaBU6iHCPtvh5pWRV8gWBaawTCA0It3M0Ee3BGU/v9/jAAh/kDfOLqoSbEAMPo9AXalbyaoC8NiTht56NgzP56UeBycyT/YPDa52k2U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789041634; c=relaxed/simple;
	bh=ETs4dQUJkvg+gzAICY8C16EkDGR/Jm5UIscnv0wxdyM=;
	h=To:Subject:From:Message-Id:Date; b=FQIphsIKf9Olh2oNLqpQdd+uHKTKFgitRCfDXHhBXG1uLFCGWHHuw/XfzSxjd6O6vqgsDfkCN85jGFPqVsNGTq4MU4YSPMXjPqRrmRCYcqGk20zbYyxlzKeTk55UM184YueeYmW7vxKpSFGW+M5t/E4El5eIQFtk5gK8GjAiYJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUZRxeDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUZRxeDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0889C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789041633;
	bh=ETs4dQUJkvg+gzAICY8C16EkDGR/Jm5UIscnv0wxdyM=;
	h=To:Subject:From:Date:From;
	b=tUZRxeDC7aWGtS08bUPm9DETb5RE5fAf+HDwq/M68eDKN+PZatqViF6tDInZtotVb
	 +q6bhrUqo527idSh20VrPa4rn7Aw8F13mRC69shssLpLGYW4epQ0RP5kMYSkgHU/5b
	 sPfQlTifSOd2mCvFzGrsHNej2vSJ7svjxDZc27RIjkRCUDZKCwI4RGq55VjAHqIjzE
	 Mupb2AopETuvAxQKzxkM2GcY3ANDIPTJSrDYEcWn9NnkogCeiGZ8subfVpLfBaeYwt
	 Y8tZI2pDEa8T2AkmQ/HrgB2loOGy35+eNjeFHT7QtqdGFnZFeNDxw+POQHeclXj/Eu
	 wpw2LBCoQWNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7F1C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904163369.22724.10179798826503472292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8caf30eefb00f6fd0dc7d7289340797ed35883c827a5f2de316276e32bf61299
Date: Thu, 10 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789041633
