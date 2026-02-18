Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3700E32E157
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771449894; cv=none; b=pft9LXIXjBkZMPC1c4TgoOlmtO8MtF4Mj+qBQyohKQedrnXY1bfjZ6rnm2CJ2v1U6JN5ZAftidu3uWBD2MYxaqLdASRfSfPzYxQ4NIxEoRY7OkRhzjphSYJUoBBbW7iryC+zRLglytxXf7tNT6G3RITVjXze9VNs6oJ6Qr6ZVxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771449894; c=relaxed/simple;
	bh=SCOfCs/LtA4orFGsc9HwbP3avhaaFtzHtT7zwubrrcs=;
	h=To:Subject:From:Message-Id:Date; b=tDf+VyNAZWEcc4VShlwaIxzZbHgnwLL1YC9tM6nVqu3Pf4PMW7dk0QZel38ECB7Lkvz0vizqJxvI0G9r/7zPFP9L6GRpABcs1XT0tGBYKIRr2SZ9jyk3gt84mWVcWeDe7MdPqOIcCMPDmXXYrMzf6cOaJRnZTB6OVoWSk60QDG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ssn86IKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ssn86IKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DDAC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771449893;
	bh=SCOfCs/LtA4orFGsc9HwbP3avhaaFtzHtT7zwubrrcs=;
	h=To:Subject:From:Date:From;
	b=Ssn86IKNycHQW43iTH1DrGgyADV2W66t66NEYed0tmrcI7UOl5fvZSlZqO2/bpm+x
	 k6g3kp+E3O4VW+qywdYXRSWdH59Lx11UXb3Fnyouewny2WmD35Ii1t6rm4B9dXWqK5
	 2yCTqwumq2bCE2i4cXSB3ZYub2tcXVZ6sc+D8fBkQiSOWMRQCLwW+dJjn0e5l48xbV
	 po+mT7jAaDMCeOuK3jM7P2coq0TTiLF22cdfK5KkjRICEPwNeYj9B/5O8Gv6rYHDmH
	 +uR3mCGSSH1aN/nGtQOCLVAjkvHM1iiIx+hdKy/78mynVHc5A/F3j1gSbZxkbcZGyI
	 B0dvUUnpUCtkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA07E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144989363.27589.3284054342830624984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23650ccb7c19e3436ef387ddc451cdb961bf98f8b37650173e97fcead0cd6cc
Date: Wed, 18 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771449893
