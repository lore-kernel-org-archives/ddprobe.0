Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E574361DA6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788235834; cv=none; b=Iiejl59OGx0X7SmhtyR+bYZrHv1J4niieRSJUdSIbAakXXZJIWAmfl+80bIi/9wYt2GATzrq1uwi2B0RcO6PALtrmShEhjJNw4tH0MO8QkFNCBnl6kOSDZmvnBqjBAhaxjKYOWaD+lerURaQ4G0kFgmgLj6z1mMhTjxbFbOqujI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788235834; c=relaxed/simple;
	bh=JN61jblVyNn6zEXdMgVrSLxrQbApUWFeIT25arkLspI=;
	h=To:Subject:From:Message-Id:Date; b=A73JZU9XndesBP2oeI8NiAKLClh3pK1ykZd3WfctIsN86gBIvDcttvxyhVhdooExrTln5SMjAsCih5A/Saym7xQy4JDx7wzBOCmBoRqRzRLojAuuLnjiaR5huN/ARR0NCY6YE6H4PUfok88tW4Ip0kWDtTCCc1v+u+mk7CZbSMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RK0+N4Xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RK0+N4Xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE7BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788235833;
	bh=JN61jblVyNn6zEXdMgVrSLxrQbApUWFeIT25arkLspI=;
	h=To:Subject:From:Date:From;
	b=RK0+N4XylGnzEySn9r+G4lCPWNa27NvGqGOdJIc0nM5hlSsxFgi/IfQ4wUWXPT9Rj
	 frx/Xhr7jXL1Vx4DZHqYnhcD3aGsL7CgUJcTDqsu725PHfjvn2pK177b26/UVNb57q
	 rIxTn+cRlioXCToxaE2aIkA5KSzgbfRqxiMbQi+SKZK4kzp3csO9c9NdNYqQuzB9eM
	 w7P2haNDlhxANd+0Bty+uynmx2ksoy3mkV9zNAauSv40NaZZMO5R+KRiK6F5u9wU31
	 5Lf0aKiBbUExxUz6P6ZEZzV6uS9KtJA4opCGMbLsOaFzoqIA0bSMInPvbeVzXTka01
	 1TBSRt4aapx3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D68C61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823583368.9584.2524923953576805520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92343a802085a7c95083b929ffbbb1577cb686e8bc7a424ceaa8c2850b6a92ca
Date: Tue, 01 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788235833
