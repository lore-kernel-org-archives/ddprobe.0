Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3145437A84D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783756114; cv=none; b=D9pfMkiQ5xuLyEecFOLzmSMLv5gC/CYAVcVDkgSb0Y0eOlUL8IHse+hPnypWnz0ttgaevC52nGumB/DsymclJnIpbKdKP0lhgJgt85muKGa+umG1F877piwIx9bD5KxqS2c+VfSxKcJttPz9JtMiGdRrYXD6jnOpStxQpPIsJs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783756114; c=relaxed/simple;
	bh=A326XxSCz2QWc2zuMzqkmnmkB6Z4zdBp1xvjm862EEQ=;
	h=To:Subject:From:Message-Id:Date; b=dIF6nk05TvSn876UgubSV5qsjQmK8oTMbgVt+IevrakeEVcugWKrh6l0AwgrzCkJwryDrxB+gBqUX2tEMrh0L2f2NUCdBOTGlKw5IavmJ677RC3grn54SmSrAUxzaIRq8zqBPbwcxYDNoonkTCzWlz6B/lG3HZNqbOx4mXuFKT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rb8Zx9Sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rb8Zx9Sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8224C2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783756113;
	bh=A326XxSCz2QWc2zuMzqkmnmkB6Z4zdBp1xvjm862EEQ=;
	h=To:Subject:From:Date:From;
	b=rb8Zx9Sl52cqAAalZa0QH8ENpqKVdcWuesoLnXfrqxWZaRxvNQ0eNWpPPYmbNnta7
	 TvgvvH4gjDhnXit5/+5d/AW/kA1Y3ZKi9r4cJv5x3h2xCJj1O4FnhglPt10s657Q5D
	 B7AzE1o6ySfiRS6Pbvs3J3dMasKuE5vCd2Fn5PSxd/tKBlkY4voPZ1+2B/0YpKnsOQ
	 CJZVKS7iK5RbVZMGseCAZ50moyfKqGi+QXlpqNl4qMVjgj88M1ujcFkwDr3S+vd3Xi
	 XFdtQgnELKm/b/6CH94vS4LUQ8+9Pk34Z6xPEB+4nZwzo7+jVzWkmsSWowN+JXdhcb
	 HaI6HkkLV8ZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A869DC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375611368.30973.10553535749505181508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228a0da920c24ab73166c744ad8376aea2670cae4083e416d7c4d29ffebf692f
Date: Sat, 11 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783756113
