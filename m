Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8F22BE7C0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764180174; cv=none; b=p1YBRfv+K42erxq5OpzyNDIztFD43D/CCwpq504UXrxmErvEha4ItJrrp9c4PC/xSTe1MuDSumri3Nhs3wr1D1JmRfBi8Lq3Acp3RXL5W4v+b46jO9/yKFDxOx+Ij3JwnQKVk3ol2InuAb87z78rb6w4c6/9r0yEemaKA0ANBPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764180174; c=relaxed/simple;
	bh=aNyKYyHM6bXql/U22FilR4bjMY0RoZn7r9sxxvJoz1w=;
	h=To:Subject:From:Message-Id:Date; b=ovtzJ3klGggbPs9aUHfIb0CmywgV4PoHuj3Syo6kxfr2aZC88qJrhwJO2R+hfLm/XCT8HaaH3+UGHc414m1Tu19BC91SrFeIzreWSKqRjzh0JCB3uS0q/JpKEOv1JSmDkQJUG6QeEnrcAP+U7sGGuX3kDzk6sRoXkgL0OgJk1DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Shrpy5iA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Shrpy5iA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B456EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764180173;
	bh=aNyKYyHM6bXql/U22FilR4bjMY0RoZn7r9sxxvJoz1w=;
	h=To:Subject:From:Date:From;
	b=Shrpy5iAxjuKrSSBg+redDNU4NvfCPFUipRof/eJ9cjqVdrMPpwl/T+K8n0gmmDeQ
	 9nCUh4cz48v9z/H3M6Bfw49Bk6ZevlkQZu5+jRzNgk+BwhxqNMkvGQLgPgSAzfgQn1
	 ne25y8ddnJVZgbfr/j0K8bBaOXbXDqw5Hz0S2hUCR7pmb8D/gjPInLIxxzTM29Q6uP
	 emI+au/LdVLxdhaEg+4J5ktmZIdq1hcoclyxCFXNqAFY8ea8WoUaeW1etP7NTdcI/l
	 Xxw6CmdUZck+miUsO2PcjH0EV2vtWgWW6SlHqHpbpEDNtHEbPKLQiZWwn3cERLqCrS
	 t4kziLLUEVXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1499D1118B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418017361.1801.5462408927184375847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a607d8bb0d5a504e0f8febeec33f94b02419beb5680be43e8217e2e9e4f9af6
Date: Wed, 26 Nov 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764180173
