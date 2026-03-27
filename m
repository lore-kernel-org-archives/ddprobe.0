Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC1E393DC0
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774655094; cv=none; b=p+wiBDyIfVCbZm+cGm6hcu/sK0FGWXGcTRN3WCyyZifB1V/lrlWxjdZPya1RxCD3Hh9d7Z6P+voGHxJO0vvsJbFsV4VZVCwm7WDDfVCkMFv89CuVPiezaPNh6YYLDQJUi/mT/K8fQkO/6eJpyBMzHtcQOGQ1JkpFblJ3ABYJ3cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774655094; c=relaxed/simple;
	bh=Wmeium8d8bf+M/6wXxhAEX+pv1kb71hLTlarZOl7bZo=;
	h=To:Subject:From:Message-Id:Date; b=li3h0FB2d38r742fKN+aVoLMx/tXF/2hcjUF2cj9iI7IuawmrBsvHcjS4aiii3PdhUb7UQyYXH4IrdvjK3xL0+6xHmPIAKc6mxe9w+4pZNFnNe9aQ6c3WzNGp0eAnEj3y4rlAOmDy8VAAiJqoC2XGxlw819u8X7EFB2jsGz4a3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5wC8H2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5wC8H2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D7FC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774655093;
	bh=Wmeium8d8bf+M/6wXxhAEX+pv1kb71hLTlarZOl7bZo=;
	h=To:Subject:From:Date:From;
	b=t5wC8H2R6x3oOQF1wBYYbZBUCXslknL/S0eREjWs5szhMvwNSsVvaky5NS8P7SGzf
	 rXxKjJzE9AZpz+te3gVHNMmgELmWNFcaMDGHb/3Hu91TSiIIQsX7oO2Q+l2f1P7+2r
	 ENhJkjXkL3ZVssMhlDidydf4T0cdxiR+iKcF+SIH3zSPZNR5IfwKcy+x9kOEugTFPc
	 hoaHNcz/yvC2il50eIACq6GWDzCLPbS/CbP032rfRa8e6WH6XMyDcp/6/xe0TE0Wsj
	 lbVGM7YrfLiZs6jTd+i9AoFFDeUxCY3/wGPkohCUiRgfaYs+FiiAbZ3nGygCDAZoqb
	 tPPcJBym42PiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5110F287C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465509358.26247.13207321917883781642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c1cbc78b9c4a83af10de8c4108154b1f03004ba0ad8ee26c20e452322168e0
Date: Fri, 27 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774655093
