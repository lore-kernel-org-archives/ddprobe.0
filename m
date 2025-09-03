Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C208132F759
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756915793; cv=none; b=MhZRcVftQ1w0IrD/cYMx3b4DaBTKO4mU0XAmHUr0rdrRoTu5P0UqvTldG/UJrNgfebIxUfTRS0OwIM8m3fdqwQx9Xsbwur3sm8KLXc4G/+2x3rSdD0CA+9+ZP1YOP6oJUM2eO/S1PMkZTKgSNfFXZCRlhmH/BGIbjbn/lQ+1Su4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756915793; c=relaxed/simple;
	bh=TWwAijVa2hNGW/AUhlUGO3Z6lHcsUSRitBw/+aaIUZ4=;
	h=To:Subject:From:Message-Id:Date; b=Dl/JNklURxq/lFXpdzNygNpXMBuOBtTvul3tNMvN1Kqv24Q2015MEayaqYlTghE1sxGQEpq++rDCQg1w4MOy4wjqovuU3KIlr5v1SN0muuHiu6Xsy7+KXDdTUTWoVLrUJ0YJQYuDAYf02mdRjlQs/2oT0CpjqATmJMi6RTeRrrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f86UuGue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f86UuGue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756915793;
	bh=TWwAijVa2hNGW/AUhlUGO3Z6lHcsUSRitBw/+aaIUZ4=;
	h=To:Subject:From:Date:From;
	b=f86UuGueWr0+N69K7mRWV8csIQ1MLnSqQEH3kI/BnQPv3jUv9WfiHpGV3Yp44zLdn
	 5WwsmIpuWRkXo3NlnRj7y4I7SDEM3dNSuIKLK1etmm2xKUU796CduVlWOtOHDn/ZJN
	 CebxPg48R+2A8zJWBobNkO6atk6CpkMcwskJNkhl2dQKY3avF4j/95SrLCELm4J6DH
	 IHXMqHKM8rvqCZzIREjfnNffrMObe7Ecye8VQTjLPH75PlBpQI//piV5yn5MjuNc0I
	 x4IyppP+hVFcWqmOA7XqiU56wn6+3PvpZfFRwUhR7IRbllgq9srO4qo/1XeJ2FRKOZ
	 29JpWJibqP76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D10CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691579358.4154.5942325946749913200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdc49c63b884094821bde1bba8386d0b4c15f3ef04e894079a262593d7d2e25
Date: Wed, 03 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756915793
