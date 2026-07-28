Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC453B4EA1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785223234; cv=none; b=bXTxACHEtigJkLrB17on0lHPARzRO77gGtwtOoVGNYYgZPBeY6OiGyuIMATIOt3w1mR554DdFgdNGM2swzJa44+FTZqpPM9v4XOdc/LiR+38o75gxPFPue/zUTdTL8IA1dx4vUmSMMzqShWCZMNaj+94QO2LZKjXottb1jqBkAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785223234; c=relaxed/simple;
	bh=+Qfdqz9L4zw+YP0t6DIFlXOnsKW7Fe9pYra2pq2Z9ls=;
	h=To:Subject:From:Message-Id:Date; b=vCXGCM7hdf9yVpL65BipYlL0gGPH/sJ56Ws4162Jmit8SRCBAbiPIGiJYsnCdlvecOJzecsX0/bhlL8aYbtE5RDp5EkbsrquK1bUp4OPqb3oQ41saqWkpHE/ckcYJw91Ank1OICpOjmEJ0K8BTmUFXxgFmDiYo+0sxFd5kx7Rrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLAc1B3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLAc1B3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FFAC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785223233;
	bh=+Qfdqz9L4zw+YP0t6DIFlXOnsKW7Fe9pYra2pq2Z9ls=;
	h=To:Subject:From:Date:From;
	b=JLAc1B3S6b+gFSVxmszOLqUSel1aZdzTVDmzCw7h1UbdE91iK+6BmpZ2ROLqdZ35u
	 9w5Tx0IWXNM6c4h+nCbtF9q53Giskaftc5b2sEMs+Wlr7XK6R1KEHM5FxV3eHFEeLb
	 Grk7ffX1vhlAm3wsAJ4p+UaiwKstVYV/By+9SsZ5/p6+TJ5MbC4i0L8St5ImUqxkQ9
	 Mu98O7xLijx5KnO08fO5kPuenaWh3PQPSplRiRVuCUXlGPGjkh7i66ntZagNt+etbj
	 CtcHTbEDAo4n03xfYTUxlzDS3tL3ITAe2Ic+R4NdI/19vySW71/y8ufFS7malw04ZT
	 BpLOgMnyutl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8BC54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522323370.2779.17117402206178261458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8319a848afdbcd256894107afb7e01d265da5f13ab42991deed92522b44fa90e
Date: Tue, 28 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785223233
