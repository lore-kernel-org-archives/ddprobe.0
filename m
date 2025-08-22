Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BABF2E424F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755863994; cv=none; b=rtPCb/IGO9c4IvFZ5YdTLuvcO1+2ZFIn2FTxTXdbT7c+5bfmSE6S9tHKA6bizaEZFqfQJyu5jhS5efAbgUtFoUCX7V0Za7CUpQ7vJMHQMsS8SPQIre1vm6rOhFjIsPIK2ui2oJ3RVx9sM0+6/1A3N5TqCd0sWDb5S0pIlMalz0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755863994; c=relaxed/simple;
	bh=wKHwgMbPEXvB2f/6gin35erTFbsGugeOVKzvVf2EQJk=;
	h=To:Subject:From:Message-Id:Date; b=JMGYwsUv8IyQBafO4RCZ7Un+z25Ual+w6kEHGynK11UBLRNo2k4BZtKYTp0k28edrmi5dD8tgIefqVGodL2yBWQm90koUiFM/2H4GsFJ2or69NCrZAgtNhl2IeU1W1V/QX+kT5c5hhVQqwuIy1FWoHUEr3Dqu7z+fsE2GfSqYzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMfx9qts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMfx9qts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E312C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755863993;
	bh=wKHwgMbPEXvB2f/6gin35erTFbsGugeOVKzvVf2EQJk=;
	h=To:Subject:From:Date:From;
	b=RMfx9qts1F2Uv+Ox689HH1LdNFFjePMUAPvxQyskZU8oTSsUTQquRKiu2/JQbpNgG
	 MDELiMyEjvyt0aoBZWZebv+zeAKXKATChuoFX3dye8DtT2XKks/4NQQtbsylT8Svjc
	 wMqtvbE1wDMli2UN9/dye8Hqv0hATHQmV76g2gaklqNyMQz/xrv8Jg/tctYrICnq9b
	 a8QPbPXWnFo5nGnh2tcNQfjlQ0t19BgI32UNmvJftX1NYOEvuL3Cq6okyH+JNB+IL1
	 xUKL03a0MeCoE5BMaIVzeY1aNCnWVRBaNDwA5+sxpcAcMuOXKP6B8/u2Y2AlAISnM8
	 Qp5jjdd+OctHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E925CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586399357.9443.438119377406152134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e7554d22946d49c26ed9599e8264fbe16f09bac65645f7a1e0c11121ec4174
Date: Fri, 22 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755863993
