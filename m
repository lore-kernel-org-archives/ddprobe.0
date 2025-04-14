Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAA5158520
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744615195; cv=none; b=tvfBlHUw+3OrDOXMD6GtRB/qbHSiPqT2EOJH3HZP/OryRzd2kYF4dMecWZzt1ZPlVETuXorOmNMjlcU1zazEl1qGpNBl2aZ/Q+Rz62SaQo4o1TZ75AqdBr6dkJId6tIRupNPg+wdUhNz0Nji7JGZO1ZQYdNafZH+qrm787zrxI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744615195; c=relaxed/simple;
	bh=KJYmwx2X7ZAZSCqiSmABAXQXLt5unTdMZxO1+87G8M0=;
	h=To:Subject:From:Message-Id:Date; b=mAeV1aBxesIm0oOLnVxxmcj+yz6ka68Yjcsz8CU5l+RNYZcA6iflk0AB6zsLZZ0tsKaWw+pwknOaAHKvjEJ1sxYaNbEfP50DfKgkNi2ozXVdRXj6OXiu8KJioWJOjFR0hKIX1zgesf/5nQFodDpVhrDq+YMP4lC4gdEl9cBtlg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edvO6Mbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edvO6Mbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58FBC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744615193;
	bh=KJYmwx2X7ZAZSCqiSmABAXQXLt5unTdMZxO1+87G8M0=;
	h=To:Subject:From:Date:From;
	b=edvO6MbvNTqkesSp2I/Cz+0ODvykTfeaUWlgYBWRzWNx3DN8AceRABBKsKQ26bAtF
	 Q29df6vAaI9pEdAnd8gihhcYSIwMJcdJ7887i7bQRNs1cPTssgzhke8OgAzmX+oNsY
	 Gg4kdjxVa4cfHM2t2o3nu4A7kbX4DlRh6QbrcXC4pxdtaIUglPstSfCxBFd6/1zoET
	 n9FOa0fGPdQdJAKhonn7oUpoMBI8sQoXwc0/mmh6KAGR75+ytxbWFUWp892uj0CWUb
	 nqgpjR0yC0+RPWIphfS45bSUkkKomfh1hHD86M/uWsNXmiHudQKqeJpFzxsPBkNHYR
	 xduj2Ez5ZHrNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90797C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461519358.32165.12215198301353556141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c04f330477f5015c8e9f6d54364563557d46ea8761b3e40239d5c9f3890010
Date: Mon, 14 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744615193
