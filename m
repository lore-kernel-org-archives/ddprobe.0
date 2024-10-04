Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289A91448DF
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728034554; cv=none; b=Vj7AMFvmqa5YOhMrfLZyOZ65rTP8bcCu2DYvMq5gAUX+gESAnkjuqyDO0jEIlI7PYU4AJCbt+m3s94V3FBmQixyQ/JNgj8pBG78ee2DVkcQX2BSWsZ237s9qX5my3sLBnv/X+TiTvhWxjSKoX00l22uAZckODcj7moe18sh5JN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728034554; c=relaxed/simple;
	bh=EsFUdKLzzq3xvGSwPGgtll80q6en/okLY+B6atTsg/o=;
	h=To:Subject:From:Message-Id:Date; b=YpqH9KUf7w3sKXX2M8+8ZQmJEFx8L75yd1DahIl2WqT/cu1JS+sfkh7TzCkbTBuy482/++oRvOw88o6sI9hDOXBB18IKplU9vdm/U5keOO9roVqVXC2dih/rBHR8yRMA0zFTQhJ22qOrVOZCAkGHPkNIAyR3DvOxpBPedJMK+/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqmqxAhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqmqxAhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B48C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728034553;
	bh=EsFUdKLzzq3xvGSwPGgtll80q6en/okLY+B6atTsg/o=;
	h=To:Subject:From:Date:From;
	b=WqmqxAhw61uXHZkJ0BQLsppKEjThsfMFaLBcalpdYns1jFJbPaJWWIYo0YrrvAAbK
	 bx1nejIDe/SC6VPkTkhNHotKAL+U/MLzkbfqFKm/KEbSgtpiawZJ7a/N9xtep2EnET
	 zjtISuXrpq0LauR1PEgSSUvB6mytLh9WFKfmahdwZOHwws1VsJWLRmNDS91YkPE4Nk
	 7NH+vBF2pkaQx2EJKZXXILFcncUBSJlR3+vE/uLjI213e1ShdLnScFyyTebb+SD2H7
	 sC69dNOzfWtT2vIrzipT5uhLR51ciTxyec0DhyW0oSfwKhUsFW+MBdK9BEcyCFz/vf
	 do1FBlg4/MrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F96CFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803455360.2176.5491311097358580738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07b731fae08f70856ffbe02777e4ceb50ca832498f8c2017bd96fecdfe38f35
Date: Fri, 04 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728034553
