Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B95D4F5E0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748941194; cv=none; b=qYqMrCodU4lOH2pJCfRtFZUSO4oXpSHFAlROqOK1XBmaJ9spPSoCTFkQli6N/7/0ojsvXibCVVMAFo0kVrZIVpvjQq6Sxx3F/lQC6fW32uru12upPfoAHdFwrYsL7pFJu0h/FegEHRuCN8yWoyeKAPiAvP/nwdUyUYLHgAYHpwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748941194; c=relaxed/simple;
	bh=spaydH9SoL8+6/C4GhLp12rer9ADiBgClBxbGScq7Gk=;
	h=To:Subject:From:Message-Id:Date; b=tIOFQ4pZioW23kW4vT4XNNelQuePRXlDDJ2wQ3l10iqf39T3SRDVm1sLR07wTtUHRAnqfHz224kFN/VSOEwszsBlgJLcieYB/jtzpTtMNnJJw6HtuywWJJhBz6yLNcjfXd02tTITyiQgUhDID1lFosK4sZyhMK8xXTI1S6Mk5eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhWruWc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhWruWc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1579C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748941193;
	bh=spaydH9SoL8+6/C4GhLp12rer9ADiBgClBxbGScq7Gk=;
	h=To:Subject:From:Date:From;
	b=ZhWruWc4Wb5bqrayIpBY35Pg63z8NBTb/D7K1kdPvSw3UVNu3Xm3OGQb5RbsVtEfA
	 lq5+cG/dWlqd27Bx0PlcHf193zPODSAPkTn2BC0JCpmXgXxdrOgZRASehn+zGulwhA
	 W7utfDH4TJ45txc63aokNPAkcnPB4ZpQTO2okAWFNLGSFRrKOk4nosJjOnX0vEZ0Nk
	 +GIk/SnbXqj0FqKsc+pz/fH501aoc0KcnKv32iB8R8xD+0c1vPa0Y5jqwnZJF2tS4X
	 K+JftVuoyzel1eJtltF53wwPyjG8+sDpl5xOjMhsUztpoOQ2NJH5HrVKzMkitGtfAY
	 jXvOVM0gZY75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894119357.23645.352707121366655669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f586ea8e500caea7610ad25af0f0c3df70add0776440269a91646fe3b9f7d3
Date: Tue, 03 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748941193
