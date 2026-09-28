Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1F130100E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790573434; cv=none; b=qXPgyXXDfW9M72cxij4cooGh+U3r2sDoAxEvEwsK18dznAqyzI7Of4eFtblKxpvH2LnA0ltwPcS7ECzB+L0i0Pz3HeYRrEbjVnTEc2AXfRztrsQx2Ppk59obGUbCBXk8vBmtAd13LqGicWJjijBPWE1IPvbEp5WjJK7zAjOOUn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790573434; c=relaxed/simple;
	bh=skAp+l7hiJy3/OsVJyrAaY1/ay6plbrScKNNNLb/Mis=;
	h=To:Subject:From:Message-Id:Date; b=FzJSh/0TQ6w64ZuOGArbTkvsNl1pBEq6njBxewgERuP6dZHnDr6CS+dalCrC/LGbC3yoehqNlM/s8LJ472zi50oGffF0TOnxzorX1KbFzuxC7BZudrEp+pekz9sJIcsj9+8xPDW1sQdkQ4zWv1CaxENcKk+PsP7L0108DoDzfQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHfF7uud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHfF7uud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6FFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790573433;
	bh=skAp+l7hiJy3/OsVJyrAaY1/ay6plbrScKNNNLb/Mis=;
	h=To:Subject:From:Date:From;
	b=nHfF7uudt9hfa99dOqMnJqw6p9i2SogBtktvCIU2LHgzR3gn4H0yZuXx3DLp2qipD
	 Vnx4nN2/VJyWBThnhy5gWHcIS3PnS6xgBw4qTRBD+CFM49I3LglGQNu/ENIPzB/6J7
	 eL3G3BePUgvow4gIAUcsZEdJI7h0cYqy4XqDovVVMr/UeEjDeaPttMC6BvkLlhaimw
	 acm8HDTsjPCKzltdAwIyOdaHsWGPihQqvOYQg4D2pFP0lH5R47hq5Xida/7UC9ANF2
	 LQDTCtA+/gQK1Rj3wvcdple5XzPJOdM/8gDUcsQtzHKu40aOgAGQU9BkSGxNLQ942t
	 7PxXdKsWfrvdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D3AC9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057343368.16577.10959583561801964640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7a67ee89129aff33ed6f32acefd0f5042858a42e263335b5fd11407527a7d7
Date: Mon, 28 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790573433
