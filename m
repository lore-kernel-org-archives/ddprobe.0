Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EDE30CD89
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775715934; cv=none; b=MzJwQ7Jj5ZR/jxNThMd9zVBSvQukpIcGJbez9MzkJvJUAhQi1j7hOMhePPTYzc1d/tqrLwSvIV3AlU72U30I2RlI8Hy6i+MQDgUw7HTIoInTm597QX4p3EekXVXsEsF+8mF6Nh+jVcgGXksL8n0S3DfdrCMcR0q8LzZfzVTYg2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775715934; c=relaxed/simple;
	bh=ifTzRvFybVbZ6XV8T3OiUVsKd/xRiUsXIDmWwPi909M=;
	h=To:Subject:From:Message-Id:Date; b=mWsrkQNTG3ZVTwSqKh5LhawC/A8wryOlj3WDAllJKozFQOAK64VZu7QjGyyGjIFsIXb3Z5vGRtAZUopHUg+64ELrQxrTLJML0tcvTRywnOztKGoibOwIQwGMftbxFMl4NFnvF7boWbGyBuwUz0Kxlyreg4IbHK5UVeLAOTRuYa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt18Flfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt18Flfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB2BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775715933;
	bh=ifTzRvFybVbZ6XV8T3OiUVsKd/xRiUsXIDmWwPi909M=;
	h=To:Subject:From:Date:From;
	b=Rt18FlfnARqphd0GIBtsBO2oUc5Yd1AGDaY3SKSwVBtd4ksR9fNALBQ1WO16/7FGK
	 licwqFvu7IFKNd9maBO4W1MM8ea0CE/8rpQof5/q52S6KxYbIf/ekSq9V5+4qqfqQQ
	 sgv1tPAYK4tK/tPPUIRcEzvrDyGLyb16b7YKepVcZmfvGibA0yeLWgF1HE2+dndoik
	 eGb3MqV1W17Q+jbAAyQlTGhaaFam6yJBxT905TBxUwSZIYOAHLu2dXKasFjZUkXi/i
	 +ZKFYzvSicgQwNWBCWb/7eHfgF2nGujpZE6wHCBgcKncX0TK/Ql1b29pjxiDNtW8xV
	 p51Nwis2damhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA1EE98FC2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571593369.14842.7773317214203415492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2ad1bc9aa2d0c3ef3771c28a8df07ffb23ddee74f40c5fcc9ce424ac6478b7
Date: Thu, 09 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775715933
