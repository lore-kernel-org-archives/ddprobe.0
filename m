Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080E538737B
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777794454; cv=none; b=OypgKoFVci9/9C8oA47aSwFK6nUifrrwPdFuYiVwBq/AGMIwiLBbwUBw+CCVbLqXpbw1+l6jdnLtjOGQegEM6TIWrgVcu8yr3O1iFLFmUs1st7ruOV4mnTEokjyTHt1548qJBWcVf//5hYCufAPwC9GZK5zD9ftnh1sxEsgpeZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777794454; c=relaxed/simple;
	bh=F2Di6f6kf1XWSoE0BDTbKSz2I89fvunoreEMAT4PrbA=;
	h=To:Subject:From:Message-Id:Date; b=MH9ueQ/BY8eVqkNburgbzKURdd/M8Rf9C6Xjy+JvHjNlTYUYRjjS1SV3sBy89UInrQ4J5f7dbcFGDDL1fF+ElqDi0kaaeYVsSngdWfcAhdQUsj95DPTUr5TdQt2yhByeTk8KfW9Oc29QIL7EPrlTKOfS9oJK2KwpyaT886t1YgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnmPUlFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnmPUlFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8EBC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777794453;
	bh=F2Di6f6kf1XWSoE0BDTbKSz2I89fvunoreEMAT4PrbA=;
	h=To:Subject:From:Date:From;
	b=UnmPUlFlmFR9wHV+S76ldj/TotBhbZGYDCxuuzCJ0r1nKfE3Qf7TRgO2FsKpi1fyY
	 yemiBlTt8fQr02tVtc92WKFW6JuxkY+jXm8zUye/IjKBm/lKqhXe2ZsxljR2Wk3EE9
	 3i38dRgcAPJukfhuDpHv2l8HXCaBMxbnW76R2+ECbsA0MaYfw3jTH31ULAlyAqHarx
	 L1D6gLcNsG7nO1DvVEMiIbYot9WI/dhPxXxRP3ONshuR7qFbdbohbDGYojKdy6aqHP
	 36pmAqUecAjKQGszEsjqsocTe59C8D3JuFDVGUP4Kbp+JP228ArylayJGC2+lEIewZ
	 S0qxc5EXICljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF18FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779445368.7121.16095563621615379265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3025009d73a37765eefc94eaed08a710d77adfc5cbf529be62118234214daf8c
Date: Sun, 03 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777794453
