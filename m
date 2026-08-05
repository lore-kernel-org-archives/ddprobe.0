Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769DC3C3F7B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785910834; cv=none; b=ogTtsA4x5S/KVP9dyqChr4g/OuKQF1V3HXobLApyEfGUDBggW00ttlq+znsckN9wG7q9hiZ7J7Yq1/bKLyCgzhxSmQqUyl8HOQ4eQ8eawxXWLCK4cxfpYbTExJQxCw4sLp7OqiDJ69sKtf3imKc4a37UDZigLod7YlaGjt++RAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785910834; c=relaxed/simple;
	bh=7NgMYKw1A7YLZC3Vtyvoy0LUFsqxL20fpt+mkJsU7/I=;
	h=To:Subject:From:Message-Id:Date; b=o2mkBocSw3KWP3F8WLpg/KJ3TbriAgyjhw7Q/ExaD9kjn0RKtsYXseItmYlHvG3sbhUZ1mxkQrdOWtfg8m8JwEh6gezC1vZhwSz4CFNUtnLq1g/0J6wDvaEzLX1L6LoZwsh1wisPQa8IX0xgM6kzjmecxCJcO1QZeKFK8uTI2bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwgeCpe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwgeCpe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89E8C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785910833;
	bh=7NgMYKw1A7YLZC3Vtyvoy0LUFsqxL20fpt+mkJsU7/I=;
	h=To:Subject:From:Date:From;
	b=QwgeCpe7ii+NcAYB4DQMzqzQnEsG749q4BBGHflCedFkre5crZG9wjf2bI8+PXjYM
	 qQvp4WND96vC6yWVUqsWr/olBymBhXdAJWec9vqQnbhjlj6YukYEjH1IuSjJbCgrJ9
	 hKTuWq54mQvK1wxgejHRrvb1KRIrruT1z8xhbTtHxJtLQSDfdZnxORzEQ8bp262smg
	 sOrhzUepmylGO6TlCSxVKDwmuEiBOZ0zPmVkqsDwsuVYKBl5GsDvqIASAlYOsXm5dl
	 QZpTXvkg4o7Dp/6yexNPy7g3AXSvbat+uN4Swdn0lT5UGHgHYxq5lE3HK8j0mcFIce
	 U42y10+j2lNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F52C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591083370.29624.4944627418992909551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9682a0948d0c04f7aa21ce49b3084b72e0a2596eb5f09007f27cf75ccf340d6e
Date: Wed, 05 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785910833
