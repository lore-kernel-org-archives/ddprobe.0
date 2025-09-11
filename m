Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6C423C4E3
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757620195; cv=none; b=jV6/gNvyKVeY52OUjmU3QxPko81PY4OAwGVmoo4lfyOOn7AUClEOVkLjyDOwAGTXxEQ6WjSiyavlHOHEi5PsPTKj4s/fhkk57C+d0vJsKdLCI/23hjDXXwoQR7Xd4hS1UTke6NoNteaBlADQqupUkMCAnjDk+MXEN3tYp8jcAzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757620195; c=relaxed/simple;
	bh=jZ/IXWNgTGk3h6dnEv0fOovgyMSAv5rbnDFa0wRzsS0=;
	h=To:Subject:From:Message-Id:Date; b=Y7nkOS9KVAugTDDvxaSe5kr5Y/d9gA1aViBo8BssdE6dfLvFfqWzbmsUf3CtYILoxzTM2BQjJwDwJfOmHcgKlBZNQtzs9dy0x38EYrJUiRk1uIawkb15hoDJlVK+tGBtdr9t6/Oq9tEJM1LF8Ra7E7iPR/PGB69PmoNqbmVrnIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mijIyjV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mijIyjV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757620193;
	bh=jZ/IXWNgTGk3h6dnEv0fOovgyMSAv5rbnDFa0wRzsS0=;
	h=To:Subject:From:Date:From;
	b=mijIyjV+nAXdX/vPhxlLRVAr+uzRU6PmcYYeEG6FKl5zXPUnaXUocMPz/Kjsjvsgy
	 v7rasXVeMvyKt+Kk+XcDgoDHPYq17rue9thz8+WDtOkOzDgV348wJ6FHEETz4kII/f
	 z+p9yk9x8oCHyjDuySfjU8je1wp0hWNatlfwdEiEJoodCoc1gftukT6+PELC3Lu19S
	 1WB1m1AFOZQpWBPihMiUQfMD63+Z9Upq9Mw3EV8UZVGkhgfJk5QdZxLQlBSD7AbSFu
	 iZWNLtryVlKKo5Ifi4r34yU1K/WPv8TSCfbvrhdmttWBLhIgx9pPtACFMYTfS5fPo5
	 FjI77aEWpKCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BCCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762019358.20318.12031709323111349196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f3beee5c49ef91b5f50aa21151d9d1b1327d15e96a824cc01db1832109fb54
Date: Thu, 11 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757620193
