Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D5413255
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768994034; cv=none; b=KXYH7wdXwIvdlfxTbEwqRGwBaVL78A0ehEEYe38AQ53GnOj8OXJ0uB42kZECF+4463tzpZ655BleeLdwjD1v8h5ne6LbnZeXsHGogmXTYgylh7kzlECcH8wAp5Ucs7ikvJdNxpfKzuS+EUwDl8aKdN2/YiuqukQOFB8O1TuVJI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768994034; c=relaxed/simple;
	bh=KaFTY8sF+e5JMn8YvE7EBKZjsQveCoiR+sPobFRZp2U=;
	h=To:Subject:From:Message-Id:Date; b=GU/t9ACv9ebj1WE0q6ASVQDuM+76aLGxXxsR2aXtoaVr6vxPgWZ444lSB2IJ/ltcy7rtaURBNmZeAu9Z+D+88Eye9oqgB8x+wcK/tgCA0DRcBeUFK/WK8yLDs8gEt/6Y6/W+0az3pSfJDd6UlGT308whX6DBgEN0INwPVBPIUSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwHVnn7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwHVnn7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F759C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768994033;
	bh=KaFTY8sF+e5JMn8YvE7EBKZjsQveCoiR+sPobFRZp2U=;
	h=To:Subject:From:Date:From;
	b=IwHVnn7XwmR/IQvum1RdbgH42+mmQZNsyO+O8Bln2nGj02xhEKkCqTa7xoSgwJndA
	 mRaRysKrL57JYimfUlpSokdPc8uvBpmZUdN6OJmFhbh0P8ddzfthh55iQ47hDpAZNo
	 /bMViy23Fc7rlPblxvTJjYa1isO1Jhsjs30j3IFrZrq1pu1pWxFInPn1kv2YoCFiUR
	 GrAA3Kc0sop2cfaadaom4repOYpCwRT08PWV3wRaOmXK8E95EF/ZAJlbhX9PAV+mFW
	 3zAHi6K5pLffIWxdz+VRdrfaXfOEBvPbmad5AF1eyk1ywimVCE5H9A5Hcwf0RcPNpY
	 T7xS1jbuPHOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE26C44503
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899403358.17080.16103290040187524295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa4813394050a0c262512e8da7c9b0f511346720007b6fd38433f918ba24901
Date: Wed, 21 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768994033
