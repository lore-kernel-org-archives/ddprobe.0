Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F7621257F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778882434; cv=none; b=iT27OT+xbjhXNxKT4jqBJFDM2kX2thUPnoIKKaF4eL1IA91cWCyNJuJNfn1ksvRVuL9dzETmWX0FEdf+ga9TbsMD8lN7lW+VNweEV2ENSAnGwRfO92JYO4SYZsTA5Z3C/DxuwbBFeVIWOHydAwHE0RVvb2pq/Pe85U994pX+InE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778882434; c=relaxed/simple;
	bh=aYHnRLpsf7azb5tiI1UwcmRE68Y06y7o66sKdMc1weA=;
	h=To:Subject:From:Message-Id:Date; b=ntDhx9TdsvwAtEAtvOnjy9B/CQqZ0K4X2fTJgILsoHeTjEX7kxBwvnbigHTeFGfIFKMVkboDif8/x3fonVkBbZ8aSEw9xLQGiw4rvPtL2PK0fB/PhqiYIYJ9W/Dp3ocbZsnSVC1SvFOWV9xo9uU+BfKukGaq0wjLc0jFxMDw+vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apHIi1T0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apHIi1T0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A64C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778882433;
	bh=aYHnRLpsf7azb5tiI1UwcmRE68Y06y7o66sKdMc1weA=;
	h=To:Subject:From:Date:From;
	b=apHIi1T0OO9/nuYtFzIf5imUDpFNm1adi70lw2ar9u+vL7f6Ne29m/LA+zwHaY7se
	 aoCjELuOiO6KdU52/va5FnBJcjQk/VaOJJX1VNgBpF7jHSryvo14vAR1GSyXHpQzHb
	 a9as+WArfijfWcBbM6uu6uj5mKXrhwfJRxLBa7F8n8S65LjaQSMh5C1Hl8akqZB3bm
	 ouTwS07xLhqWhAIMWDWl5CLHFamrQBtj3cFa/tB+v3P8JjhtRj/QbSbcyc03h99ZUr
	 VLm4OBldN3wDtg49sEtiJuHKgHZxPBlDkX70DBkWTBbwyYRhQzb7KCsQKEw+qmesxV
	 K2K/I4gcHcqJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA86BCD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888243369.28963.13157268900813337964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c760485624713e7aae50e59df785523ba27cb64d1b4f02cef557ad30a90b288
Date: Fri, 15 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778882433
