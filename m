Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AAE1FC8
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767415434; cv=none; b=MDrUGUw7xPfY6DESbbGynJTveQycVo0shxntSeqU2u32Qme+MKwdwVFrIJdQEf5eIPd1QTJXg43wTiBhxqKzuR21czKhYj4XYa+TelcHSZS8UNCyLJ+6FDLYaZdbtFB1xni03ik3MJ+gr9joRywLgQJQ6MZ16itet+d9rdaPjSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767415434; c=relaxed/simple;
	bh=wZQtfbmmeLxgpXMTavMnY9xaeuuzKHCqxqN+E6/2OMs=;
	h=To:Subject:From:Message-Id:Date; b=XfZx65bjG+c4mON2eJRDNjjrm0pht8ShqPH+2Win0PXT0hnsdFa+fhvnhEJE3zwyZjoG/7hAi32EYlY7YYYSKnUsTU2y9P3IUzE7yuMs9ujS4QWRIT3y8KRTwXyQN+TbFRJKXsAYWykNS1MhFwTRX4hqdaGgE4BdHLdXqt+wYAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ+xbm/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ+xbm/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A8CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767415433;
	bh=wZQtfbmmeLxgpXMTavMnY9xaeuuzKHCqxqN+E6/2OMs=;
	h=To:Subject:From:Date:From;
	b=MJ+xbm/emp7jBFSu0xTZCwp6TqtcxUYDwYbUWqhxgg/epML6A4WIVRtPwTQJeOYzQ
	 rnUb1yEngQvDf9zLE7C52LMzzVeC9vNOGGJGv4NGYLTXzBMnrKwufOjC1DJnzGCoDf
	 SHmLb0Xe65zcamP5GcBGXkp7WkQeeXQradvS11AueEQfxlaOlBV+t1APUD4mzwL2VY
	 Ho0WzmeEID0kHnzdC9EpWvsJhsMh8n9Nz6yVwLiTXvlzfIPdSEHJgoavn3/pfHHZGP
	 Z86oesrhomZ4GvF+WtCNHZapFhwBCoix2EyV39CsAxV7fbZ+Ag0lgT0jzNYaHwoDaN
	 egVBEASKhHmpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C6FC6170
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741543357.29622.1146134426260201772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa2378a75ce3201f18e717eb4cb6066a26e93c7ec201e4d89b786826967c385
Date: Sat, 03 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767415433
