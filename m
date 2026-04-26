Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D79113AF2
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777184254; cv=none; b=TWNlCI/JBVtaGqewpU4Mehpquxc1c0F/Go1/EQFOsiHd/X18uatOXkZ6gsbdy7B94tC0HKPi3RW1u8kjkcvi/JSLSzO0sc7RK6uchHtztJjxaXCZnnNEXRJibvlvxB0hDiI6IPm8s5r3L706rfBI4+pMEZJz5194Pqm1wy8WnkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777184254; c=relaxed/simple;
	bh=ae5LI+V6yS6JJXfxW5AO0nmjuE39dw8wzmlMvl9Ha5A=;
	h=To:Subject:From:Message-Id:Date; b=YiPcfOqTGRv5CAA39zHGeHTrCtJBtUO6bebiRbapByB5FvedCuwCjNE6XMzsNYtdVGqylMi4p3iUMeRVXC48Y6pSPXxE7uMzosCrQjldVUtmBdPLm7RbBAYMTxbh31fMLOhkqQGPWqkWLGTDbu7dPwLOgWb/jp7bbw+eb/avvAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUekR4Je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUekR4Je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1580C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777184253;
	bh=ae5LI+V6yS6JJXfxW5AO0nmjuE39dw8wzmlMvl9Ha5A=;
	h=To:Subject:From:Date:From;
	b=aUekR4JeqUuGaCafJ7KBQYKtrvBcAh4JdkWkOj6m2gEfMH1IQUHO8K+lJRNhP1FDR
	 NOV68FEPMke3ipAO43zKlpeGGZsR6C3H5IeuhYa9copTQU1doBW8pSP1x9NjQ3bbgC
	 YjhjLG82i519gCJ8Bzu32diuHqi7RFY7NvAso07cZnfcJHXTqi5d6FIJk1J1gYyI1y
	 aLeIwiSqm/ObWNywLDDv8Ge46wevRSMiiCX6V2ZEdNAe9SJZbmRYSr+yDEUAuXqbbi
	 O25aC2tM7DLF+UBmE4f9pD8hbIMBaXNRDo4lNoPVYfDqOmyV95H5sMWJk2xAXVYNS3
	 jzO1We4qrskUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF02FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718425368.23427.13363361859275693938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9225eaa9d5fd27547eabae76a3175cb18f97bf0fb19db8971edfb9a23371165a
Date: Sun, 26 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777184253
