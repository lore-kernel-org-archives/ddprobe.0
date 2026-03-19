Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C27333F361
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773885896; cv=none; b=gAvZQymnwHh+eVeKeT/9v7+1ymlYC6eq3m6KSg76BW6Pvhvy3DHEh2YdOxEfwEuYhxigUHXwImPIPxAxmsdAGsVsIWT05OwiG1fjiNDrfJiUcEz1XywRvK29sjUIRLdutlKkrRpZo3O6qLtaVOZ6qNOgF9Y+qscw0Du3Ggmvbhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773885896; c=relaxed/simple;
	bh=//slW7f2dUYhS5eZ1ybItb4apgeLqJawk6yRQDbUalo=;
	h=To:Subject:From:Message-Id:Date; b=YPTBIoEOk22ic02ubBs6KOVw5wrZD/R9vbSN74pGZkveXGKZcpdMxYqk7LZWtZxuwhrPbw4CIzhfJX4k17kl5SwH2krQFxR5HYHpqWO6mU0Ran8hy5hhRkb8u2CB4048MIPqVa0Q6Sv+vAN6yHEiYA/mywB4CFmSAP7R4jPQa10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOZjCIl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOZjCIl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB088C2BCB1
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773885893;
	bh=//slW7f2dUYhS5eZ1ybItb4apgeLqJawk6yRQDbUalo=;
	h=To:Subject:From:Date:From;
	b=gOZjCIl+s4DYRPHubDsHb4IUluufcr3JBi+dwuTPZR983wC5leK3jZCi/5lE2e3q0
	 lX/yuHM0gF/eQ4k/af1j2yX2mtmGdVlL4P7FtU33ngDf0NLIBaFXn2/zO2a+w3CHfC
	 LjrIzVW/29fjTy964qUFRYE7mos8efRaZK9Nt5klOrBekqf+v0qum21GkQo228Bnyy
	 P9kPV38OQrNbMxKDGZ+xxjkN5G5mL4/u/QbHNpEv/3nwSDPl/23qvZgeEYuiw7eG4h
	 0BxiVVo0q+22XgRaANh+vUMiGU3gzjyVLzxxeRcN2O9kDohtE4CXgtVKflSFIIE8WK
	 hwjBjdsh4Mnfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FB1088E66
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388589359.28888.4543015242550761331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65612b493391b9d8578c48c2287d96f9c192cba6ceeb6a83d09c509f67d16b51
Date: Thu, 19 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773885893
