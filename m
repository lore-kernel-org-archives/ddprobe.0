Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8AB288DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744593596; cv=none; b=X3EeoGCMZ1j+LzypOOCqab69fw9+WGDDwe81W2p37sb+qXaNpKMROPfCatZEFT+2gtOa+7oX7O4UWkvSlguKcf7jwJB38aBpXiEn1IcTmkVr6Nq55QmECRcteD+NxR3DuTZ4iLKjvyp8ZBbZDLV3bkXE0Vt7X6D3TP2L/EPCGbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744593596; c=relaxed/simple;
	bh=D8Q8COCAVJo4r3wfS/lixrGOaqvp5RT8FiTaz+RjroQ=;
	h=To:Subject:From:Message-Id:Date; b=WSgXx/jyrwgCw3r3bNX2qpgR5mF1J5jtxdqoBoNfFYrbalFPJiNPO2Yl8V4QJIfm767MbH8XgK/QTz6JfxhX/dYyDP9djVteeccZfwLaexgMS22Om/E34kaiL8zQ8lEyJ8liS6mIJXjr2m1siVsCX3nBSUNoVEvgwZQOXgCLn38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLJeubcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLJeubcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF55AC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744593593;
	bh=D8Q8COCAVJo4r3wfS/lixrGOaqvp5RT8FiTaz+RjroQ=;
	h=To:Subject:From:Date:From;
	b=FLJeubcLHQEKSPJx8q+LDsIRn2HxgTkJ/yrnFENUvMFrrWjP+RiI49ZCat7NlL2Vv
	 yipqZUU+XsCq87lDlRRaGjruTJeaLsxt+MQ666D9JkWVggZvTd/g1no+d94JTRItyD
	 uXotT4FP4wRLXow2N4QLkte0QjRRXdekHaw78zmRyc6WoIftM6XWUKahdexrkbO1hN
	 7+8uMbfHdhvZm4sYCQlzhvaB6j5ZenAyiGOG477XpwIBjIE+vtWubzEWgedo6yhlCw
	 qsaga66Ib9sEuoMfjrvIZie2Aimd6ecx/b8ihBjAqj2BigcHE6lCMaltw5G+GF0uPS
	 X2EZCbElWHVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975BEC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459359361.27316.10821750912069749103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ecfcbd610b90acb869cd0c1f65580e1d3dd7d0f334387e86c9fd84d9fdb7c0
Date: Mon, 14 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744593593
