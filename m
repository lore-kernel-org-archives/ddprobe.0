Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D1463B9
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712624297; cv=none; b=br3HX2As7OPifE7jhCACjmMdJw70kd1CDSpnPYEwSeYdzCo9AQ768Bdl00IkvBM/ExWW4G3xjpBn/pvpQxXHFfpzxXSm5e6Cb0tKB7WHU0Fqmxz0x7o8/RdZcDW/64zrB7Qks6eMjMi6E1w1tIchOubceqKgS7jF/agUR4jTbC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712624297; c=relaxed/simple;
	bh=FQ+uGSMDSq9URecAtbaApVViE4xr6O7IbRFVS3UJKDQ=;
	h=To:Subject:From:Message-Id:Date; b=CZH+MXljG44fYCUMQBduW/pgO8leSg7BADr1m5S9VCdQzKnZVsNJ1yCHimZpJiBFEX5V6oVewafpsclJh8fwa0uedxkgsUKF51ol+fB6ooonxYe2d6HIwBprlPLWwiJF6708ac6YNyqmqCoseVBxyqkbTxYtISyORH+aacMfUmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZbUaZ9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZbUaZ9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B41FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712624296;
	bh=FQ+uGSMDSq9URecAtbaApVViE4xr6O7IbRFVS3UJKDQ=;
	h=To:Subject:From:Date:From;
	b=tZbUaZ9BvfSEwZH85dM3ZI5PtSlALpr3YzepQorR/6I+wNFfZCXff4pHry1frBAww
	 KttFzYaB4Hx81wxM0pXBPRGzsDPtTthodofd/OBkVRx5GTucJX6p7ZQdOesnVWGmZp
	 LFeohXCUbzR4NC6uQGj7sp9W6E2wrH27Cv3SST7GF8nwSjtj8jLLLPZ+K2JPlc8Y3F
	 bTdc63nI3+VmASoNAEgEEzITTtxgwu/gEtCKPjSZuuR1rd0HPK2rf8h6mr6Q8pw9CU
	 rYXr+KYGvOkJNSm9KR/Ezz14tBNL6EOZo0XvuzcT50yM0zf0HlAgct1mob4d2jUNqU
	 hm9w/aZ9ppc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73068C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262429641.14290.2978646551457062070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ab5b695005ec25e3f280d08fc658d3abf24af1cb26105c590753b182f5d998
Date: Tue, 09 Apr 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712624296
