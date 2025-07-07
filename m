Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6411C7009
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751909996; cv=none; b=CJIsa11w6Nib2BRqSgMkuP7JM3aR55xcvOPq+fOKEQWAxjjZVbD5Wq0kPPbb13XROVdF5tSMlf/8ilac3d2Dy3vqNTra3bzmZp9wBp+wIhoxKx/LPgR8EX/iZmjQjOdM+Uh/PvWsme4GiePnE++UHj16VLMeboFBckgb3oC5CGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751909996; c=relaxed/simple;
	bh=sQsLNj7UZH7IxzlB5t7sLBvSpDOV2Doxfv8EhU0dM8U=;
	h=To:Subject:From:Message-Id:Date; b=HqHtzlYBnjm6+fGGxeMCaE7b0js0WUasCrkwcJzy+Q2K4BE7jG+/bVbM6o0BgpNnKhioRqsN41Pa7gDgPgQnMmna3TAQ9Bn69IZ5VShD6+y7ko0fZbkhTkOJmbE8YsTfQk9jBC1aYjH9EhN2dNVXxcdeUg+PPxQ9kRU72EAqjbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umftH69X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umftH69X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0127C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751909993;
	bh=sQsLNj7UZH7IxzlB5t7sLBvSpDOV2Doxfv8EhU0dM8U=;
	h=To:Subject:From:Date:From;
	b=umftH69XoqfUYvoqF/NDFvonmYitzIyRAz2YCgKFosd194Tni5CXYGCraVnsKVSyX
	 bvM5F0+9rxpsLTIfIT11g9TfdNMi9bB5pnLz1mD2D36OrPBfbJhXu79fu2GkuiYdVg
	 rRQReBpXLcd14l5LMBNJrQr9OR5gqn6QAhSWzkZ+miy8G/A+QzgdmomOCS/5oAROgd
	 V0tlB/pHRgDpa6pSSvsYk9i2CvjwOsB0D21AzOxWBW60tIY8LMhlQNB2QpveMPF8E5
	 0ybqu/FAz8zv+rxao4pPfEPF9m+ep8bT/iy8188N/DvW5LM1tqcSnnoAoNWbNStmmt
	 CeWf4i0ZFh62Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192EC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190999358.31245.2471971692528693173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6c22dc1b69b4fe22e3ce0bf2353613ee7778139c951e095695b05c2a259fa2
Date: Mon, 07 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751909993
