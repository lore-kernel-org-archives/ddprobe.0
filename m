Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2699C2AF1E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728819954; cv=none; b=DCeOZxoZVZ6WJEf4FGp6SUL0LM6kW+9pxoouvvQwOoKsM41+8duvmC2dpgtAavEeqY9mO23SF1oO7OjK6w2837qGevw+DK4L3rjQqUzrdnocwcB7VZTcLL4MGp8ZeVGms/d81iRgDCUNQ7wbQqDC7OnzpmYNhVafnMc7gRxUKQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728819954; c=relaxed/simple;
	bh=L7H8DMlX8kXh9jXNwwnGQxGKs6J8zeN0fl3DQMw48Sc=;
	h=To:Subject:From:Message-Id:Date; b=AzniEc/D3rMNKNZqg1ITZ4FvqHzDkMW4yT4i/OxOVDkcNezzZC+18YuzrExhY+hkyNhLd16fpweGBlrCuu+GfvouCKVYr9HaCF+tGvBgxlkrSWgMLJ95djE7Tti39CUFO//0QZ8Psb7yzdxgHzTzSUiZ/kbxeipXMtq2Ny75B28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKVm4v52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKVm4v52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDB5C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728819953;
	bh=L7H8DMlX8kXh9jXNwwnGQxGKs6J8zeN0fl3DQMw48Sc=;
	h=To:Subject:From:Date:From;
	b=ZKVm4v52Pbdcj0azjCsVLdQeK2rlP3QGnpQ0rbtWROJ5WYOvw0sfSKnjqnT7iWyyQ
	 Hy3F8biBer7QF8ns60rmqa9+iKYo9zhe/GT+Hv+ZuhluhbPpWYUHZVkZR0h/NiXGID
	 fDKEW82+q29z5SG3RuOJ4HkAcbiU4FyNV4loS1+D19+NwoPs7bwE8j08Lfe/9eHNqd
	 fysUTsWDHpNkdc7ms4v88YANCfIh7NL7ZYSK5Jr4UVOx9YL7XR9XeWiB/1FXu8rgra
	 qpMEqxRRww0CC7CUQ88hU1qYYWJ/dppSBcPPqRs76ZzQ2CbcPwRUaWqdkXZL6shiBb
	 ewpEzeO90vu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99318CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881995361.23626.2659232332192513386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c427b02a159f92bb408a4af6f9d6c8f007a1bae7b77ca0a44cb661a09815f283
Date: Sun, 13 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728819953
