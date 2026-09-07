Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473389475
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788740434; cv=none; b=dmo3EGq82wec4LqZKZFjReOQ8+JVfLL3WffDkeJBiP7U9AZdxuvuUwr6ddnNYAhKwzeAKcnPaup7G2HLNyWBdQqAyb+PAD/oisXlEAog4qfLOk1mN6suFjFTCAKVqhGJlkaRrYj9yfTXv3o2CsR8pLPQdueXPGxdWPsginElIg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788740434; c=relaxed/simple;
	bh=pGx2t3Y5B5NmzqLzbV4cFadw5TQRGwgJzYjVmYgPgmY=;
	h=To:Subject:From:Message-Id:Date; b=HSFjEzX3btaJvymu1EJo0hEsdPeXslEDAl1MeXomXFhlevW2aS9TKhefnV4jbr3qxuISqmELL7+HULM6u8PtWISecCiikimprXDIfVgwhV+pv9Sa2yfp7/mOjGZE5oPZHZkXdGF+T3WRAQ01/yj077G0kAsgyX6DW0/uMlX1JS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gynlORY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gynlORY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF28C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788740434;
	bh=pGx2t3Y5B5NmzqLzbV4cFadw5TQRGwgJzYjVmYgPgmY=;
	h=To:Subject:From:Date:From;
	b=gynlORY1X61sAewlWirzDTVv/Rt6t6yJv/F+zLH68EwXO8iCfGFvziK+ke2FYv4gV
	 h30ksCpb50JduoTAqt6LXFO8UqGOjEaH1rkq4knurCX/tJLdT9LWZjkMNZa3zYRLmF
	 nyRYgnVmkIA9ru5rbcuu6Dm6/fS/K4wlE1mWQEfkNZl31trOsWcaOHHQ+Jvc/WCsQE
	 NEQG86wJgBHV7BH/pJ/o2RKYSK0sXw0KWd8VuapuOd+tDwEFYI/Y2+W2Dbv5+GxGho
	 7NbEo+Xfg6MZRwUKAAelQyAWecxo3vxp7VHgkjnZZWcEsaBkYjwqG3zay4motfF63Q
	 K5yOzXwAEJGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9F4C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874043374.7306.7399067781255884974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8310b3d00de28834e029bc1243e934a139feb4ab8b5d0ac35249356a00eabe37
Date: Mon, 07 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788740433
