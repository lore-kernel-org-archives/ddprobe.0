Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344E5567F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706150297; cv=none; b=rtgle7+SyEvlRMeeKNyJeNaWvGzHd+HshMbgBRfTzV1vc1pNxWhgnE+wjoLbY6wap0yt7UErCw2kXQ/xNEKmlVgInoZUfORhCYVGyeGwmG6apwlKZrA+jBT+/n6ouDjtq7gcLrKUFh9YD6A1U2B+Za6szkW3AnSk9NqxgcIuGmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706150297; c=relaxed/simple;
	bh=7FOqo4nuT3Xac8tDzi9NFpEncvilPRGgd4pxF/Z2MBE=;
	h=To:Subject:From:Message-Id:Date; b=cN8vZN0bSY8abpIL+eO5ngLwexyLp5crXoWMbr/FTbDsG9eDZEsR6NHubVyAcpPLjm13+2kgBN4m31x19Ev3ql40wol+iVmPP7HHPO5FQ43CXn7S9p55kiRQsxTO8hUoX4lkcrI9v8UJTa2NtgRkm6weyTwIygSxoREkUfsBSl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsXn/owd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsXn/owd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CE5C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706150296;
	bh=7FOqo4nuT3Xac8tDzi9NFpEncvilPRGgd4pxF/Z2MBE=;
	h=To:Subject:From:Date:From;
	b=OsXn/owdF4htmSypqBHxGL6ol34pLfNtwdZoQge/bu+3oaYmdBP6Km5Mygg7+6xl1
	 uKDu19Gyd/hP2N2uNtVpDPg4CjsoLb4q9PTHLxjPFPbW06zs6iGzf1Pcc/539cWTmw
	 JXXxeUZglQI6yLOd/rqbn6ji81KCyPS8ZjBdd3QmM6gdwudu9v6t9A23CMI7thASnC
	 1Vl3brnjLp4W+lRSwAJbyzRRp4zqf0tvkradTMFu1r6hA4QG2XdldT7drkijljhIzp
	 uBSWmWd495vOiZm0GwzLN690I2Yq9FyQ6ZGs3qgLvoiu2PDSzcM3vTVAEvRhnkLw21
	 tKQu2jx6jIjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E672C46CD2
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615029641.3848.2870930421944131470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672309e0ae2e669296c75b35f3e57ea3b70832d4b8e6328b7ea5b6b6214ed824
Date: Thu, 25 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706150296
