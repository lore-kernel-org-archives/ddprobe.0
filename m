Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB6018E76F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737357954; cv=none; b=kr+r9YyM737aKUD5E3uzKL+XDmZuxZFfPLm/PqWHz6ZmqH8GhXAb0IBPHABsjWfYmbsuEEKgVgyj0cSE8b+p/Q59ySZhkwRyvK6iy0aUin7TS980cF+dC5aqJ03Hh7Uly213Wi29YwUcEYcMWbSaVtB5pI5NckrFPqniX3h0vkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737357954; c=relaxed/simple;
	bh=tyd+9D/A1SSw99PsB4TN+2IvMWyTFnBNJzagclzdfJ8=;
	h=To:Subject:From:Message-Id:Date; b=DmtF0hshuf3ftrM55copE8EplUOVGRHE62VIvAcDqORHhlf6DUSv2DIMNBgU1zuqnx42iyNpaFwi5ti0ashHJoe7QCl4FRnRYftXiO3GI3klXaKZIkJlWBg77KKBxB76AJqPkuMn0uyPxQBW1FyNStOhpbSx4o0gO719L8t4+rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndmBcc0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndmBcc0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B8C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737357953;
	bh=tyd+9D/A1SSw99PsB4TN+2IvMWyTFnBNJzagclzdfJ8=;
	h=To:Subject:From:Date:From;
	b=ndmBcc0SfUQCV1ssVBEv5uehk6eme90CTun4OPk4lUt8Rr9g0MQa2CtUmtOz6CT5A
	 s5c9SWClseTB2U85x12F6mum93uVnfS7AqqFZ0pWy07doqlpdqOnydclB81TYrvF/4
	 9NcIAYA6LCxdif+ngTkifiCES+nDL3SUAWmRoHXDMoM2qvWDGCq0Tsvv4eN2Nc39GR
	 u6mIQzCNwXcVd1QMLYD4G57HjApNieIlk0N6Uz2Xk9Ptb3AqAmYcci1mvfvDD93eaJ
	 ajF0xz2iMGSdGqQNNUARep/zGrcJvyc4PEf8Zil3AdpTtaIxYuPzxTtvQkTlmgAlW6
	 KDQAWGwEhu0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2FC02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735795358.21808.14196147452117295646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e42ddf1c56e8882f6a34f6d5123884a396635e6b8e78b5b4c2dc2bf70024c79
Date: Mon, 20 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737357953
