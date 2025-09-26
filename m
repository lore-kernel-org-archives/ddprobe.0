Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1750534BA5F
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758845395; cv=none; b=T8TrECfgk8+MtbgoVSt5T4jpz47X1tzXphcXWpuzDzzKEmjafvM4eb5XiKxjoJ2ltM2QoBHeL8P6u0qQcSTLy3paluVtobx73abFLU69fwD7fJ7JpXbo4fKmQ0+6uqg2c14v40padGyj1+jEF/fyw8+vyvIKEpxenXuyDGOy7h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758845395; c=relaxed/simple;
	bh=fhx+rX0BXnpBzJ8FGfuKsRbRsqJhkRspDzfFmyJiPZU=;
	h=To:Subject:From:Message-Id:Date; b=XDsUEbqbVK5vhMuNjDBBdc2Tr8uk3rPIz3uk0g9hn8tg7fciY4u3x6O2FmnBhnifjfpKKTyLSZbvaoYojY8trQJ39LwVo/ig0BHMf6mx4UI+ZSHS9tUuX/PZhji7ZYlTe/2+RJ82H3uWjPvoLIltGLJWRzQXZe67CcRCmiYYR84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5BH5eUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5BH5eUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A174AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758845393;
	bh=fhx+rX0BXnpBzJ8FGfuKsRbRsqJhkRspDzfFmyJiPZU=;
	h=To:Subject:From:Date:From;
	b=U5BH5eUTs7eQMIMzlk4u3PxBv/lUGXUdZnR9/IOj/A32JqgdPtCzwWqY1AExbU7W6
	 9dVQy+ZtR/++font9ajb+CcQbz2yQKN3PmembA49d+1mK33tYmd/SFS19ykolZRnqb
	 SpfHJ34Pygmp/VwCRp4Ubbg1Weya3pL/x3oZW9wDtwe8DDxDoMER0nBFFsDmPi1UoS
	 O3dqkZHy/VqDDgyi1B6aKmQ72LGF6prWzwkpYXtrYPOI2w5K0uf7jSjW19AG+9dX11
	 nj1hvZMWqtReh4KbNiGboRfocxxEdrHGhOjDuIOaklqUluVHiakWJf17/Z6pCJBAjk
	 v5vWJA7vFIMQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91098CAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884539358.17699.1060635585154309919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf43d8d7f0d7c02b4ce8ceae834678cd4178d7c1e7f062a1f90098d3c391113
Date: Fri, 26 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758845393
