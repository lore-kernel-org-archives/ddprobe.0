Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0A318F2F1
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718743763; cv=none; b=uvwJnfics6PLa/ejFVSOif9vj/mqvO6MPgBMuIlsDNNuhGsKEEECqT3Oy/CM2YN5EJhbl1QKsCpcgefsdPzQBdbv98XtrfxnXpP7IW3+tRixfqWlyknpcwABZxKnD0QxT6nA2LdRbQ3/3ZA7hX/o5EQuVvFhpV1wlAHYqnQ0BEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718743763; c=relaxed/simple;
	bh=8/G1BgI1ib5zOM4kVDqI78zAcJVVjvRLkCkKRxWIBf8=;
	h=To:Subject:From:Message-Id:Date; b=G2PulTvv+zmYrCIspd3v3P0IVWIzj8AWi9xe4z2aEVkPCXH5GLOg1IxqiPKj3nQo3DsRg4J2RjXObMLQ0wV3GEZivt1Swr/HrgMjH1agHyPMft1OAwp+hN7JRzVoINRqIukFXEiMmAbAw/7qCwqNAnhj/l8cHC25/K2AZaZGmi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU+jDRKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU+jDRKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9603C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718743762;
	bh=8/G1BgI1ib5zOM4kVDqI78zAcJVVjvRLkCkKRxWIBf8=;
	h=To:Subject:From:Date:From;
	b=eU+jDRKhymOEd4iVFEKtMgwKTYztdAuQkiFjRqfiHhsea7uVw9dRuwLZoa9xFCsfr
	 Q2Hij4Fw0wlwul+v9ROv8quQ17lm8XSG96C+2n3mv/ETX3wVxkYIk2Tin0dgErgu30
	 JknprXLajrqbDYcx5ehQsNh6VCqHdtrT/m41kLnozcHMbKtBPyjdGb0KP6m+c/+XDQ
	 n8CR9cMBQlV6gcy2faBrMjTVa7PcEcdWDh4IZcrLsIC4k7SkEO9WWxQ1IyLQAWRaNP
	 HEy3ZBSWj6L1iH8GvAbRx0JcafGeXaLo0VgxmMvBd5zs7J54Becxb6NxHFOvjHwftx
	 DYDuQqjwXxL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85B1C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874376280.23578.771908430327305165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5819f03bfe09fa94c5cf3eb11a0dba83e31bde6ed65c98f22ec3523f3a3913
Date: Tue, 18 Jun 2024 20:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718743762
