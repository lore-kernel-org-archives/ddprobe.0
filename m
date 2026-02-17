Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1425E28C5B1
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771307094; cv=none; b=pfHAcb7pbwl3W21kCtYsmaM/gIBCQMPvyut8DOaoRne2rm53y2m1+JZuYdcsEk85L0Du5NDCNKn58n4gIk+nguuxfo6gBCiQi+OYji1Dts1JGwrTeBLxi9lPOkwJRKqWHK848dYkr4c9bX+ixC+PwQkvepVv3eZgY0ogFEjz8pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771307094; c=relaxed/simple;
	bh=8956Tos8nE9Dwx5CRoIREEz4BhAu1Bq+UtYxariwemQ=;
	h=To:Subject:From:Message-Id:Date; b=LwRRDqSXly3TAO4I+HEDUwpiUqjL4+/TVyufu+4+DXZY7RAusQQeJoEuxNZsWOxMtheYzuM6mHK39Nd+sbu/eTrBwhPTE2lHCTYY6SIK8y/C2eRLVcTUGsB8qQZCVTMP2tHx/9ir1kzu05dNRSvuTi8yNBl2SeuMGIjYZeml2Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+ei26tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+ei26tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771307093;
	bh=8956Tos8nE9Dwx5CRoIREEz4BhAu1Bq+UtYxariwemQ=;
	h=To:Subject:From:Date:From;
	b=G+ei26tjL6iW3nFSGZoQiBJmG0k8n/ltE30kUNQ6tUJTAwV6q6m0XYzzEcDxEVb4J
	 +i1lZyW9ZzlAZUKrPGcZ6+czO3wSNihRfauaqXIPuOLmVClAGdDE/6mtzXN9DNkyGw
	 kTzBHe/0BsgflkzAVoK/3/awSqSa3NVDzSvtEotJa/5OTZN6qTpHZn2Rk12ilHrfP/
	 FcTX0hQZl8CAp5XK0wc+KC9wxEKLDyAYsM8q5qadQeEoKMc8o3Cq3JbcMwRip+BXjJ
	 1f5rku2UMYDEwpPcfSGTb/zvjBI/Xt8/YEb1+a7iwdVLZy9cONG22QH+p2k47ADCRd
	 rHAHgQ6T2a70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CBE83856
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130709359.21627.15166512685713632036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3625b14d8ff492baae2dad4946b530f922921eb7a3b0d377f6a248d70eb083d
Date: Tue, 17 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771307093
