Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A27329F2D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757575194; cv=none; b=qObaRyxBQygCt1MNxusYiRb+Zr6yF+L/OfCwlyp9FsRiUZ1/7G7z1uEuV3e8HVOW98X6mApK9jdapW2iHj8Dc0JkeUW2n+GOxaSF8swE/SqlSE19sPT1KcHwsvlWFkCpNfOgeiWjvfrN0mAvB5VY2NtS1hp1uz3Hl7U0n4BmchY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757575194; c=relaxed/simple;
	bh=tXWq6wLZo9tl6/tZelesYxJZ/rKPEdf3vSeeKtF7zSo=;
	h=To:Subject:From:Message-Id:Date; b=GFIIUwTRMYv8tnxXgPk/SyHT2c9mir+0uv6CF3sYcwIz8KnmUW5oReRtDQNfeI5Q1B13DIALCfjByQP3hFsvWfTFXUVZFOuoBCq7rPriOZqk8DSg7vaoT4a6TuZj81MjnqSXhCsXhsGvtqRNEYt1HqB1DoHAc4t+1db3t6TOiZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZrB6rY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZrB6rY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757575193;
	bh=tXWq6wLZo9tl6/tZelesYxJZ/rKPEdf3vSeeKtF7zSo=;
	h=To:Subject:From:Date:From;
	b=ZZrB6rY1dbMDQIiAE9kbaMhh36ylRWh0VThDKE+jkh3vO8H+TswndsueQRwWDOQqu
	 3ZalsjQ/nbC7fdW+9p4FYtBWZtyXpDHOUuC4xOAVxTRnMyiCy2nLJFabZVo2SdnG1a
	 +5lKxxA6lhTOYgATmzZXKrE/Wf7Xi8/AI8s6n88XtqX+ys0R/sOBZPw5LOFp9u+rxx
	 ndbWD2YRd4c1B52e/gQE2vlqEEMBsQfRvkWFZEiDX0h2eQqTW9n1X3SfsZVzYWcSGb
	 aJ5010lPBVMt7h0AzgGCTj9DM3vcE7Q7ZdlNl9K/7JSVapWZXUK3m7x+jYdj8EuYvP
	 5kd79d3WhJMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC3CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757519357.19120.49453437865672786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76b5192384250af82bd9c9a39f9bb3da0255aba5a32cd9584956c622a0faa97
Date: Thu, 11 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757575193
