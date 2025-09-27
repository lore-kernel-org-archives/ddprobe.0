Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9F51C8611
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758971394; cv=none; b=NglPYPlOSG9GpWLnDddlesp5FUxpK3cbXPzc3P2iwo/AHnqL9d0AWEBzrmvmrf6OyNolkbAKheUcwDCHiSJbCx+vWWS+t2z8Be1x1THy83j6VmqtqCnoInr8uEhpnife7ExGw5H4WP5GTQbe9GAq8dpgEkxcTupEq5c7n0+D7JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758971394; c=relaxed/simple;
	bh=IOcMsvfijtYXX5n3fxqiPlxNgmmbmoTkF3xkDC77WXQ=;
	h=To:Subject:From:Message-Id:Date; b=MwQ2e6Ba5OvNTL6RB8psAWCw7C7/q+Bd62zVZNRjCqBbmn7HRibbWKM3xgmHBHn0T49RayYcw8UDaqpuMeLxHnEZoI0tgslPrq3SVLT58RIU3WPGacw88t78AZOaj8RuEBWBmmqCbIXGq+k4E9GeaoUaGRSwOAcbbMLI8LA/zWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWJizUHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWJizUHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF74C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758971393;
	bh=IOcMsvfijtYXX5n3fxqiPlxNgmmbmoTkF3xkDC77WXQ=;
	h=To:Subject:From:Date:From;
	b=oWJizUHDyjh4lPDN/zdo+jBax7gauIPOypVFdCDEqZ0wcT2e1cBA0SImcgsc47sOu
	 Y2VGN3aRfDJwq4XBwiRwS4rJcWwEbDxgAD+SMYQol8dLWqYBWHYfbID2jxCQA3VE0s
	 KgvNTbW4FxekWXkzokJxfy1Y6iIlJ1ESTgVFedyBiw+z/wB3CtY6QLhpVBxCUmCm2z
	 gL2zmj/hOrnNRUwFcBT7Vzb0NDRXvmKYpiZgqFRPPn6HObz+5PN3Cy2wWDGb9t6CWc
	 MUDQz/gXGsQJvV24vFGgPb998OUzxjo7tYB6MZp0rBcH9jbjbaWoIdD1N0kDEe+jwH
	 yylspLzlDS5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA8CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897139358.25625.9691803877101702076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08e866fd77fad9fa3e10f44a7d0608e712bb190f33f435c7e971224674fcedf
Date: Sat, 27 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758971393
