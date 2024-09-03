Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220E422EE5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725377754; cv=none; b=HMT4AbGsdapZ3RBNcFdU/ISrpVP7E7qCLBoWXJ1sPiWhHhf5R5Kokingu9E1lXS1QBaO+y1PGRpP6lAlOGa+CvJio4Wb2Nw4yRFtC5lMqISwS0XFC4JST9fZJEFzKAbDuJOeEblm0kTYSz2jXdJsAK7nsXAgeKLqiDZkTfD7CXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725377754; c=relaxed/simple;
	bh=MkedbqpgOYPhtohJmAOuj6SvtR0JJy90H2Ddj445yf8=;
	h=To:Subject:From:Message-Id:Date; b=R0zZeKJFD1Oy2LwniwSm6b0nLsZoF9AMeAqMf8ft5QGTnuVs7K3BHEhL3BBX4xIWsNIKGG/f4Qh0pRp73f8RbIWGfMD/Qo53hc1w0WfmfrdDgrAKi/KIK4cgeplnOJbtzBi83MykNUwNGC/+l6OW85f9A1SUuRfo2NoBDW+od7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So2swDA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So2swDA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B114EC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725377753;
	bh=MkedbqpgOYPhtohJmAOuj6SvtR0JJy90H2Ddj445yf8=;
	h=To:Subject:From:Date:From;
	b=So2swDA894BEHWfWEClbUGNZD3HcdriYgu//bRPC0zCiNmILzev0on12nP/zP5J7o
	 sRW+tlGiNDomb7KrBh959oU9OIOqbtVXWCa8t8zbXt0f9+EJtfyJ9jeOJQ8myV+cG3
	 Nc75qkAk0qsCjDYWOpE61WVy1v6rToUOHR1XCIzDcskkwKV+z4vFRNDPWAXjwEBJlr
	 14/H/uE8F5Uu7G//OB9bTBq4aa+Ea/lZ17IjfuXr859XkYHX+TjnpWno1GO6+cLPYS
	 MsZVpO2OhxDmf0Rpc7Pnni5piPBN+Bbta8qLNEFqfAsM6GilCjb/qqw2DB84hu3Jr0
	 x+iy5X/Em96hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B98CD3443
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172537775364.12956.2927666205213582034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be3316d170e169dd724a54ffd2af61773589aef3e7e2169d5a54b424a7314ff
Date: Tue, 03 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725377753
