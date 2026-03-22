Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7531A682B
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774196694; cv=none; b=VTWEmR8KPy+fb/lJKrVmUhD6R8JkkEEAYG8d1EoOdL99otwNp4Io78NZNXKk4uGhP9Flp7HS0TPEMz3ON1RT7r/SHLmJcCTMks1Q4+FvhzBwqTR5bJTlGqjc6AnNEenjmH0bogdhdpneCtKY8JSu5qZjYmbNa2XbgH2swgtcklc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774196694; c=relaxed/simple;
	bh=zA/jin9tnPk4VZOcuTRQQb3MpT1IhnsPPRGufCpjc3g=;
	h=To:Subject:From:Message-Id:Date; b=EaQuXaalNXA5VsbbQjwk26VIWVHzfxfMk5veik5t20m2qw3OueLBgcUTCXdwTiRDA2tD7QQJzX5Ku54/TswazyNrgPo0E1bdT6qW+NyfI8dZUUu6tntewpQYR+yHqJetQAlgQ3MTkop9R2AbI7ImH9Pf79egJ0t9HfBv3bUvL+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNbEZlzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNbEZlzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EECC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774196693;
	bh=zA/jin9tnPk4VZOcuTRQQb3MpT1IhnsPPRGufCpjc3g=;
	h=To:Subject:From:Date:From;
	b=hNbEZlzLAB3J/pP1T3hvsuSDoxMfyccOBqyyNlv5J877PLpV9hW9D4jXxXa7JybL1
	 MivXq+clr84eqbR/RJKyYYMcZM5EOKO5w1zBOrzUpl0klcaihX/TICjC7OmFXswVgn
	 tT1HN+W5wVPoiP+uyVqlupd+EivZXyzI53wxrQtUUqQlhF5w80dncBp/VtL8tDed0K
	 pWhicPIFB3ZdFoR8xdbbZ7iEFc9/RkYQ84QDodLemAyrGwv9UjyK8s6430zwNeKfa4
	 sbJzrbawkOCrt+hkZywM5HocDxAAjKN2LM4PPRpFcNO0Dm3p26MkfS2m0dGQrL2Sv0
	 FLZFe98Sxqfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A2FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419669358.24308.12313128142241755685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0075284191ab0610bdc2dd1e50468785c630bd7ea5e9f76ef5aa2dd152b6be1e
Date: Sun, 22 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774196693
