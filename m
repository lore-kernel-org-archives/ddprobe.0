Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397EA25E47F
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747785594; cv=none; b=GH8TpqH10KmVIN9gaJGrgc48yA9m3rhOk2VRoCXLSN3OmRBqluxDtJk3OFNmBCG7KD8ZV28+L/8txHjle69sK2xokfBZAgtV0HcHTnhGmNERG+CtiEbNne7y4dG8jdp3STM+cOpjZNIJcEbBYyMvhxsBVJuYx+cd/lnkqXRQ7Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747785594; c=relaxed/simple;
	bh=jPvuwAbcbkYId1hjDMmseLzX272S1OxuS5+mi1HIyBA=;
	h=To:Subject:From:Message-Id:Date; b=lIDrzK3LTkyYrV0LuFzDMASpGhwv92DYvlC16eQe5u62siQK+jRUpA5FIwGHMwMtQjdttt1B2WeB2e6OPi80168IVmAfWApZrGnO1Fo+kUGiTfSabmcTkrAVKKkFb6L7r7X7NMeYrjrrIo2WXGNDC+N1U9FlYmeSBy81Su2QSnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjerrK+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjerrK+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3232C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747785593;
	bh=jPvuwAbcbkYId1hjDMmseLzX272S1OxuS5+mi1HIyBA=;
	h=To:Subject:From:Date:From;
	b=hjerrK+hoXWZlI9BCYD+t9ytiHGSwycYTSEH4xUEaaeBNLI5HTtzlUe0i3NuKrl9B
	 f1WPQgc9Kc/cZkUN93lp/WBk/aNT1iX+46ClQjYVFo7xASWyEvIULLuuf2DHBjd5K5
	 AWQg1vjqQ0ZzfjINfV/Rmn+U6GreHpaJ2WJ8LHz/vu/sZaZ0cIG0MOgOSlg/r3DbBA
	 rjmU4ocYNNH8D80pnOaETNj6IReaGCQrIYKlhHODfyJ767ppP+Qg69E2SBHL5Z4CJB
	 EcgiokOl1OaL0rkUU0Cgy/wRnZp1B+5StrLBGOGv+Rt+hSDK4eXSRCvES5K9jxyIBS
	 ecLuDiSGKPGzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93971C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778559357.8975.14440930342595217893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbfb2c759bebb5b4dd67785c480f37bd4c428bd97e8d3d06a3d2cdd7dd663de
Date: Tue, 20 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747785593
