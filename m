Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B8F32A3DE
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773884694; cv=none; b=NFQwcqK2hHJdmgCfNv20swYjX6RwkH+S7PjmX8xDefUgSxqDTjZNdqZWsNH3Q3+yk1NuqFxZwOh8kAYQAvae1rWuY6pKyhHRRpClpMJiuGn8NJVkU5wSNZ1v9MWM/NMuHa6TF2EDbgdxTRMCHHtRdj+p6ZBzFJ22vEPaOQI+bxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773884694; c=relaxed/simple;
	bh=bwyaEy2R5KSDTedUUPBTXDP+IzDBD94coiopsl42vaI=;
	h=To:Subject:From:Message-Id:Date; b=H+KM0kosPmVXZ448zXmYcxPvpDRQy8xGOrvk5JrUvAgOWxqAM+WCfrZRNppBbcCr4ezBOBDWfD6p1gzNZ6sJX6BVhrZVukk1UKtaSK5LVlmQQTveb31sEzmDqrQSa664wUDFKNsdJC+1rgu67brCtMtZlTpDPBJoVd76/RkcRN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNtuMY/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNtuMY/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB1C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773884693;
	bh=bwyaEy2R5KSDTedUUPBTXDP+IzDBD94coiopsl42vaI=;
	h=To:Subject:From:Date:From;
	b=FNtuMY/cQnDdSpNr4hPaFQD9a0Jq5+idAW/kfg28ja3VUVp3rnzxpkY3IlPEpPT5T
	 VBRVQ7o0qAUGLunr85LAez8qkWdenKuM+ZrOG+/26sX371pd0QmnRkL7jZrod1Wa6e
	 GA2euFBJ0etWt2RDfJBJUagHHGeBw54aJVtolrseDtsfjJ9g7AfMoUa6Cl+NzwOWar
	 MF024eqjA9Uqh9fGqj0utNBdR1UUXzULGj7wzK5kgUAPh1p7VSLsBxKGu5fE1r2yuk
	 CMcvH/yaZF7d++E54WmCn1M07/wwMh82RYsyX3dhvpilClV0To5n4xNmKk5qTcsmsI
	 qxqWUm6E9yoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA51088E58
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388469357.2343.9567555945616905230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038d94f846975c623243748def3fd616c73032622e08ab2528a0794e7666c7c6
Date: Thu, 19 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773884693
