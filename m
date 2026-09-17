Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7567D3B9922
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789671634; cv=none; b=KhtkoCmd5ycRH/e+6wr409W4dNl+ZqMdLYYzAjGxKF3eTrd7YZmcMct+tdWspVLeCaa8O5IWUsygs0ABKRigtBGUIjuJDC/8HnPAM5GvxNXPRvKsXQFYmv0MO2Rx3OjpSV1EjEfH3d+4H0sbCKJLCzwhgTcTB8h0w3Q5WdS7DyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789671634; c=relaxed/simple;
	bh=21vDWxxb7s8u+HyK2IU4BLo122YFNobjGFM8JGf/0x0=;
	h=To:Subject:From:Message-Id:Date; b=oLYwcbUQFFOxe5F6rHfCr5OLiHNbRDkbQdoBrs3ccORbpQbWshsbBLM4XjjOrRbibqSu+3j4mw81Q45k3W0EDhmXOzWz7YGT8eX8Td15zZt/I9mEpGAvm155YJXeQ1WNNp0UJDpNrqx3cx+FM0fw2jctHS3v3HSXa/pUTtortNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahHMiOXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahHMiOXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0696C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789671634;
	bh=21vDWxxb7s8u+HyK2IU4BLo122YFNobjGFM8JGf/0x0=;
	h=To:Subject:From:Date:From;
	b=ahHMiOXw+x7t+2oAcMylQnRMbSVi/d2DGzsHQwbzt4JbiobnD589sn6cH31Ehk+sX
	 382JNvsLOBQchzEtlskW9VScHQxkweu7Tm8c+SdVCE39a7wkNm75nZABvxhcVibR58
	 bLLGAVqjW++JuP/UgwrO8jTIiwUpNhO1QGLstVBwvhwIaCkl1hB+FJmnA2A95urRoW
	 Sr53cB3rQL3RofJUTGUIh8R1PsbCRv7Bw6yIn7x5SoYkCSXfvfRO/LHXVgymlAs5z7
	 Izv4/2QCLfBt7dDHWheS0G8Vwb6KUQbw3YsXbtU9n+ZW63OrYrUIK0oWfNwS6/GNsd
	 sNrexuTe4E7LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1270C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967163371.2419.1257886545531768637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1dc399f402338b6738aa8688f72e498e80f049b76ee1ae07e0b5ac0ea9ef03
Date: Thu, 17 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789671633
