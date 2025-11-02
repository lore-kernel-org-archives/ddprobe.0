Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465E51C84A2
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762062594; cv=none; b=FpuD5w7qi2HGyWuUMpI4BHM/GSZOepp5UGCnVqNxOV4jPl5r6kD/oBhKwyEWcdK8XnoiTpLukjZCn1K84q2z46C4pwGmL/wi3T++HmTIJ41KL2Tydqas2LTrHp0pDQs61Ko1vnLn3y5hwvSfJApW1DgxNDIVE76gVLcWE3QuIsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762062594; c=relaxed/simple;
	bh=34e3AWs9HhOo/94vR71iSWjY1x7mjGzWvp369ifFc64=;
	h=To:Subject:From:Message-Id:Date; b=QIaOxHrZgsYV2dEsSBSXLuXCAbUNHcpMgF0ZsW9uSDONpxRpLP4Zu/3BsjY33AUFBBkyxpg/1Z6AMZ1CaoFrHWnwHkl4Mrh2Yhm0vtl9oI+zXfYpyTx153+ISAKM3HbPEZZWI0nRCEPJo0K/dE9iSjOKbgfCw908JKDhHsgS56c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCtIIYSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCtIIYSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22C8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762062593;
	bh=34e3AWs9HhOo/94vR71iSWjY1x7mjGzWvp369ifFc64=;
	h=To:Subject:From:Date:From;
	b=DCtIIYSROWoVGwYAshJeqgkniGlfNeGmjPrjt1y3/OEsBdPYKGOkwUAjWnIEl7cI7
	 CA3/mSANGGcVTcyAbkKkHN9z71vIQq3IomMRK/gSx1LQgpoREdtNP3ePB7tVOQ/d05
	 ltbP8G4vWeFjBTmCFkT0Negn597NrQUed1SQjjPwxm/fDJfuIAO8RbRJgtOQ+viaFv
	 2dMKDcRcSiCWzyMBSdk0XiP2VwZcwHnWfi87mrYqdt3f7g7DEhWWPmBJmAsc5RAVi2
	 ZAI29kJf+0EtnwoMiGpaQ7EeuObYCtUouKaf3kqRII2BUNl3QqwBEraoU6X007ycCz
	 LtJKPEJhjttOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE73CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206259361.18879.13479961572488682973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598519843775d7b6d8c1c1820b8308e2090e80858f702cb1ac1c788e51340724
Date: Sun, 02 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762062593
