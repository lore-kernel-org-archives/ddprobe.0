Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3102319923E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719503063; cv=none; b=mR0tww0seVDucJjz7q9G4jATQcS5H9g/5BI+RI78MqxfXxNrRVrYPc3sKtNRW6CgbruscEnk9CwUXqm1dgIlaV/rmMB4DlNZDD+7iI6tCjAd3Bj2kG5DA364v/6z3Bis2Gg8uEXfBBWzTYgjx3lFRvnDosn4+zh7iEuj/fV9Blo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719503063; c=relaxed/simple;
	bh=Cj/EVMOeVbCJJpx18g8sOgi4bKsWXKkV02vXxLvyo5E=;
	h=To:Subject:From:Message-Id:Date; b=Hg/oGq8xCrK0oh4AQLWieVST3Hn/0jC/z/ViJ2a1YUvW3bgoqaluUyjgxKEmWuHcvkS+6B9GoJtIXtvtMfChge6n+alSOmrZgsLDpg3KyFlyKFu0Ci7LYablV35A+QmJCPEbvXxXo4+zqAnEx6vsFQiaUlLOefc0L/U28PbWthM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7Jxap+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7Jxap+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0803C4AF0E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719503062;
	bh=Cj/EVMOeVbCJJpx18g8sOgi4bKsWXKkV02vXxLvyo5E=;
	h=To:Subject:From:Date:From;
	b=Q7Jxap+5e6rhHqDL65ISOoGwkI9IatPQv2aItZpH8AzIoYSBfJqopjCA2Rz9vrKFM
	 4EL6H8CWtgSJ3uTkD+E2nWkZWp0dszExL9z6lNnTP4fvnLg9aDqkKeZ7I7l4nK9Gn0
	 vQe7qA9yvQHJG3Rn8BHivm4P02uWgT3mr3x6FLwoghgT52a6UJg1hFvJe/fn+e8lbe
	 0H7c7jVvZptg5l8xh5aYutIiwfGw9e8vy62YCDuB5NGUUuVNLRGOHYTeGYuZMQ4Fx7
	 pqL3BKsvaheCyxnKtWwcjecqa9khGrnV1Hx0k9M/xsC7rUWSPbm71jFHR/b/rMQij7
	 4ZYiOV+KhUxlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEC8C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950306277.13954.16469525578192352875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f854fe9adce5aae9b65d1c92d260d3c71dab464cbc4a80b44c419d3a52242e
Date: Thu, 27 Jun 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719503062
