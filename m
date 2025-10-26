Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E50835B15F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761478194; cv=none; b=qLbIgSwr+M3nSixgYi6LCIDXYDPBpuNo25x2shWrR3vU+ULmmcHkCIlYf0aLxi3/fu4hRvm0YzJD0E9ZkCAOZw/QjOItkHwvH3896lXfFLYVrvO8qEutbkllzSmCMeynRxmUwElGGWnrVDPH0b1+jFBeOjKTCRR4FX+rXAuXn0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761478194; c=relaxed/simple;
	bh=1cPGg2XUX8UMmRWyAIg5s17nGsh+fKGvfU5oopsmGpA=;
	h=To:Subject:From:Message-Id:Date; b=EiJjk9bi7C4DmilDFJAVYoVAV1c/VSSIFHFNhbZk8EJ/oTAS02WwEmchNCtTyZ2T1LcacS73AAolR/J+A+KJGx1J0eKvFLcfkonSvQSfOhOb4DKNcV7v19Yh71WrJYV16EXA1aBEJ2B/meEssR3jLW2u7Q1k0GxNQo3pEisrYGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtFLFoDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtFLFoDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761478193;
	bh=1cPGg2XUX8UMmRWyAIg5s17nGsh+fKGvfU5oopsmGpA=;
	h=To:Subject:From:Date:From;
	b=MtFLFoDzOIxPIysfSf6BBngZLeNdh733/8+TLrW3Kn01OiqxU6QZeNV3Umpji5tcc
	 jBM8CF2rbzQ4pP7Q+CWW7xJe2JYP7Q4hi08cB8go0tCKH47RxgOtxEHaTBM1jAcqt4
	 iKxCbYsn8ShP5JhKAEZq877IabEgwLhWzPPv+UjLe41fjQZjMN4bIUcIwTtdl1r4Qt
	 P0Ha0XuW8NlRPvRCQ7XYvvOUjg8eDnNTcGx9WYGBJsbo5M8jVjPyF/ow9+SGyP/p/M
	 Rai22rvn1KzDHVLyxTQ3aB6QnAo6T8mxl4TsGM86ZFPsvtyTiWRIC4UbzCS3sR8y7q
	 B0DxQN9qQJIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90709CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147819358.32177.9731163624976962276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffb030cceabc39bcee02139689a676bef206e101c042d2cc0f1547264a40dbd
Date: Sun, 26 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761478193
