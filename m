Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005C12E2DF2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781235994; cv=none; b=bjs22QfyR8oqfb2BwOqQMpLEVywkEtFmlyW2MtRgX2MekHLyS5ZCvJHRgwfhnlOnG4pTx6TMCjXJRkPAhnCEP4Q+QZou4Tqe6bquvWiFuUnMgXjag24sLTWui7dQnkEYL8J+sM/XyrwvIcNm3HdXWPTkvdwPrdVJFjpVineBhhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781235994; c=relaxed/simple;
	bh=ALSJWJAz5pBV6cUxyZIk5O7ZcNWwQQHTOUlNI1jxqM8=;
	h=To:Subject:From:Message-Id:Date; b=O13g82UCTurrnRZHltczDgb49fHpXOxO8oDDiOH2xkuMlCEgrtzK6EGM+AXsetkmshTOV03UgcOyCkFmU4yz+UyvSArHqXoOxUyE2tiZQXJ+u+7aYDyw72ywsyc1kfCbO+csZ7PuxvVb6+bbZ8UArPZCNS6z3m02WzTqDRjCJ+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhLYEXCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhLYEXCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1966C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781235993;
	bh=ALSJWJAz5pBV6cUxyZIk5O7ZcNWwQQHTOUlNI1jxqM8=;
	h=To:Subject:From:Date:From;
	b=KhLYEXCjBemhzf6mj6wB/X2aUTtB/2Gzh0g+kRYn+8doA4eCRDv7GoZoSQXysB1c/
	 SCfRyoV5L9QMs47WoS9rY2lVx4WjVN6thTMOx+TwRpHh92UbhPLJJq88BS0oPfYxak
	 QsyjkBfoLe7FE4Ixfv8C+gPN76V1O/Uds3YLBXLlmCQ0Jh35RjAPkDC8ByESsN3A1B
	 BQubSIOX7lLku8TQwGAtWhlh4jWDBpch6cFS9iNslsGKTsZeAgEXvS/Vc2mjIxkt/v
	 J4xaowMaoqI8DipuXMmCpeqaHxF0cMe+d9YUSMZvMk97iO4iXiC7KmW1aWQSWsdZ1z
	 Ix4Be1XK6zHZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D5DCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123599368.28668.7194307266536207824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d20a6097c8a1fdb0c238faee0e02e156a634aa22ec091c2125fbe3f44c1376
Date: Fri, 12 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781235993
