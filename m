Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148B217B50A
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729229754; cv=none; b=I+arFH7jvPf7jWyL3Z2J4cuImMqfKTce6CqNqoLQX5qO9sFsdcoTqICITuqMoqg5pTJPANiIaWyYZzeMu/yE6EYxL8Afz5LGWxzHmsah010PKVD+KFmd2To8PHU8n3g3xNlDQB8+O/F6X9sp5N0GRvF9p6HLiLYG4/9FUdkPthc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729229754; c=relaxed/simple;
	bh=x+eqkb/ob4WpzdN4KZ7iBAirFxEuHj7F9OjGip7hDy8=;
	h=To:Subject:From:Message-Id:Date; b=K2Un9TogZar7Nj9vko/44z0cXHqjXsZX96H1Zzie78fBG8gy2YR/9dyuhGgG7cCkqL9pV+aqROf+mIEDheto0DWkrTcBlzNy014EYexgBnnh74JcpGxhCCFEyWXK3cYaxsVVA8scroL5ltTzXHsIPWRX8AkAvJxod1hDvRNoIys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKxXLCeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKxXLCeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729229753;
	bh=x+eqkb/ob4WpzdN4KZ7iBAirFxEuHj7F9OjGip7hDy8=;
	h=To:Subject:From:Date:From;
	b=KKxXLCeS6Pzh5brB9649ookA17ZiFZQgI2BRyLesZsJDciNMHIr0z6fclZKLQN98z
	 D7PFPTtfzbdnEojeSC96tPRgQFhXbH/QK2ya0XHcUiwhEARrEqQ0mGKqlw2Rbsde9u
	 BjWhyErRPZq9gLnKrPWi8uNbBd0+wUvmCrF7/lxFX20V+RaS/W/VdOr1bF5kVUrFWu
	 QYV2tD3WYzcKBqdslTkkkYbk3xOA4UvhniAF6dNvZhmSEwDW8jdABUiU+VJKeYZ7AF
	 5Qhg67w6EbuWWYvdZolnR9gn/hErV7p4dNG8pFVVtGAU9tGoq7tDdUhF71kg6Yl2/1
	 pJ0tKOnF9qL+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93653D3C54D
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172922975359.12606.6379357762703805408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2dc2deb0e08acca24b52cede297cc3f4bc11a11f8aea43fd79bb6e123aa3a1
Date: Fri, 18 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729229753
