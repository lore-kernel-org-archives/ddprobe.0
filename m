Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C69171A1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751416793; cv=none; b=STvLndE8tV6NV9Mas3YpmObItku6AKHEA3BVTkTe0oGd3D+VOsTUmnYJ0B9uafcflGKBxSF7xLoW1r8O1bRXFdqUmkS9iLNowByE2Ye/XCdg7EdmACwGCCeo/XuAJYM+gdhcxMSCTlXJULSgKpM+brQ/Dfqu9yholRNHNbIM+7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751416793; c=relaxed/simple;
	bh=pxBvwvogTvEKtv26yFZCdVB/PyTFN1CjQ/CMLG3R1p4=;
	h=To:Subject:From:Message-Id:Date; b=gE9C+TAQcVnfiUpKawTWnyq5A7MCZSQ+0E4CW+UzFzplrT/JAanR72eLQWGoFA7R1i4Q5p2GSozRqkx8FhR08c1Nn2tXWnub2PLCijBGg6vy9q4N4NTa6wYk8zMrD8B8RfYZcxb9ZvYtN+B8l8WDEmJtRWFICDPyWmghNdigP+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0HFXGwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0HFXGwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0285C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751416793;
	bh=pxBvwvogTvEKtv26yFZCdVB/PyTFN1CjQ/CMLG3R1p4=;
	h=To:Subject:From:Date:From;
	b=G0HFXGwqbnUnVd36Nt8b7KkYZaWoEHaXda3HUm2mGax05H0RDVz9GsLfUWsswD3yq
	 GS3wCIWXbMv2Mgkdt9z96dFSMrXSAbse4oIK4H1vJN8v235sBIRv7ooiX6DgJh4gc2
	 Bl5UzUBQH2yTHew6oOkJHFopuPqk9wlB2xSEh847Vta4vQxZXUtc91nouGZoAIs7w0
	 UPYDFS/+dCFBoIXtNWZmU9JWrFGlZ72QXtQqwhNcAtAjqNEglwMPA2xpljBLTv5GpY
	 8gcO8Rf+SmIHhci5T8aRio53ROJs1vGCx5B5Wcxy61Br7OZInn94spyXueDhXGGU3s
	 jwM9XY95YeuEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F928C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141679362.31244.8211528477403258250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962dbdafbb6692876b5d046a7b0ceb3e8b9501774323d51f2ec4a308a8c7e0e5
Date: Wed, 02 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751416793
