Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B7D2BD19
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720042523; cv=none; b=cDb3RZ4PFerpqDQH9UXYkTRsYzPeGyiCyp7DqomylLj9boQGy1bTepK+xL2RlS6Ohs34a0n92d3Qxgzi98vasFN83hJKHWyjoYvpfmQyETKIqC0yreROyK+JoOQx5YcjE8GN4xr+bokqAXP5dVy5nONguRcRnVvAsr5E2TuD3aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720042523; c=relaxed/simple;
	bh=2+xGNLOJiuxS+l8BLHrPahVekapqZ5S33x+ojk7VgJ8=;
	h=To:Subject:From:Message-Id:Date; b=GePYT9hcUzVhN8xqf2PDa1vdag6uXKSXhzaBOqqpAsuAF91toZOgy0dXc4gtcUe9sDgAKYpKYlelqWHS5UotgFEImMlLjU/boN0cTCfuJTP851RDFpQL9oAryJ4ldlrN5gqNhSXQSc1sZcEl9vfMU1ARInHJ15JhOYqMcI9FOdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIzWyO/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIzWyO/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D1C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720042522;
	bh=2+xGNLOJiuxS+l8BLHrPahVekapqZ5S33x+ojk7VgJ8=;
	h=To:Subject:From:Date:From;
	b=lIzWyO/Au/FCdV4QSjrmNmFqdkegVc17R1VVrHTiynVEM1OTXdCTh0BW93x7T0Cz6
	 J7EsAYOzawmAtB6P2WobTsHcgaAcXZac5z1yGc5no7zzqdRzQ35VEMp0Z5mQeCW/Ou
	 7I88yHRnjcbYdihdNvefdG7El9ZjGkTIcAJBdm33+ArLlSViKlZfbAyN1oBk4hxarN
	 g0VoTkh1FhYxo8KEM6S+u6dfpkUfKRfIyTjpDkp9HWB3oEIQFDhq1sOrTYrzmbNhGI
	 eXR07hYFfNxUhGWQuvVWJh3cBcuVlK8OVeCzo5hyPkGdtun+l7jnDNqcZyqHibeRTI
	 DHg/Kpd84tPfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFE2C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004252277.12897.7358891530854065194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd55e84996d61e362e28dbff570b87fdff02fea85a7e85df1a09fa22383443e
Date: Wed, 03 Jul 2024 21:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720042522
