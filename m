Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB8A38B143
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776825455; cv=none; b=rYQApjyUej7COFfo6We7Q4LqUYtY7JPQfrs8FVB03vPnXgsJbworLymrUV8TdFpGjz8UoMZ0+WV2qiMwYfnxzdTStsdIMgJOxD9wTSiMDErOLdLHnYxtZ0FmTuLphT2hLgjPtEfdx6j1CuGnFYGmBpMUWJz3XOLigkgwjik6xJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776825455; c=relaxed/simple;
	bh=00tRonuEGbCIavRPgUMWbpMOdVf0eloDsmBseTP9oro=;
	h=To:Subject:From:Message-Id:Date; b=d1SmsYojEX9uQy3X1OvhpFkA9qdmJ0nteNuuJeBG+V6kSVzeYHATMrqM4hu5+vo+FQKaCRcppfNL4ruiwD2ySle73LDFEPdDsuLt+90ivG3DF7Pje2fUhD1Yung953IScIaOAEF4xl8JvUXuGvX9S6wULLXIZM/0GImbw8UoMcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6GopoO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6GopoO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1E4C2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776825453;
	bh=00tRonuEGbCIavRPgUMWbpMOdVf0eloDsmBseTP9oro=;
	h=To:Subject:From:Date:From;
	b=I6GopoO0sY3HjJPxj/RbtRBpfpSmt9bmBCSwhxkJ9byS/1/2SdxqD5GO4uBSOBgz2
	 hgHqMi9jBYDyd6GOhC6p6rhMntfJZR97gEYoaKn+I5VyPyzulXk7o8VhOzNfmogTlo
	 o6dMoMeA71bMtRpnkN/gXP3uSUA+eecdzkmkNF+E3LU0ZyftJQg0ybF1LHdlChjukp
	 T3rFEhi87lkJEVM8nhVrQksi2z+4W9LpU4ob+jGG1yznEmceW7iRsZFMdIxSwJsVvy
	 PSiG+Nb3FAfb94iSv+mrfPpdQaAcFQziXm+1s3GIxqWqXI2hnpD4B+Y+npl5j5032V
	 tmnBoc3tbS1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9555F94CBB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682545368.5787.16804761209594995419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd00a22501a7bd7a8cc032f63faabb5aa48fcffd346e2383b2791f7a4deaaab
Date: Wed, 22 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776825453
