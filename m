Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559184F5E0
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787542234; cv=none; b=cZ/iV4I1Q/TNewGgz6xMZ9Ez8O2agdCbk1np1fzsxwbx+rdrmHAGztmhmqOwT1NfRZ1QOvExcq86EFQYMshrNxu1NIbr8ozQKSWYKeiUQnyNaaOhIUeqHromHbNjGR/hpw0GrMQYndwkNPr2kg45bTSni2waNYDnClq1KJECHOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787542234; c=relaxed/simple;
	bh=7ptYpaoBJyl6cmdFOa/n6QnFaOJ5xT5XhFMPcgcN3DI=;
	h=To:Subject:From:Message-Id:Date; b=K8rE+ZbX9kWa2URAxCkx29ILlzIju4XlrrZTTll1KJhrSe2ekbiG7QDiDzdToo2WG3rtlUwLAKe4fWr276PFmbNkJZomaLXYwrsMBNyxFWHvAg1RFmG/PPy4IhgN2C6bWVOsABvEbYLXSDOqE5uQanJVusv/vISau56uvjsnm4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5PBU9oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5PBU9oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787542233;
	bh=7ptYpaoBJyl6cmdFOa/n6QnFaOJ5xT5XhFMPcgcN3DI=;
	h=To:Subject:From:Date:From;
	b=W5PBU9oE36Dc2IK7a85VlCmeqNiwBCPWKs63GHPxZOCXwnd+akSEyBFR99bmNcvwZ
	 AT1FG7nyP/6SV+iN+LqUqZEOAOKAAiMmzPKmAETMzJlS53/DNaPolP8CBwZoFQTl5O
	 IekBA8Y2wluDlg8Cjw3PYgOc7/aaeH9I9FWlAM917mNQPJh4tqCWUUFdl1jZ2WY85N
	 ZmP9EpX1I9hjsVV8gIC8SCHFSI6hzPx9l76w+dKGS8fsSHjsndw/z/WBgL7j3UPvnS
	 t5/l+MyMGxYtdc0kVCQILODsfTqcAQGwOx/d8G5PPZFdcd5pj3NRgQcW6jOvDFwwoW
	 f0KJ3EqDn1T0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB94DC5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754223369.18763.8035650090026092849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f638a0b7fd9d57e0f425f44a793e03333c79898cfc8f6cf80f63145d7494c4
Date: Mon, 24 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787542233
