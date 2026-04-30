Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17949421F0E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777556854; cv=none; b=bc6NxL5KwBH3kFnGoXHMAnjH9G1ffziFiUkEs9pGwcPmk5S6xtlPM6/u+ogtmkP0Q2E5Hj9arFwlf2iR6iy2o46fP0quuVHKOB2zrABnQJWs2axhrWWI1NG9gmxzLaFnJTKIy0VESyncNithdJqM81wj0zDTqplcUQFXSFGc3+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777556854; c=relaxed/simple;
	bh=+WR3/c9vSA0vPdEu9yx4O3DR0n5xmuVhVBs2TieBCSk=;
	h=To:Subject:From:Message-Id:Date; b=ICu4kuOSBtw3cLmLLzNxXfNifcRXoQ7j1GjJDtfaqrYSuK5YeKxm/ShGxnF3S8iNV4fGXwLgP6jeeyT77vKAdByrwTp7FikiJdOWCxyS2bBxqxyzq0ON5KbOQLQ73p/ea3Lb34xwJoVqtRKfZequXk0hrWxDsXKxUwcjvb80eV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/imuRe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/imuRe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88EEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777556853;
	bh=+WR3/c9vSA0vPdEu9yx4O3DR0n5xmuVhVBs2TieBCSk=;
	h=To:Subject:From:Date:From;
	b=c/imuRe8C6sbmYOKtzPcyTz+OJOFnvWVjQ6X4rxC6u92koIvbG2MVkn8vgQPibEYU
	 N5ZwvTfs1EdMwsqbDVLq18w5tIiif+VxNclA8snSovkqK5r9LjGMDcAU44JNWdg8L8
	 87x6/5iNzHKKetseds42Z4VWV5ivsUCV0XaXVmEmFAfNqJt0QjhiPQvqrES4yNHoZg
	 V2RSGFj83pPUwcWomlXcDrHnr+IAazszvbuOeI4Fy/UrxiAUdojdPHggNU0rj5FLP+
	 brZ1BaNNISpYiOHIHFmDqPSpiOLc2sdRT9h9wXCjbm1ShEbaqpwBchZzV/7BeP7HLX
	 cupvIgH9hIxcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA29DFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755685368.32509.15522078020307755313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6240262ad989655519d84a1189c62548a0bfb4404772dea66f9c90ccf16e44e
Date: Thu, 30 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777556853
