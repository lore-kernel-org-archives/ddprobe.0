Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372DA27C178
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760996394; cv=none; b=eT0CRSBt05583QGmdTdE3YoLlao/RTigG1UuRLPmJb6HffQXwzZd9SExE4L08J1QoeSYOnrrrHY1wIyiz8W2FCFabnu3ykl/LoV4jQYloYgGOcB8xpL8FUtaE87Nt/fNFzwwMicM4Cq/lia7n4pVOymBXa9qscIhHBPLhsoY3kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760996394; c=relaxed/simple;
	bh=b9C1pfArNdB0P7qgJXxZBY9f6ZVuzPaBu4iEvd668Vw=;
	h=To:Subject:From:Message-Id:Date; b=dohwmUUxDnNcQRLx+yantuAWM0qWHjhB7LrHC7fp6l2NUbZzhHB4TJTY74BrgBN0J+cCKrTKjwIKmDTpcTrIYl2fKrY6QwcVta3mb5YdGixQae3pNLkeR6nUDAtDEBg95QyoRtmC1n3uLLpDgy5KHtYSvkbfIiR8p8B79vxTAeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efIRwvSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efIRwvSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0BAC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760996393;
	bh=b9C1pfArNdB0P7qgJXxZBY9f6ZVuzPaBu4iEvd668Vw=;
	h=To:Subject:From:Date:From;
	b=efIRwvSgnU+obokpy7WdxZo9kzuTmAAJmNH+gXpUOtnW46tSPtkMWmyWEOKIxWh5e
	 3WqigIyn8UsaGRgYN69o/lSFEuAv6xPT99+ZyNABj2vJ09rHM5bJz1JQOXmv+Xos/q
	 5Reo/mXuIavHA6sLolz2Dua3Kt0JIrK67OhQAIJWOm+LQsceEsVi4gephhq51Ef9JN
	 Ayo/ZTLztCDP+smbE5yalojSHmb+bp617dnD8ocwNJ85mn3rG/W3NFCdyIS3LzBC5J
	 4y0bsQDGV4sR7kd8rjPORNOCOXjtgAOuFBFgda+2Nj23JMPrkAUhR7sMGyKAoxCM8c
	 gvs52hzqu4yyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95089CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099639360.19234.8219076624446363579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbafe5a0425ad00103c053e73c9803472d746b550f417f4a06fee268f848615
Date: Mon, 20 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760996393
