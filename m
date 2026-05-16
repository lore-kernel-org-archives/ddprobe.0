Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411193E3C40
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778953234; cv=none; b=dJFCNebyeU1bVhU592NJ/NfcUCxYeLo4KD1S6dIcnvDWwqyd20xMkVmDitut6/gKMTkwrz7Z/zt4gs1ckIjc8W9DDBj8Rbckvc4GhJGtIwFyfmxRAOZcxXWzvSgzF6otBJvlG6QLKjO5zumxRqxD5X8lbd9eceD7SXMvYl5BH3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778953234; c=relaxed/simple;
	bh=Zm7fjD6COTn7taHpMvRzKJRaWq1hxxaWIy9xLW9OFfU=;
	h=To:Subject:From:Message-Id:Date; b=UgDNNe4P4cRy2zy8tFMy6fUATa8kda2fQ8Ze96U5DqfbKeXQz8u6gJ4HpsiWpvOOo3bVeF1y1fKRmcAJmak1towmQeOab6KqBr7ALbtkZbpt1kjNxPhcyHAXP7ZH6drqgEKCzB2tn0YWPkqyJGxTBH6k54DufLOwpJhaAkUy/pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkZW+eg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkZW+eg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0044C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778953233;
	bh=Zm7fjD6COTn7taHpMvRzKJRaWq1hxxaWIy9xLW9OFfU=;
	h=To:Subject:From:Date:From;
	b=JkZW+eg6VB9vZCIXEgBhiPMUOXG3mQlDCWEtYmW2Jf/2hYLxZhAvWHrdX/JICMwUp
	 tg5SAu52DXYNZFMPPOho5ZQiBtTTM35OoyHVd/AbfTzvok2jRMdSA1EeDD7kmSwV33
	 mVmi0nBkBlmwWbtU4U/SiyrXePhK2WSMA4jy1fFmSd0SfAZHg6xOFPKyPH6v66E3w5
	 6FaaMbhpzoxaHfMd9WFIw5F3eqiYNybHG31BX3lMCOALl9GZ5DDCtIOVxk1DklJKLl
	 e8IpeBRCJd/d7MOvNA/jyaoqVEhorUiUZeUqTiuerxHC0EI5wSm5APIvcqBWUrCDoL
	 /PwsUe7FwFstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0614CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895323368.4129.6456684481766964298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5982542f556e7de91c52a0089d3d123ad970eeea44adb140546ac63a78c63a2e
Date: Sat, 16 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778953233
