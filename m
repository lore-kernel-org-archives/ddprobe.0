Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F523BD02
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777181254; cv=none; b=TvdlxArhDT//bRpIapQpVZuoQwp7nSuvVDjVIDd+SgPT5yWwSXewx00MTHDRqB/SLZuusFwsTKEK5PXE45yBBTTIDExd0Tb/e5erj8aNNNrrLt6cg01ot/UOp4TQSkdWefP0Q/5tUCunmsA5rnCdcyXw/pyTFq3O9SedbSMwZDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777181254; c=relaxed/simple;
	bh=MvPu16/Ru1aO3ytX7hmVMFGOxF3L/+H/yI+ncHPdIME=;
	h=To:Subject:From:Message-Id:Date; b=hIqwTOn+ay6CEWCDkEBU0hHB7/H8wpXIrU4/y4u/G/qa18p39+Nys0OelK3qm7MEairB3M8NYJFzcaemJclnvgjkRU/sxcV8Ou2qMmhC9mbQoCEBTPa3heqevEx7dOtx/Cu2BeEcxyCP7I+DWTKRpcSrvfpuS9QguZaGEqFdRnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoQA2NQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoQA2NQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E53C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777181253;
	bh=MvPu16/Ru1aO3ytX7hmVMFGOxF3L/+H/yI+ncHPdIME=;
	h=To:Subject:From:Date:From;
	b=KoQA2NQWuj7dtPS6hjqXH/6HkgVICXpQeXrg8k9uggwvKVF4qF3g/VoSob/p8Ou5H
	 f7B2QFma/0QTUs322ydAvN9lauk7zZECXsmGsJwA8ploqsmVMWLU2Tuzf5DpqmI6xf
	 sA5NVXNcl0l7vuwVDhu3EFddvZiwc60Re+kiVj8G+ZYzdIao9y9Vo1yuQotgC2Q1i9
	 Mg3pXOD6ZT7+FKEd9uYr3jcwizxBjjz4LXvYo+FIwRbyxC4v8fLMwNhvlCS8MCzPZm
	 /mWVPwXd7i5XoTmJGAvXlKPCsFdUntzpUuvklEFg9voKRy4JKaNnK1VQEnDO1c4cFf
	 XqnK7ZHK33iIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF801FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718125368.9801.14586184653072680225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2f4e2fa2b2a69d43b87d88f43e5bbdeff0fe64859ef711111a18fa402f270b
Date: Sun, 26 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777181253
