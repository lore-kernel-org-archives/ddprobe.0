Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3191B6D08
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777183054; cv=none; b=ooN+UbVTv/rMHcdUw7Ri6Zdepur3YAOccwOovzeFJ5yoWZHoQtyCIv1tdjEoDntz69kGy9W0UMLN6tLLU9lttOqNdjC8mA/jbBTrC5k4emPzEFRcijpttccMgmsKII7j+tGJnoSLnnVgJQAHSR4gpAvnqXuMxJh807AvcYg7iDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777183054; c=relaxed/simple;
	bh=+zdHaAXZrWZY90J9MQButJeIakx4Eu255OR+4mOidng=;
	h=To:Subject:From:Message-Id:Date; b=tnJa6P8PlWy8dWxqzZBuHRRNUxRIicfz5u6adZ6S5nJphaktVXP9b0gdaBQfWpz1WcK44cIid4B1OktZ1tXNpFGdJ/ocFYZ7N0tgKGefPN94KrUceTVb3pyotcYsTKwFs4/PmS+bXbfT420ohAXrpb57i0aeSOru6qd3StGOqwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC8O3Vts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC8O3Vts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2731C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777183053;
	bh=+zdHaAXZrWZY90J9MQButJeIakx4Eu255OR+4mOidng=;
	h=To:Subject:From:Date:From;
	b=vC8O3VtsedsoN3KPn0Y2UP4eK0iDQ3EageicVBPIW6AkmuOkb6CAZ7e3Nb7D5grdT
	 2Gkg0Sr4jSartr70EFYFrSIuLbDGjs7Blxhl7hv2cuMEhCTCkUI16/N3pvy1BUMnW+
	 mAFoK+NE9S7aL2GpmBWpsSGUy1MIQYDfN6R4IYTjnUUDuZIzL+EuOfHjdccYiP0TpJ
	 gQ8LucOEsEz2n2A1o44BeUHk6fNeduHb1HpSk6xAUcfpTmw2TybUUFC1Nl9Kcynizt
	 Wgoy9WiPZEPoyjqjSEzAOshHQPvE0MkH+zLYsga1Ia8NkKJ/yPd4lmDEINFM3RlC4b
	 CwNKuu7t2CndA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF298FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718305368.547.2972055230303732425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d781862bf674c42ee71fb63e8e7f45cd579b5f3b8ed969fe53e64b085f813f0
Date: Sun, 26 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777183053
