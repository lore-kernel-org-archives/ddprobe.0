Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BD027FD6E
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747334994; cv=none; b=bvAjdIvpP4iJqE1o3Cl1aMfpVRN6Hmwx8osfY4eiAp3K0q0z78Ff0O45TS0nrZ8IQRjyJ4iAf276exBIs7MsK9svzcvIMjjxGDVq+FOOcfRtgzWqt6R3e3chxFVHs51PbjDJckhUkJ0isG9ueL4yURbYiy5l3mcVSMJ3+34xIks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747334994; c=relaxed/simple;
	bh=DThL8RjoHQsT6VbYIfIuukv2pYMiqyCicoxC6DXsP1g=;
	h=To:Subject:From:Message-Id:Date; b=CV+rbRugSAORq2loJRh6tRmMYwXm0mG3HgaBFb2tlqggktgGwMDA+SfxUFnqAffO4DmZdHyab5g9+6wl7XEdZNAoN4LIA4oThkwA7l/FTALUhOcWhyH2qmBcJ0FBbko/3wvenv9XCMLlPn1K+l6T1xRR1cQRtvLLmLcCddDjDIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXc+m3iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXc+m3iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A328AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747334993;
	bh=DThL8RjoHQsT6VbYIfIuukv2pYMiqyCicoxC6DXsP1g=;
	h=To:Subject:From:Date:From;
	b=hXc+m3iMFPFaEHCstyjVRJS1is/Qce6blyjEIp3nUQQgqg74pNzmxItDOCmxU81Sm
	 /FttCKMKLousaFQbWJrwhJIktrovNjVq3kMVsvWiFIocoPrzAXtkfclJtZARl2eEGK
	 cr1uYpXQRexMZhJcQsz1eLV419mQ6qvtbx2Yld4W2pzAq2VQpHB3+hfGUqukLc8S7G
	 ay0iefzvq+94mDcVsDIFlggl6N6OVvuS7UVZ2Sz+bcSCg7SptRj8bWHzpG/lAQ3Mch
	 zwypNj6wFInH5J696rIjddXRRih+2ShlzVAoiVh3RaSrlpT/8xccmGO5xpw+j5lCVO
	 Io7MgObE8tp+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903EFC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733499358.24545.17044619092420534864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfcbd0de44f091035618d92b9faf03ebd7719ca72e0210b9f1a7c1347bbb3a5
Date: Thu, 15 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747334993
