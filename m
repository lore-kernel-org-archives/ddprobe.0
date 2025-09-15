Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2686B302155
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757935794; cv=none; b=Ew8Ze0JxCzO5iyUVze32y1VPVAfTbggVYKpB8Ej2r3ovMNsMJPC3uvU9718AJgG/NnXtQn0Yfi+zSurW2xklEzqmxFuhvdS9zjCPHW7iPPqLLEemr9EyIcsE9oic7WDng0MWjbeDBl3Al1HLCbtH70zr9AXESJZAV3MsObAMnR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757935794; c=relaxed/simple;
	bh=8LKD+UMxOnakkMOwoRvNG3g358V0Q8NJO1L6kCcLMnM=;
	h=To:Subject:From:Message-Id:Date; b=DEnsSfUKCKlgkkY+9vB55/cFeNxF3B4FcNMvz9Zhi11CJdw1xnKpY9VtIhKEDJqbCfs6srhhFMN3ORmZUimsUT26mcwWpaRQtIKxa+FmaFg1pQHkjmFC+5Dzp9cjQ7sRzGg15dQz4KkRrv/lqW8Z+McUTgkZR8GrisX8a3F62p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URuPWueZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URuPWueZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A089CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757935793;
	bh=8LKD+UMxOnakkMOwoRvNG3g358V0Q8NJO1L6kCcLMnM=;
	h=To:Subject:From:Date:From;
	b=URuPWueZVEyLcZlnmoInRCCmOLduOpZvfhIaovBVFCzgZ2TsOe8PCaJIr0LedRiX3
	 tuxjzPik8WO7HnBaud18A/UdnvDrvXGYzsU7L4HfNy+DQDb1UuLxDyuCZa4JV52WJY
	 OrSW0vkSNcDX0QU77x3yteSvMTZVxs+Qs+1sqoh/QaORe+Qhnb795G0GVIGRk64Iky
	 NWwy2XDxxsyRJG8oQre5FzjuC5f4aBXecwLMyRkOWpGBMxoZLIPbJTEJ9Ky8KzMYTM
	 zoX/eyWVJnt85w1bRTjDXedYlxyOTnZnn+LCIFbZLjBrG8XPWYm8otat/VpJQhG/Sk
	 afDemNQIeb3Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90299CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793579358.6417.3757326413144226082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d58ddc374ea26d7c423e64a83519dd8136f8802493d69444a9154be632999f
Date: Mon, 15 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757935793
