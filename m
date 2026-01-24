Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168B341754
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769232834; cv=none; b=Cr0UQfOumoe/h8pLIp8+7TnMJ2r+dis3cB5Nv3gDTASTiAupRNewAv3T/dZ47JnpkXM/Pw4/SFCdjgnxD5gUlwbJLKEaMtIgVrm3fNjFj9t8+sVOTxF6fOtzK4BHZWA1XAOuStlT5t4Pv3TQYUuVhRmUmNpTE1KC4hmmr3/hOdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769232834; c=relaxed/simple;
	bh=6Dh2TbL8X2KkgxUegM8YZDMUPizjpEtB5WkYiQzQkIU=;
	h=To:Subject:From:Message-Id:Date; b=ptSe9pCoecpdahOUuE8VA8OutaCz+7Bn5+vf8bJVqG52hmxWFw1IvHt7KiThPl/h0JgUGX/FCGeKUa8c/yLY0/TCJfAB3liHM8iT/Txu6oXcqJxOQgTbxOBSEZTWZrtaujW5TCXo+9trcOqBpY+dE22SpimT+aK/K/DAbfqociE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/T7XAd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/T7XAd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B58C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769232833;
	bh=6Dh2TbL8X2KkgxUegM8YZDMUPizjpEtB5WkYiQzQkIU=;
	h=To:Subject:From:Date:From;
	b=N/T7XAd8Z++uFyOkCbRz7kbq2NqFBCCPY2Z8OjoivW20hTSKmVihXH2uLpZNx+3oV
	 P3hB572T7J1tal/VgCmLfx0GzGHkL9qs2mqu0jB+Fomb0ihIKlq8rh8YeEfu0IYkQ5
	 D/zqnbGjO2sir0OdFs8GDMcIhTbDf9s41BKk2j+9iQV/KsfmaKZoo+qbAhOS4nmKN8
	 j9x3UpwzMzUiHQSMBE+3gIuOMdWAV7Zn9ycQ8rtpGSqMMMgJekSKtNcwRdaCTQgPMs
	 gd94vMn06JgoXamX0oRUCw84fGQCx1D7iccy2O/CvqXqhayOnEmeNjsSkUQ4VAusbu
	 28KQehoeYlrRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C4D715C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923283359.13415.7536186956623485623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68ac2a6bb1918ea203701cf5ec9de6b4490c5dc43f3f3a48e5b44bad00487b6
Date: Sat, 24 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769232833
