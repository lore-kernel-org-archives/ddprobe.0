Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE72204F95
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738784154; cv=none; b=ocyhqL7Hbcxal/xGMFAAiX13vZZbGrBROUHuoNpJTMyopsrKvs+iSv9Xnv2O4D0Etgr6fxXbEREzbQ8+NPIyVwH2hnJEyZhUSGBERNH1oyqZVIHwt85JT0LVBD/FlguVxMhRqqJryb+HnfEEfB0cJI3u0Ok4jef2sQmppXYlEpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738784154; c=relaxed/simple;
	bh=WBIKKr5ZRu73HQVwWJ7239LMSNKdHLy0CbYv1suLlSE=;
	h=To:Subject:From:Message-Id:Date; b=NDR4ASqajtN4KZ8FQ5HTPFtYyvaAVWkt4dYVPE7cAJJrKj1/fxbO78Sk/5s67VkDqhd8T+bflJIhDLi7mbVuhRRTNMyDgeHEaZrhT9gwJrO4Mmlabp1i+u0NamNbWsi+G9EwpsWVBqVYAp8RgVsIATePIyp5cZw34zVNYQLISPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCO6+asE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCO6+asE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB429C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738784153;
	bh=WBIKKr5ZRu73HQVwWJ7239LMSNKdHLy0CbYv1suLlSE=;
	h=To:Subject:From:Date:From;
	b=KCO6+asEVas1eEOqcgF+BAkhNSlsExVPchVGKIOIh4YzJMUPskB1Fjdc10XOdRjfU
	 K6/yWq10gE7yMKJhemKipcwkIpOt4TDpljn2Jy5GpbJIl/WyCcPx/5JUcJ/k3Rz6Om
	 huEoyoOOV43l2nywMirqFYP/75ELIEVy7IC7n7wTymaXh8FpPoSeuJXAttmF3GMShO
	 gr7LWVTHIyilfYeSS9Cy9WAZJ/DV++vMym4gSK5Qgo7qHstH0cAGpaaeCj85j0lu7I
	 KnHKyc8cb0l+qCmQu1kUd7ctZuAcGFHomVdQElyCWSccXDLmUpHty7dyA86iKa3bJv
	 dJDWVMg8OhjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E0C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878415361.11041.15276903095278574064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1201030e54efc9a46a834dea03498573b624ea56ce6462ec51783f4e7c2748c
Date: Wed, 05 Feb 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738784153
