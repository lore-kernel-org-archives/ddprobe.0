Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C7C330652
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789887034; cv=none; b=J3JoNKVPUWbKcXYOKzKCf0VEdCm3+rckQDs74cPRb/rD/DxGJsXlsmqrvrdXin+ktst8o0bih95YOUigf56pUhVMq/9bTYK1yaIvA5uAC3jRiK3b/CATs6dHnhtg2FvUr4IRf1fjos1Dxu/z3WS1ek8sx+mgxqjAgAXeWkpFJsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789887034; c=relaxed/simple;
	bh=U6cyGOuK9PxW115QlVQiWf2HEfwekwhQKh0aUGP0QdA=;
	h=To:Subject:From:Message-Id:Date; b=pg0Zs0eeGGs5W0gTcsW71y9sWi8IimTpDnDxCHfhANqysSXAdvhoCfpxBZIaLPrjCBf15gRjdAG234dK/jfm7XJ8Qk1SXvY2OE26DUYTrAvxoqI4629vZCKSnjJhGoYQsdf7GZFoPI+tST9XJT4hcNtGtlPBiW+yCic+hV9R4Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXNq8y8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXNq8y8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31B9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789887033;
	bh=U6cyGOuK9PxW115QlVQiWf2HEfwekwhQKh0aUGP0QdA=;
	h=To:Subject:From:Date:From;
	b=YXNq8y8mw0cOWQEVJQ+ekfRCttfVPwTDKLKK0IWWdQUC++KgUylu1K916hNQucr8B
	 hNxcY70DSsE7nGnAKCBbFolLWTbguvZ7ULumqWnfHIfqw2HvyTpQRpP6MtNC9lK3t6
	 2cK9dilBjAtJhXkLAKU3EIPhqixxvDS8oV7cDqaYoxD4fNrRGIkFxDEUD9udHxqC9D
	 DRAUdgVqNeUNuCGlrDAiGK7Jj7Oz0ewSD+H4U3HqTz3XdV9sA6Z5PDV+QlSUdUs/8K
	 Q31elIfsWqif6va/xSTreQFkTlHZQ9zkp8Nwc7RFGS+BFRxNLWTfknxnm9EaSo7X7B
	 I8JE0Qup6Z18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F2C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988703368.2400.16160285172361058481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585e4b3d03b43cd6127b9d4716e621a2d67f3c98d1f12993ffd9af3d17b977cf
Date: Sun, 20 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789887033
