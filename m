Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204FE9461
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754533194; cv=none; b=oMIuoQMR+7IuD/7Xo51QhAOg8StC0zrIZAhcVdkubdx/DJvimj4sH/0/836vBnEZ/tlKbNhFujMSSpBtgJR9pk2oA0EwlywcG2q4ngYFxrxY9hUMTTW6pb7ly5yNwtnZUJXPd38k5Z2LeKPvowvmaH7Pd+tdcZhmZa6H1zWgZ7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754533194; c=relaxed/simple;
	bh=HXsjj2AROSz6kIAJJ7QTuMgK6HOJOkMJBr2/Xl2KMgQ=;
	h=To:Subject:From:Message-Id:Date; b=U0H+buRpqd9nBoD/WM9TgMvsE9joTqTfrvCciS/maYB2hxg9vipYEfRzYQw9AUuyt5C21rL5ZkqiKFwjAZHsXufgi1tBLzESfe0r6UqNDTjRCDJmle2jKyw1CuTv5EMQlc30yBoivQ9Y58TRkiB/xxioErRv69RqHgr8Ar55qB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPIerRsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPIerRsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AF8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754533193;
	bh=HXsjj2AROSz6kIAJJ7QTuMgK6HOJOkMJBr2/Xl2KMgQ=;
	h=To:Subject:From:Date:From;
	b=QPIerRsjHqdqBjn4u7tDVlfh15YY2/E26zTU7GFNESXChBPtxNw0pkxPd36KUGj3d
	 zx7UlW2bhUGmjAbach4GE3g37ETfiGlDF2lz6xvsiJXwB3auMa1x0jyfhMDjXwScal
	 1rzD+fiFW88Jlnj/9jLC8P4UhtTJFhEfww8qi13VxyTxgr/KObyqCtUm1s0oPT8xIL
	 m9ZzvTClCmE05Ur13hJWL6zXXfWyilEI8F6fIRU19kJSm3GuFDUryL2isWe7MZ5WgG
	 T/6DVBvcllHpcMm3me6hIDCCNH4NXNf99JwPUEaxMXt0iWfgoGc6I0MBmEQOh7siEu
	 GjSSG43Yc6GGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441EC87FCB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453319357.9517.9078564354663434201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c765d428bb0931425b9dd4d93511e0e862d518158c756c1a352a566288f67ea7
Date: Thu, 07 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754533193
