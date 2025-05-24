Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467162DCBFE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748065794; cv=none; b=gcizbIfyGV2wO809V+z7hLi6Dk9A52hIA/V4Q8vmchO4VXCe78469eeHg+4h9pEQUPWC94vHTSwyR6rA8DMId28F+K9ECfySr2e6M1tFHMqMhEShjZRfxLj+cK5+yu/4Oig0tdpdAL+k/7+vHGOT+NphUGstEiu6TiUejukMcYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748065794; c=relaxed/simple;
	bh=ekB/HpyLR9YenE4RukbwiWU4YcCnj7qrX2SqO1KTuM8=;
	h=To:Subject:From:Message-Id:Date; b=I43pwje0zdFsJbe7n+Pbtj8Loiu8s8IhUtfuE8VybVADCrMRht3A7ufo+acmMuJDJha8synyUmMWL0zAkg42S+PrQI/F6f1bAJn/TS4n0L7q5A2gfTIw7a7VZ3PceU7fgNfc5hwgSHFasl3SWe41FMMarC2nDHOhMHmp/U7zDlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irGjxvo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irGjxvo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748065793;
	bh=ekB/HpyLR9YenE4RukbwiWU4YcCnj7qrX2SqO1KTuM8=;
	h=To:Subject:From:Date:From;
	b=irGjxvo7Vu+yxnawfcNRBrch9l5hiVK2hBHLZpu/FBr42mUDh2hZd+SkV4fPIUuW5
	 0oPS0mP/zNgIr+1nHmzglHWRWaZZdeOhG8nYXa6o5Q5po1yTbDOKOWaSOKEBWXf54i
	 KfEkyqhINFNBc13lw2PITh+6/91SIjN7gA3QdaRe3pdzg8qD0dxBp2MQCUOWKwXJ1o
	 hoDPiPoyq9gYg0gVeiYxEQ+n5Vw0yo2YW8wD9f9YYfhlket30xC9tCJKG+GVxbAJZ3
	 1qPsFyej+ES9Sy6mCqaUtVhm0PJ92KPSfOs0jZ9LlAtJn9NsPcX6Q2ckQl+5VTDNSQ
	 n0cumtx2uZGbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555FC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806579358.30159.15536437966095966932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cce78959c03aba979c15a92912b3c72e90592af450db91054ac54acfdb95d7f
Date: Sat, 24 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748065793
