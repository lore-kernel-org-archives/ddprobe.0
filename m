Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287CD19994D
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724246154; cv=none; b=rdtagrYIoHdgXkwFQ9cBf0fVR9wt1s4V0edt8Gm0Uk+SlGyJe6v+KiF3FyVTJ799lLVluWbhc07mWkNk0SfEalKPW/H+8D0rpYyCNbUIReqnkA+ohGi/fEozuRggyD+MGTAvwT2Q/ppmbfIDzmxvLGxzkLBHa76Z0tPVzU4sXjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724246154; c=relaxed/simple;
	bh=hYTNIXSJhxIi/SIzTmrMOxzqCOSJD97F11UCrBrmr1w=;
	h=To:Subject:From:Message-Id:Date; b=Ic0MdTDOzXkq8NuBYytEOgximBP5CB2YVBUbbjMKOrbtulJqVxB5TNrq5SqY2jFyd36MrkEfyTcrqFDhB4uOKuGfgMQhErCt3aAym8nLxSfP5J2+WgZkNiBWLmUb9h5pjKqc47VC56P1bFT8EdDusoHCoYzNUYEgD6ezU3RTGJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttjVPTcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttjVPTcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D55C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724246153;
	bh=hYTNIXSJhxIi/SIzTmrMOxzqCOSJD97F11UCrBrmr1w=;
	h=To:Subject:From:Date:From;
	b=ttjVPTcTIBudNJEXrguAvr39s8Jisuq6K9pNHBR3Bi502h9PkJ0nqlTiIvYEZ3oMt
	 l25W9NsgwQK9h6ioOG/BLvmsRUXI0L/Sj25y4qDLmKdOUFukjA/KIUfG8tH00ABDUe
	 zSeTgy4WCOOVd19bTC9+aLIiNhdcaUR3CcykI2bjkyjaVYRox7ZWB801lbOvpMKY7n
	 miUI+sthTBc0PHcQM9XYLzLSx0ZxU5fapmeR7rjiGfvDwv+3VD8qv8WwXhe1lH7Afb
	 MCzoMWR3STtUSKvlbYRn0MO2RBKXxsD/C6f+n0BRmBn1zQWfBHJ61iRYxW3y3NdOnP
	 Rw7sJkkZpZV+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697EC5320E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424615360.803.638436007016902066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac9c0a6e90a5bbd9c7e809193c892c969d7ca11fff74491d908e4fc9fd7d301
Date: Wed, 21 Aug 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724246153
