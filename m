Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47C6486640
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789549235; cv=none; b=RpwaF2NkwGiQYFqPJUMdrQ9zx5koSLfYxM2If2rcPVWKbcblvHgUrt9ssnm56H5DDzKss2bstylRh2dT6+TIHiPq+mFQqbSgstxFkQk7rY6eP6qFkwUAEgTvXb/lIDnWGSjXJRySZINnZjyRl+Kw88gCb5v3kBaw3CO5WyMYVkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789549235; c=relaxed/simple;
	bh=4s/7EgfoDCToo7UQStTl4Wc4LLLDPbFct9POvjKVQ14=;
	h=To:Subject:From:Message-Id:Date; b=YU1CgIkX2US6Htah92MZenoEanv6U+rmNbwxyOMVpUCXbd4pUDOopJTEI/K+gqGr1ikyhzBYcCeZ9LMcPaMXa6W5C5iMeVfIWlwwVzSrecHffwXONFLbqbucw/heEae8oyRGPoUYj6IJSps4NwSLyRwCDTo6OBLtDFlW623F+/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkBATQ9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkBATQ9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C6BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789549233;
	bh=4s/7EgfoDCToo7UQStTl4Wc4LLLDPbFct9POvjKVQ14=;
	h=To:Subject:From:Date:From;
	b=VkBATQ9GO4RecaWcNruWYJ50REa2abSQf6hPMA+l0P9bou1h8aHmUm5kTCgmV8SG4
	 K2QGPwkuHdW5jY7CwTZKcCbVPtanpIchu+hfujvxMkRHkzks/Eyvn6rFjnA+vnPXHh
	 oOUcflN7uHoiJnqlw8RcFKHYvGIQPztstIw/6RcTAaCrtN8aC5F+x5GIDxgEQjv2mz
	 rIifIyShivGchCUMaq32wza8Bc8HWtHvVq4jwe3LWkSBcYu8CCbiIfEHF4UIu3K1/C
	 +BZUjo/sfNVoylrfjoKxN34smfxm0D0ZEfkYJxjzguAzK32h2NMeTQJs3Vfs5WybGP
	 t3gG7EMoGwtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB97C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954923369.15254.15761011465242754412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6bc3c0fce7f534375f997f96bd273517534c2aea1ce9bf011d7e7f129853cf
Date: Wed, 16 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789549233
