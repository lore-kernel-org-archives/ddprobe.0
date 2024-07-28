Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A20C1B86E7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722161154; cv=none; b=guUXjLE4fpkvLyDJ3IWsEmydRuNQe0wXinqSc5xBmRrBnjQrGSKsZ1nZwVlDWxbiH5kXutFeqyPVJvA+ZJeAjCfP6vU5zbUzIK+QEodz8Eo+VRDYlP0Ql+BP/xckxyRZsR8rUlQ4sSfKJsOSjWbaUUr6/dgFIrecMOgrHJ4tfXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722161154; c=relaxed/simple;
	bh=oirg6R3ZPERP5ZAU73Y7/xzDn4GYYM7b9PLiSUuAxiI=;
	h=To:Subject:From:Message-Id:Date; b=fh+NsmeakujRWBCUpvRrF52qLuieVKJhFEVI+bnMOmf4SvQmFKPbPq+5+jr5rxyG9Ng0mBeysqJRN4JFHrlve+icezOwjISeHnvJ6VY3Qxjfq0gVQnDWEHq/f5J0UVwZ6/ZYHdFKe9MW/5B/jr74FM3MhVk7TINrfh7u8V86QnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw6tmXuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw6tmXuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722161153;
	bh=oirg6R3ZPERP5ZAU73Y7/xzDn4GYYM7b9PLiSUuAxiI=;
	h=To:Subject:From:Date:From;
	b=Jw6tmXuE8JzVBmYrGyWdmU/0ZYspeHKGBE/mJ8nWSuMt2dlyeEd3Jg3MIuOQUOEFY
	 qY+kDJDZmPSn6755TbJSPUazkeu7C3k0SdQrIKNGQS54SL+KfuT5Rc5MM7t2q9OdS9
	 L7kabmXf6t4s8kYt4V1ddfX7LkxmMdGuZy+1d1Xc2ufOC81x/EfiaPimIsed7478Y+
	 fmyiQ+mdD7mwm9DZ8GjFS9qdLLUz68wrluPOV2pjkSUUJMyCeAlN3S+l/l0gP8RqWF
	 dAOmarLYQlkBwimiiSvcEXpQu/TZkI/9u9f9k5AQQVJJETaJdMcehoJi08uaN9SmXt
	 uSLR0kdKZepMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987BCC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216115361.19910.13267250026581157939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add69e6b47267c2050e025b733116a500257630874c9c91023ced9e405bc17b6
Date: Sun, 28 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722161153
