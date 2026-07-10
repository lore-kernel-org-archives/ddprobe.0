Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4A0374E6D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783706914; cv=none; b=SFt5Yr/M2p5982IM+Tf79ydNaNt9GQOfL3Vh5U7FYtFbZJ+4rxxWPq3yXCgeFvfdoIVna0h3AvANrwh/yM4pFQWBalt2ECo9j/IKy44Yis+WqjfdjAzfyCJiv0eGGlxDVZ/b5VV21h98OtUdINDwWynU8q0TZoWJEk3vaGehdU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783706914; c=relaxed/simple;
	bh=55gieMwY/MiHWufhrSxHipsgPuRXiBdkKwprS/sj4AY=;
	h=To:Subject:From:Message-Id:Date; b=T6ltZ7oKJems7winckhJvgPMQzTtoFHb8e46SbEB28tkRjh52a5GQifrB9iHfmZ18VHnQRJpqDZ7LqWUNIIOuTtzHTCmrDl+ooku4FyDL+VSMmTkytOlb2S02EqRl27ntKjkXQJALkhsZKM0kysRjxKCKfAo8SuM+vpD3bqD0mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTt2s0D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTt2s0D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4C3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783706913;
	bh=55gieMwY/MiHWufhrSxHipsgPuRXiBdkKwprS/sj4AY=;
	h=To:Subject:From:Date:From;
	b=gTt2s0D+PQZnQD1pV1URNllcHntfvEbfQzorUQo92GxKoV05o642DeV+17mM+FF0E
	 7HNz0QA3vP+//Wn9HQTnYI/Ea4JEUOjwLAnxDTfbObMBAPAq73y2pEe5umElGqXBde
	 ydp8PkD4cerkx8nSdwZxHiQ0dEeDTqrdfFidvsADEyMW2uekWNGF6lVjYXaSZDpJ3z
	 HnzEia4ruo0xjyeRpB4Cwz8zqKOH/j/flIFAbl8S+jEgUaF6QIb1Z/6m5sAFxKX0qj
	 eDV6EjY8ClZ1hjLGxOm8SAgnEVmbhMesMher5XuBzakCoUB6b7C/wxoJEqKzt8XjYR
	 FbHwZ54Gp5arg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16FC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370691368.902.8133611815165198181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7244c14f96a531ed5a3cd70051de47916eba382f409d5ac44b443c721845c4c
Date: Fri, 10 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783706913
