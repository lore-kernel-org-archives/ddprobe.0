Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316D22E8DEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766235234; cv=none; b=a29Lou7/HE8VS6hzlRJ2kwHpLwUSku8FY0lHnQDYoWn3AFnB94RTHC/vRQkLrsrOKYHRZBZjofa9Gg5hmZ+nCR0JYURuLCrEyFlY7SCcf/12QixSMHL/glp8NqHkHK9m6MbWdoX4uYL0/6YU/qs//Yr8gbuEPV6IXgCmdvmSdK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766235234; c=relaxed/simple;
	bh=YQe0EeSB1kq7hHnXl3eBvH3BI/PGM01AgkbhYipeXSE=;
	h=To:Subject:From:Message-Id:Date; b=Lfwao7puDYF/T66fv4W7N4kDRNf799ot+n0pdDTf/1DSHubOZ+QGirYSwb+xJSZ8ih4Bi66Eomfy1FlUgHf7z5ReYLUY0cqLURMP1LOFgbXHqsD0CMbOD7umax1DQMZJHfhYWnkXIFgJ62ofKwMTtSWJjSctX9wR4JFcAx5HTYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuUvXLvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuUvXLvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A044CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766235233;
	bh=YQe0EeSB1kq7hHnXl3eBvH3BI/PGM01AgkbhYipeXSE=;
	h=To:Subject:From:Date:From;
	b=TuUvXLvvo3FtHtq351NZk2fYqWBq5Ae0K9PeUfi1wQqEfRan22HsJOqKZvHRVFP8x
	 qieGChHhTfSC3UjNwiOXEjY9zntQJmwKUKDaIRAqceV2G6e1eHatzN3DHpnBNRz1tM
	 snQ0KpyTed+nPT0HOrHUyX7aiku2ioS6ZELLPVVMZUKR3OzxuYaZnMJ044hH2l6ENv
	 Za1a78LYqqCKK4i2xtC9+EVLeg434pnjEXDk+cD004127EghnFIXF4xkItldmT7QCo
	 j5rGETvVBz5RSjqDe9mYnfKrpRNBPFyNXKUKXD1x3FjiTV6V7nrBu8+jyz3RqU96RE
	 z1eBXuVxzWdeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051DE668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623523358.22704.16826321694436444077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b05066ae9c60b7f016433744eb277730ff2d2cf3e1682411125e9bb9537554
Date: Sat, 20 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766235233
