Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD991799F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735803354; cv=none; b=LzTkf3ktc6VA79/wDNsDpdQdiZCLFB00z60875zVWxeatXH2dgPFB3hrQSwZZijWjtFtmUTS6gpbLdY+JKacTXnpMKnc+QSiME69zv43g0jM1k2uP4gHP7gfwt1GXYtSxrq0hHU1aVcXSD5vqfO3wLo17nMe8b1RzH2kwk/QAqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735803354; c=relaxed/simple;
	bh=GuDM6GAPKgn3MlL31DoxGnr8TPNb/L07TJ9uI5HzWRo=;
	h=To:Subject:From:Message-Id:Date; b=rvN8tpnrXtQO9Okos0STLnvXB0iARxlAHKja5N/OcR6gN8/k6QdqNBzcdXbnQL56LriloMQtSri1KD4pqmXcIkpwIN4IgKWrKnhPkGCYneSoJmR+CyCFGdbL4qpmmJuM5CjwfJRmqt0I0qRcGs3h9BGWRMZyfXuCOnCg18BBqHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptAqmqmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptAqmqmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9CCC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735803353;
	bh=GuDM6GAPKgn3MlL31DoxGnr8TPNb/L07TJ9uI5HzWRo=;
	h=To:Subject:From:Date:From;
	b=ptAqmqmbo1OqsJgTXqmOhc207+ZuxQ1TeA+auHCUzR++gP3W7y4BQBnaSLW4ZOYaR
	 +M4ytE7RF4DuHKZt+N4u4U5+DseL+SsOL6VA7jLaIE7jk1HgvVSCdmxw6KARkDtCfa
	 qPOnZJ8zt8c51xAUs7LLf1c/Vgb4de1tWOVfJGcamarnNHV6CsB5/S+EYs4WcszdEW
	 iBBugxNZ+a+sLgLuPfva5FkIGUbcKkernu7hB1vJxaIedGE4IiT63sZ0ygMZK/oNJ7
	 gtfEUjXtjQaP+NN5sTldaV9kLER4ahM1Tk2yhsU5B1qWZs6rREVjo5Ma3oK0jVM3/F
	 Iaqm3pJqOQseg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9743CE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580335361.1439.11259507000626124731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976c203a4aff53aef511e465c47c05d60cc92ddcfd53b1581009982f48e06828
Date: Thu, 02 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735803353
