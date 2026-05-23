Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F651DF75B
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779507154; cv=none; b=fTHM2Av7TatOEc10730qicMR2bS2pFS3Th7wlhXgAWakoD6Dra9bo+KHwOWXL+Oi8GzpRmw5I3bikq0ZxaV4fAF1CXwDT1tePfLtLtk7i/Yv5gOEZpFIiEqv8Z9HLx9pH6fGUXeM3dTNCz6s0LSqWVU0Iq70JMDpQDKiGLcYJ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779507154; c=relaxed/simple;
	bh=8bG0CcFoDuqbo7x1Y85u1t+Ss0K4RLAaK9vmURkfnZY=;
	h=To:Subject:From:Message-Id:Date; b=tyaYqhsz3xSvNWrBoQYCaL3K5Ih36u75VUS3kC3pQ73aKudBbh4c6M9pRlU78ANRHlrh1nTW43lEadjz/NPlp/KTSnD5TDwhznWwwuliIMk0+L+6BIbs8VaH4RusX8we7rp2PKxWDuPOPCPgfni2LN4eZEniYxfHFQbyVj+AD0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clY2qIMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clY2qIMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CBFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779507153;
	bh=8bG0CcFoDuqbo7x1Y85u1t+Ss0K4RLAaK9vmURkfnZY=;
	h=To:Subject:From:Date:From;
	b=clY2qIMQ6TqSihn1V/ox/WxLIM2EbDB/R2xN4TujV6foHGSZI2O7WiKOAXX2A0MLf
	 RnW1rY6DmqLtT9Kc4sfdrmEiUTe0a1xjy3HHsi+iX/cnCsSebNHJ2AK7k6KvKDOYee
	 voxet2YRgbXHnExFgkCLtDb+kE3E8R+uSk7V8j/T6fOE76riURPALy3audfv969V/q
	 I50TgpMAtG+9VvhtKIN+ugr2/aXc4ljIMU+BVgDMcj6Vbv8WvhyPYtawxwKSKS8T5R
	 FXT0YjUocxJCeCkxm+4zJLxE+cEe+KmJr1iII4oIaVymOTHs/YbyBJrWeayG/SRdeA
	 8kugeMxHK896g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB966CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950715368.30306.3293461082246640984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7225cbd1bf9b11a3a19d1d4cd9cd8992b189e8d82937be933c51bb74ca77295c
Date: Sat, 23 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779507153
