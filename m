Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E9B402B8D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779817354; cv=none; b=eob0aFw6o2iSn8xOBUOkP7fXAZIfZ6XOkEkcY4BWGR4024UXirJFv7GjVcR4kBuxpGOrTg2WSGvbDT4jYX5BTM9u4gpGRmAX354OwJC5256rqCc0q12z9NBSYmzx0a8RCpwFNe2in5gGenX1aAWX1cmdo4IRU3iGE8+2lexF+gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779817354; c=relaxed/simple;
	bh=3O2Prt/foMQgwfsRXl8FjK325xALnT42fzhqG+DANPk=;
	h=To:Subject:From:Message-Id:Date; b=YkN84bAdXLn9+HykMLq9YWo/QuVd3TuOV1cX/Q3YVYonT5B4KnDqzCo9LhZPlYe3TpsF2ngcv6tZxcZDc26vIhQVecIu+C9CwkbA8FeRkDBFxKpaKRpnE92xx0iP2PMT/47T/tp6fWMz5hA27EFrktiSh0gT08HlNVpaAy9lQbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj3wjfb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj3wjfb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779817353;
	bh=3O2Prt/foMQgwfsRXl8FjK325xALnT42fzhqG+DANPk=;
	h=To:Subject:From:Date:From;
	b=Dj3wjfb+LxZT9ssl3Hm3dTSgdUCIAkA96RiohReebO5THjHHlv8D4cJ0gNGsO/51h
	 IlJwAvnCWwxdz31DxxEqqx2bC/0cbkzmadz9css7PbWDpKPjFb4dvtx4vlzRRhiBO9
	 YPe2/0bBY1sFVCRWb2OAg0XWyRKKKnjN2dpu8SOhgmbrxp9duWLu/U7WNSniBYaVeW
	 MWgDnckyPGX6TfMc4W5dYidDrJ2hCp1qaEOJ3xSIkdIjTaKChbY7sJPm2O6DE/9Uvy
	 98samnHQT0b8rhmKOWGJEe61c48d+E99VnKAdhbXxNj2SopT7/amUeDsw86YjOKrWL
	 sfbs0fQvc3qsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB5ECD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981735370.16747.16556106748480625152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a60032ff5c1fbc933aac5027fe30b767cb4c7c859e562b8532f3ce7301f135
Date: Tue, 26 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779817353
