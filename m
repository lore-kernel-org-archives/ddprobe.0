Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0DF1547C3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729282554; cv=none; b=rut6iKKApnQetjyAIiQTkJBX+Rkbfg63iFDAZf2VCl+gvjQUpX33T/SesKgCvzWJV1zZQqFsysrkb4YZd0eCTf7yvcv/k7qYfsQSPV2pTZJ1GImwqmcL1AuEXioy596jSFZ7mO7V+j6uXvFdbNei1orcRgyvFgEw2KlwS0ycH+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729282554; c=relaxed/simple;
	bh=e3gWWLJLW1GI4+TcOOwlQvWEY3Q+PpkEi/rE3OIUAZo=;
	h=To:Subject:From:Message-Id:Date; b=n8kLd0mvwRhP5Jcz1LqAio6kFfFmlSdKmlz38CTE6dGvT2dbAJh40jjxx98Fk6eyKtTbxNq/UDTd90+yN28YOM9ZLdndtUyH9cHSpbZVoRlZNcJFSU8uR914jJArpm3vO0A1T/Iv5Uc4qNDj5u1mPTx+BwkwfenjO7Ykyhhz1+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtQnQt0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtQnQt0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B84C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729282553;
	bh=e3gWWLJLW1GI4+TcOOwlQvWEY3Q+PpkEi/rE3OIUAZo=;
	h=To:Subject:From:Date:From;
	b=XtQnQt0v8lLW9YaKM23ulCTDrfv2C7YMpzqO4pDlgfGNArF5K+tgNMXC+/2rPDFFU
	 SY79oamxZ5HQt02zV/ySjYtYVYBJmPhK+Edov4fha5t7oBTvUkJoR51nICCD4wCDm8
	 CHSXGCsssEc30EkaEvlSbexX1T4Nn+zAvVgyg0Ny2sNSDpqGRXwgYxttGzB00kYQAi
	 yDenGAcPjIpMGjavXlqLPiWR4g/ViRGejhGpX4X+CdYhFZUQllycLyG95JsP3u3gVF
	 t0+dZbU5B4Dj2ljeqyHEuJLSX9Z9iYT0qCeMBxWTuL6ge1dSyeG52NNox0h9ttcVeQ
	 ETF6QwWoBeAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8C2D3F281
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928255362.23942.10455547361914279586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5a5515784f26a2bb795d4574d0f9a53f08c64eed6b268e6022799365a0776e
Date: Fri, 18 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729282553
