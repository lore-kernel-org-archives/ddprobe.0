Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9E115A8
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727512554; cv=none; b=lFzV9mlT510Pur8dcKhGBwmU8yH9cp+TT42jvC4iUi6rKdmb/nFW5GWDVef7X+vpQTjWnd9Qiw5mRCAuLRTjZ4Jbv0MEASl6W/70XI3XW8IQhxoBEOtokB8lJwjvcY5waGaPawQrY8o0B7Cnn8IlsX6m7nvaejBODHCdPA3l7GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727512554; c=relaxed/simple;
	bh=VK//PzVAM1RTZptvxbYlRkKO88N2y8ztN7v4TyDRiJY=;
	h=To:Subject:From:Message-Id:Date; b=nfgd60TbL0gSBjkTh+X3sTDkEfAYoEBZ68g5moqbNpY1BHrQkbxLe83y6SYQiiFIeGhTulLBZ6WsTWaLvAZftYEAoKdOYbe2H5wugqv6AE4wN2atUVtNd/Ot8x4ZY1kD2+rdqWB31nXhXUcBPmyf8KHTxisJhATYKHtH5AdopDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIUZDWry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIUZDWry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDFFC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727512553;
	bh=VK//PzVAM1RTZptvxbYlRkKO88N2y8ztN7v4TyDRiJY=;
	h=To:Subject:From:Date:From;
	b=cIUZDWryq8pQkyAvhoQ/SKXFupTcTUfhePj74Psx1pzx+kGExe47djOcfAsR8WH/X
	 qeX+UWfLLs5WSq127gRx0DEQDfepSvHeXt1AMN67tGJyOr9Lz/m7JWLsEBXoaVA5iL
	 48QadG9r2dmgPHFyz/Hb566rotU1igSs3xgSZqmQATP69hmglxLYiZ0QzrjSzI6SNI
	 eWyx8o+9A/hmtVTocoVIGAIXrrZCqtmGdh6pwld/9Vxt7xJNzoDYysa3q33EX0wDOQ
	 rZ6nPXkpOoYX7qrmqOv5WdGyze0Y/VI9PtQhjcn5a7AR5SuqDxVRnQMPln8TQqqfcv
	 PcDmpiZridtOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98446CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751255360.11425.9443479807862369159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c48ce2219809d51783389ae07e8ba9d466f9b650d95bf2fd0b389eb496916e
Date: Sat, 28 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727512553
