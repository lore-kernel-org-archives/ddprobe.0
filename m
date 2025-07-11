Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC5A295DB3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752234594; cv=none; b=qjT7rm5d96ljwgIaKpJHryb3PNTDmabEeRbTm7d3RgfRiMIqxTSg1zdxUG4ZpkXrZDv0QHxH2cKPWgHKEVwWnS0PLfhYGkuWGM7fklnhmy7i2VkKjGPZOPhjf3obT/1YrVP3ujOqQd/Z9f9vCLOsOlXQW3wHcMXecaYjUSK87UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752234594; c=relaxed/simple;
	bh=cTc1qGRhVanNHDNb/vyo+/qnZVYK9AUMgSPU8V/Z+v4=;
	h=To:Subject:From:Message-Id:Date; b=U6uuzDyMQDJzHV3D7m+EhmMnoBPs6D1A2SfjAGahkwp+oNBdBU/meX8J+N3pPd+WKMU0IsHbUJLRVuM1+Myc+d7tVuwOI7bIRYQPokg+QU3okuDPvX+9PdZ03JvnCLpjy8olYACG6hcxQcpuDY4RV8RhByt5dEMgVvffp+b4YrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYo0PrNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYo0PrNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA87C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752234593;
	bh=cTc1qGRhVanNHDNb/vyo+/qnZVYK9AUMgSPU8V/Z+v4=;
	h=To:Subject:From:Date:From;
	b=pYo0PrNsl+j/k3hnkR+pMusWfJ+euCmBO4Hwg8aX759TnHZqU0Ovw/eRZK6kAZvyY
	 MWglTaWk4YXpKXNI/TMPt1cMwZCYeXCyW9EiPwHPx1Vvy07z/M2cBU2RvKNI4bK/lZ
	 RAfR8rfdEc4MXI86rVgleRS6yqDEg4e8D8NzD2erukjly6gd3BWiJKDcKpp0C5TGlj
	 pSZ0MLXL9nV845isMla2czsHCDwE1LlODPZTUAFr9rWZ+ejFhIwFReR13cdvGNmzDs
	 Sqngck0lWtnxxgJ8VL/mt2q2BI2Pbw5DtK1h+d2FM94VWbhOb16WP4sDd+lR1vmGV1
	 99KFbkyVsrxmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223459357.11388.1858413042967702593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea7440b954ac60817c03a2941b1d7caae106bc5bb42f27028c3178693f9967d
Date: Fri, 11 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752234593
