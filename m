Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A61FE451
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764831174; cv=none; b=raasykkact0QPB5EyUPG+SvkJoi8/TrKTbUOn+IN/CsFzgj2EiAH1Fm8B6OguosPa0UNVhG06WwNccXTt9fws2dHunpSDmDPRoYkmI4LyeOstfuL9VS/LW5GC382mIE5arGx3SdNZPBS5Zer2iesq0CfKErrT01Sr7CkIzEWw/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764831174; c=relaxed/simple;
	bh=/dIG1mw3E4wSJ5v1yUcLthHS1D31HLg9sbonyvUrtoA=;
	h=To:Subject:From:Message-Id:Date; b=gSrEsldoH3WfdnweSzUWNpDbHWyZ4Veo5rkW9hgv/Rinqe+THGjGu7XO0eSPvVgImpcUOTRE+UZ5c6nPReHMftHE1EGdG7Eq+W1AnFGdCCNDYgQXPB6h2DdV9iJJk65yWlwu9hpYqPfbGdO8yzZm7iEv+sfDqi3zTFYSqfM7CZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxZUQZJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxZUQZJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAB5C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764831173;
	bh=/dIG1mw3E4wSJ5v1yUcLthHS1D31HLg9sbonyvUrtoA=;
	h=To:Subject:From:Date:From;
	b=CxZUQZJ6U9FaCi0bLH7X9bdOOkRkKksevwI/mPZs95cS8XQWo/8HP/LEns0npultG
	 50/QKNgci2SjnYdRnDlJjkj4r06JOmFwhzfSbr9WLWyXqmP9eImH9T1/V+oE13MMlh
	 zqshS7V/8miv5DXuu6GNKZQj+FhpEhJm94RGW2V5+OTcSZI/45G5T3Z0+kzGKCKIRb
	 PrN7uwgSQhf75gKMP/5MTRRZXxZ0kGY/sLlHcwkltMe3M84wYfgDtYxXhnuQTwDx/7
	 iJSC4MgMi087I8m7eOjBVuLJZaQ2CwE6py0S4f5KMZGM5uxjVQZ2tMwmZUHELaScZX
	 hp3uakxSCbo0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCDD1D86F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483117360.20407.17847735947044530228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d01f0af4a8b60bd259d449fb27d2ccd355aa1687a7bbf1d9bf9a1a9c57f6d3
Date: Thu, 04 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764831173
