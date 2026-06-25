Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AF43D7D78
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782387454; cv=none; b=V6aCasud4qZRVTYsH92tQkt73aOXdSqGvSQ1lypm3uS5IIkxGkvpwibG3OzlmQmIiiw3ezLfJifv7PyONd5o4Yy79KfGT8d25UC3hsI9Fq5diUe7aSNOHr18psMnWDUZ5ihKk8BBtRQ4pif7YRbg6Lx6LC/TDpIgmfY7iAHe9j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782387454; c=relaxed/simple;
	bh=EnvW2MzdHbNd4Hc8Szqvn4HYVKoOMjDf7pWMDNWQ3+4=;
	h=To:Subject:From:Message-Id:Date; b=fN318Q4tUulD52KJ7xG1V465y5p1vqnjZt1TVXbPb6GsQ9YAA8fdsjSYFfcHd1BKXGqxg96V9lAGO5Glow1aPOxDpLus+SwOY5/BR4ecEJQDY9GPEtrsN1OOSjO4eeVct4M8USa8N5hYJ+QAXupBJFbSp0BUj7VeAIvTtZK6uao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6atqtYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6atqtYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01E8DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782387454;
	bh=EnvW2MzdHbNd4Hc8Szqvn4HYVKoOMjDf7pWMDNWQ3+4=;
	h=To:Subject:From:Date:From;
	b=Z6atqtYlzz2hh+5plhHi+gP1uVN5jjBPwET8b7DqGPdEC/nAYbstn3bNEnYn3jro2
	 9LeiskUjPRCMnT3WLJBt4zipnIvd1yRNZQrARblthn2mU8cbuZ7IoD47HJODd+DBLR
	 7CkkwHjIe3VhY4cCG9o6LWIlJTCDDvowi4JyljU4CyL2eT+49opxgW6QCJEwc7H1FJ
	 fCOZ65dyom3e13/Ueb9d503UTpcoiQETNXyPPXUYlUHMMRcFENcQcvS3BPr+VR+66U
	 mbuatZXrlZAordYRyY1SK0VjVDBNzPIngCO/04eWO3GssYVLllj6xhGlN0grVHdTgf
	 ESTyRaIi8Vzpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69ACCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238745373.12642.8111127920530227864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d5ec54103a18c58f85371767cdceafdbc07ce9fbf40432a876846ba6dd6d88
Date: Thu, 25 Jun 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782387453
