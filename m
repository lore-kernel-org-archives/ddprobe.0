Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B6B79CF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719200543; cv=none; b=KtvVf7nr7mt/UcClvSc8IEOaHuAphnyqDlkEV4F7oK+ihzjgOzzwerBdRUZrul9AdknOMdkqeVZpaEMpx9kJ8Xv+eSnuHzvgrgNwBS7RwcnS5PHg7FUt4gUmoB/V1+aFDxxyQs8o6Eo3BAD1YStOwsstUL9+74StRA8+lyHbyG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719200543; c=relaxed/simple;
	bh=XZN+ajSyfY+VBnyanHe+KL7Db6BOPJmpd2RfjU8w4yo=;
	h=To:Subject:From:Message-Id:Date; b=hoDKhlBWmuA46N57QuE1BS25LUXk2B76Tp2/nI06Ur531ZkXsX/sIR3GYO/86xqs5aEavXmBk/ufbo3ZgDAm+1z2+XmEm9aMzqdcmlwdjU32Rc4UxfZg4HdDV2RTtgBzUtRLls4XN3CDe8Il2JB2RmMGxBe+e/d2EVj03NmQKwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJDafkZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJDafkZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C49C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719200542;
	bh=XZN+ajSyfY+VBnyanHe+KL7Db6BOPJmpd2RfjU8w4yo=;
	h=To:Subject:From:Date:From;
	b=AJDafkZT/uqzqpwgKATrI0eTPqpJ5a+0TJRf72ZSU4YHI4KL7lZAV9q7hqnGJGKzf
	 c3pnr/4P0xn8cJALD4NiRC2fOiXCr44hAaZSosCD4m/EiUqmYrCP1rajnh1JEyWsjb
	 jKWaoFHK/x3MwzRx1a4NIdBZTrS3LyO83F8L9Brj9k6rhjK2Xgx7QKv8AMkciSpfb+
	 IYQdopM1FQkKC5zrDU+bGPVZJrYV4EYsAqhH/vDew9js0MxpaPM4UGYk33fYyCTSmg
	 Coc3yyVih+x1QuGRKKKqJ8JmE3CWUUAv2s/2cUAOhGApSNBvcY+3YncrwLJkaMz1WH
	 qQaQSJAH9zv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D4BC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920054275.12064.13913298371909231476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f38625d4d8a7d367ab60873ea5e78aedb742db6e89ea3029da9e567e63081a
Date: Mon, 24 Jun 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719200542
