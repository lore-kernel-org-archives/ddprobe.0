Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4255A2BD59C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789246834; cv=none; b=ENtEJRfCDKRP4CBpcX8I7OcsZr2nJhd+2nx3PybM705Pk92h1PQqKbxdxGMxA9d3becBn8IwINz1n4lRjf/aWcPXhjeEx0sc18lPKPy6/CPDRA/XwgNHPs+BMrwfIdzyQX16J+9tWfG+LEmvqyJFnd7l3WhfpAHGgN6HI4PHDEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789246834; c=relaxed/simple;
	bh=TmCWi2fKjIRfGll3T1Q2rTHVjv9WSnTYoMDzN7BpuZU=;
	h=To:Subject:From:Message-Id:Date; b=MF2Wm65wcYi3ceCYE9bLFIcYS8DVJ/c8YDvFVhj0f9VcP3TxSCBOOHFnCIhTJCajY/8ikbzUUSz5518qnuuftV19q2SWwK6Tn6erZDs4kHPf8xf0kWk8dFGKOkLeKMkRFQJAakfG2QK9h3dLEyahZ9/j0R25yDecF4vZYXe25/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6srUZWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6srUZWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6642C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789246833;
	bh=TmCWi2fKjIRfGll3T1Q2rTHVjv9WSnTYoMDzN7BpuZU=;
	h=To:Subject:From:Date:From;
	b=k6srUZWEKBOqDVdim/cVrcAeLYY+UO768KakQfj/M6lz15uzZCSkDz3A0GBlcjciY
	 AUQhOP6Vac0oujgtNocQxiVUMmKKVJwn9RfWb899KUD0GLtd6T3tyI7uCns/tBTnm3
	 exAPouo6QfInxKcqTdAu1dFR7685nkiQT/j0FROSizDOfz6xopQGh7y0jJ1uReav5/
	 QKBJ8bPvtmrgZCNpz70z9FX4dG/YyzOVtGqiE4v5LN3pssPyfFt7dEnPEe5vhkh3H3
	 pPtxLWgcxSq9cHTkhThjlmgo4a4VLjF2eqKZIsm5JmPXo2AICO9U+9hU3DY+d3+4pE
	 ozsBNdIODShdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC215C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924683368.30913.8475712538119018772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e11636b1860f7f8ed1968405b5a5f8e7f46cbf7d2ed79f4e124f72ab949d01
Date: Sat, 12 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789246833
