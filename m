Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229BB16EB42
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771040094; cv=none; b=SASNq29Kc5q3loY4qVctAkfxTf7G6YmvOO9xgcQf3rg3x/wrKaVVTTBfdchn9pqq9tC+hZAyv50vyCwWrGtJ4CBSzC+1FbE/1InmnkgPQwWXnV9qIMB1wz3jhYVEfe+MjJPS4UQBzMOYSPk1HzRV4buV/AwzSKqWEjL2LiktHj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771040094; c=relaxed/simple;
	bh=t4zgmAsGFpHKRUZzCv7OFjYFaB4nZWZ2//0d45k8sUA=;
	h=To:Subject:From:Message-Id:Date; b=W2udsvs+Z1/2W4nrMDn3JTOqiKNjo0Of9jQPyTxzioQqSHo6z0PgWOn+OvHaDXL9LThtXMuFMQPIgGeLDLQvHu+ybjmunNUWHetsj79vUpKZ3ODf6itfBtwQn1H+AVH5GyqyFl4Z2+CXPG0zgBEsDgNsh1WlBSmQc4ML+RHxWNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJMV2Snu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJMV2Snu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C548CC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771040093;
	bh=t4zgmAsGFpHKRUZzCv7OFjYFaB4nZWZ2//0d45k8sUA=;
	h=To:Subject:From:Date:From;
	b=CJMV2SnuVG21usHx6EvDIfdsoJM4ypZvY5rP89pKJsC9CRv+7NUQiy2uKKg6nyoe/
	 RhF74sOczwb/+hIEm0Ja9PSDivYhC0mSKGdX3JX6NW0SKcQtR/muFLplSunuaXFqcv
	 s25RgCVTZgrNda11f++ATWaIpFJ6SAK8q17FdflNQ4lW/P0O5amzlGP/LYWa0ER0EJ
	 5Z48EhpTGHJo7m/PofDL2yUWEVujqfmoPJnDLYCKUpIDZG2FVBIKLR4R8ZDkq3qmbN
	 VO+9kIHEmFkgH+9VTxXc3x+JVnuho3L54DK29QwUpe5WOSEHOKomWyA5/QkrsR8mtF
	 8RLRihIIC6wzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ADAEF99FA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104009362.4450.14947237654928557835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574a3c7bead4199e270c05da1cb821e73b010540422572dc1c826cee9f87b934
Date: Sat, 14 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771040093
