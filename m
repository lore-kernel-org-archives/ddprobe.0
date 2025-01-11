Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E4A1862BB
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736597153; cv=none; b=Kl+vrL/053QFVSVrXTQEx01zebTsGm8J0Ju2R/hDMjg4ptiMwjcmJzJ7F95vztaTI/qDNiFgYorIL6QSm5zIlGUhmGS+NV5qiD5Ngx1aVwkJI2KX+qVgknIYMvl+45cdiEoUzrDPZXICRuT56M1mLfbwWvmcrp17rLFMPrks+iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736597153; c=relaxed/simple;
	bh=yP6/r2PNUsXJooGW6uXqJG+gdgszD+IlZgChwCLzASs=;
	h=To:Subject:From:Message-Id:Date; b=RQm5iAyAnGBDjU81I1GLvuk7dp/MhoqkGOtUwLwTkIleIUns2W9fPZEI8KcpjppmV/vuaeCHLjoNxH7Z9jOSXrHH1Tv3ODKgmuVUqAEaGCh26Ha5SWGRjgDvyd0sfZeC5oMJ4VdXKBcvpSji7/c4rg9oDHndNd1P5jtWGE6IG0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxV376h5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxV376h5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8316C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736597153;
	bh=yP6/r2PNUsXJooGW6uXqJG+gdgszD+IlZgChwCLzASs=;
	h=To:Subject:From:Date:From;
	b=OxV376h5EdU2/k8N+XrIRAP/eH5VTynjXlqftgP2iOO2vEW6PHOxe3wG4LuixKC8d
	 f0BP5dRKg4jpvxGBkIwFI36FmL8UtkgPdiM+KuyuvdYoa0DV3dv/RhfzRaZqSz79K0
	 dUxaNG2FGfdnZLStPikMnKbldKr4Ebsqp3yYHQK2GFgVoFb6zQ14R333Exwp52sNUY
	 ng3MWOJWJnVMCFQ+hePtSd1lSwg77KKhuPZ7x4H+VvdYfZ2TZbjKqe6Uc+pZxUOMU4
	 Da2ZyOnRdTUr87vjUcgyW2ZI7LWyOJrUbWb6l4xBiOVGs+PGefYFeeptvEEL9KGWCR
	 iaKlblymSwXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB8E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659715358.20468.9906096111849862533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69240eb159bd44b7b05aff7260ab359ca735357302adaa6a2ee04403bf342ab
Date: Sat, 11 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736597153
