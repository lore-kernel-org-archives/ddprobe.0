Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAB41662E8
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729750554; cv=none; b=b0tBu81oYm6c6aW7BQcJiFnfl5WaRdfmEjHIRmWMpSz+KGlfmcbro/VuSPoNKfb1Q3uNiz1qoLgWuuMYpz6c++6kYXi9zwGBlArAuP344QnAtGQhounU5KSJACobHSaf88OdD7oq6arUHCDgcwCVPkvahyDPTO/rZlFDu34ny24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729750554; c=relaxed/simple;
	bh=GS3X5grfGgyxtxq7F6raNme4jZp6DAihpeRwx+tMblE=;
	h=To:Subject:From:Message-Id:Date; b=PT+yevMeM8qtv7jeVKV5xh0ab1loIO7BYpwuwxAj4grm18Ht8uzWLjalWsJTSByElRwbFkUo25AecTU08t1U2OXsPQ3iMpepV9dJZQFc9wi+TZQ81ihD+Pox8T1ibPr5s1cPN4ATNDa2TTYVY8DzZek/cfS8/nT6lQ4Bu1UbDiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2Tscvzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2Tscvzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E35C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729750553;
	bh=GS3X5grfGgyxtxq7F6raNme4jZp6DAihpeRwx+tMblE=;
	h=To:Subject:From:Date:From;
	b=N2TscvzqoOcJXA7jekGDRVum2Pa0gqlNPLUARdfMp7E7IjMERtU2WmTQEqhwKkdXF
	 rdfLDTU3rXYL5yLO3mAL3xXfCHBRMDMwpPONzX3Qp0YnBTeylmtyxFZbaQd+51Q92G
	 7ZdIoCpwdhDvUjqQd+arZNFRM2O6JeyKc4/1kYAYzTfvAU7uJomsn+7XWVbKz4+meR
	 Bq135xvce8K6er/eV83W4+ghZLitjxEKNcMwCHrglhkAyhLoacGcQdKZdLDZ1bw60c
	 C28sxK4t19/Qs2wHSkFmqR9cfzS9UIK1MNbTtSL+w8v57bW6JMmkgYdb7DJTH1Z3Xr
	 CWS5DmofIo52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985A8D0BB5E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172975055361.5082.13255793636302581136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24403c64203d81290326b278512b7b283be0a12032b7d78368a78839a7dcc3e8
Date: Thu, 24 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729750553
