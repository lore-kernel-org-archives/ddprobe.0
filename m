Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EF528642B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759949994; cv=none; b=tb4sp6fYaY1/Q2XqU8VeyS34vzR76T0esYBrjC6DVehG2GSgKQnTARtZWvydN5fMaut1WE6axrUiQSLUI/ln7Wzk2MDAo67BO+6nfcJ+T0JsnefoFgnoJYQfomtfOJGWUew5P54KDm76jC6nMaMZ4/Us3/2q9tR0SA4kLFuuWaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759949994; c=relaxed/simple;
	bh=nl+MoAQ18W0Q0CeLZMbcA6jnAeiv64SaO6fwx7kj55Y=;
	h=To:Subject:From:Message-Id:Date; b=g0PSsVmZpWGhUF0xGkJ3xJSuSbtjmj6NBvXxpCGBSMGr2s38h9X6wIlpNUl5uYwVtZPatoBytQ1zuFziIJZCQBjSIF/XWJzOs326lmHzxs9KtnFO+JlXUHH8mHxVFWKza2iVQ8hXlIjhmi/M8ZBehKzFFD4StIBBLacDTQSb2/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHEN1bkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHEN1bkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0261C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759949993;
	bh=nl+MoAQ18W0Q0CeLZMbcA6jnAeiv64SaO6fwx7kj55Y=;
	h=To:Subject:From:Date:From;
	b=YHEN1bkV+6e5z0wViFvjlnR4c2WVzhOd0QyFCp8K7Fculw+a3AsQXr3Of8XKvtDbf
	 Z+QAvPGry9+f1DJ3Jt6QjycDNM/c/8EhmSUOEH1U7AaZQjsLT8IgdoEEr6ecMmRq/w
	 fdIOO2HzioyiIQNc76RWlHSfYCm1nAVSmZqIK/3K5fryAczNMOYf7cYCiR4R/lRsXW
	 D3zQgIaABh2hq5UhXLuFiE1Lu0vI2+ccL87fcjKN/ZJjjSLdNzgz4RODLHUEbbUPyd
	 HB2xaeN+dHcJMNys1PNt05tRLf1ZEC4T7vBDuc4UuKmxJM6PTeljO3nZ8deund8K/6
	 9tfbQyYeQfpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F219CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994999357.21872.2623207023622436257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e6b4304a21c6a33645aeb6c5377c52334300fb2e98bcbdbf89f74de3c6205f
Date: Wed, 08 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759949993
