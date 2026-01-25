Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20872EF660
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769363633; cv=none; b=o/mxP5guBwKiLzzztamBhM7ITLHbgSCjnF3yUlOVqAI+5JKDcHab6btsrtaTkUeilpCYcWJgjJKz3jebbqMNX8hkbd42n3qjwuQ91A4o+JoQ+SEusMvKS3Zo9XyP41ZCQ2p+tnintBEaRFp5/mzZLgMo1IVUd1Xo8vy7FDBRkAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769363633; c=relaxed/simple;
	bh=9pq11RGyPD8DdzzZ9k0cQV7S0MNHY/dpOOkdW3iae/M=;
	h=To:Subject:From:Message-Id:Date; b=Fn8rGIDS5u/x0LnyauhCJUFMjWujFnMDNLZ5d1j2bbA3MRCSuPKPLkftHBQ3Nk8R9JLBZZliXGRncCu5GqqiNINJjhNT979B1U619lMJgITT4PffzU+ajIqVlI9PI5IYDdTithPLTHwHTH2znAfcq+/l+pwaRa06BnO4fDHqgeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asDVy87w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asDVy87w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2183C19421
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769363633;
	bh=9pq11RGyPD8DdzzZ9k0cQV7S0MNHY/dpOOkdW3iae/M=;
	h=To:Subject:From:Date:From;
	b=asDVy87wg4H+qfN4jyqWVDcvh/3nzlDT+lJtxTEjeKcrFztyaG+FzbFSPcgFAIfU+
	 649dOgrZr1cXm54h5VO8GxFeyar8f5WlhvAvf5kny7yn+wpbkf/EKQmET4ur3J5BVo
	 AxpdLfiQowduHojqJR2S5ktMNBE5+/dJ83Fa/Touz8wobGt0K755FzaRY8BRskXF6T
	 q4lYAxkYZ0/eijx0BTrnq6KH0mWC9ALfbu1+Q/pq5lMu5QpelS9pz4WOnnDnHZ0Xcp
	 cmw6HiOOVsZ4Kisg161Te/bpOIZD3WhrGXxlNZ++x/3qrAXt7PKJr4jwbfKZiOKT3z
	 xWVDbGAtDuGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A54E63CAC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936363358.6208.12449972601422768498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0605c219f603a86b30298e060757c21e2d830bcd9de5a2db4fd154c4834fe41e
Date: Sun, 25 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769363633
