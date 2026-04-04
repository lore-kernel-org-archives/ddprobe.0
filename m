Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32665168BD
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775317534; cv=none; b=jfR1r64p75/FB9CVkk5pRaZb2YCb76dromjPm4WNMNtvm8PToDNBKiAppCpDj+UVevfIihrmdsOk3Ol6JwOg9/vnF/oyYXxqNh+sPT2N7QguYb4EUWm2OgSbAcB7eGAIsdMQtSgvX5MDmSodvdqPXYFMuswvlSvHqbX8+gnZ5oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775317534; c=relaxed/simple;
	bh=8zkxVbzQv5eRozjIIDxMhJYZpdn1iJHf11DW7htewvY=;
	h=To:Subject:From:Message-Id:Date; b=U9kQYt4eDMbrcNFe5zq5tl1oqBwJAW2wB/u+BqcG4SFRKpQOiI2WffrsJBdi/dIavKl8k/HmXE4byOl3THjZ/rU09w09fJ0/dyGP1KNzkIbkm3lSH02ZSqb3MR8dit7KvFqBTpQp3G1LrFJoe5ocm6LJpYERsDItHmNOiz/1Ihg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nE98kse3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nE98kse3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F78C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775317533;
	bh=8zkxVbzQv5eRozjIIDxMhJYZpdn1iJHf11DW7htewvY=;
	h=To:Subject:From:Date:From;
	b=nE98kse3tDHuT17ojsI+W1IY4ZGjJGBnxkt9DorGZnPVuZePAtJXpy9iH+sKiEUBV
	 Y/I+3PGGwihDquzOH/5HJE7sJdAYquN79XQX+EUfyaqNl8pJoYrxyFYRspzWs2opqV
	 ZjHjpI5EUvc9OPAQfS4H+TxyoYvMn9q+wkXxbA4L8PsuLRWfDEsGFkIUimgBXseolB
	 bc2DNuJtZyrjSYCRAMWA9dGAaoQaN4vaK2LbAmds8z+MMnhVZuXXbX27mf+zspeE1i
	 4QzqF1Ew5wCcHE77BVFkiEuooG026C062HIqklQZoKJzoOVxTrN0DJfTxXRuivyjOk
	 mj4i6rmNQ7F/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30B1D730B2
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531753368.15062.10766070279699203250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc101167e08832b596b89baa6cff70784468d8493faf00d1096566be14b364e0
Date: Sat, 04 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775317533
