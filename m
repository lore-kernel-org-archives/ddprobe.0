Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4213636998C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788199234; cv=none; b=q4GxB3xpEp7r8LK5tGs/rFFS8Z27WH088KqIoW4SbFjCPAS34IxskkTI5B/qejkohRX8IfCccB9NT4SaBY8hwYCEd8FXm0RkP6fIuBfASl0qYZ9XWQzLttSOchrojbeaX63oHWfpv8jMkhFPSZbj4gWDeTZZfnO8JQC8ymtGHEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788199234; c=relaxed/simple;
	bh=9kHCa0/qhWLp7iCPKxc5cNfuaeARHUttP6tET6IYUdA=;
	h=To:Subject:From:Message-Id:Date; b=i459VR3MkT0hIxrZpyrcsEOK/ggmzEVwnME+MJswqw9iflQzKt/wnEPV2oH6MZgRnt1kyq+hk3rt+jt+gL82lSQzyufL2E8jTlFG7iAcUtMsSecvKWAQbeSzMxXBlkJG9G42q/dkRxeI4njj9/L6FrMa1Wis2SbNlN48Lq/imiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujNh2HkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujNh2HkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE84FC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788199233;
	bh=9kHCa0/qhWLp7iCPKxc5cNfuaeARHUttP6tET6IYUdA=;
	h=To:Subject:From:Date:From;
	b=ujNh2HkEAfPLJrhhyGuF7xo0mDGRHkOAragWJczCzsFEZDf8IcNWSJsX2Jmm+DDQE
	 FW1NmUk71kQyrRF3egNwv1MPKAWwNrGyuJ5I8ToThqfoEVa4QlJCdNYlHl2E5T+kD8
	 KqXFNfrunQwxqtCuDZJQIEdjtiDFP9VTtzGB/Zjhr117rvaQgZaEJjJePq+zybJsMW
	 Tb/6jJjwgBx6yiPLzHzYlPA983vBIt+M6bEsQdhU0X6KgVrO/JNAFLTVVOBB4sSehG
	 74YEoH//M7ljZkloTjn3bLJoUC509FNDx38KL0wtA2G2KteSrTHPRJI2zJ+y1uabTK
	 PQKLqmtE4dfjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CEC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819923368.24975.1576832110607021937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f051911e2dfe17cb01b3e42f4d2e66affefb1b052d417cf8d2231a965a83bbd
Date: Mon, 31 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788199233
