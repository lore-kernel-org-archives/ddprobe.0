Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6DB2472A6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768677234; cv=none; b=owlgui7jgyxjnyNC6eLnUH6tn8HRIfyqM2qGbDsSGp4SpuVH9M264NKvfIIQvpOGmkRCvc3gxY/MicP6w4vvp8TF+oSYBLR7lWu0jAhoBVgVTJKoXmqlB1SLxuBCXQHuh5Ra5Pi+fewFsb2jl0VDLZrUwPVF7EGKigck45NS8C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768677234; c=relaxed/simple;
	bh=x8kLFDjNZDM07aqmGSeCtYYGaEQj9TxGGHgHZwAKFvI=;
	h=To:Subject:From:Message-Id:Date; b=IBuY8GgG2cDuKBnV2Ehg8b1rtFyILXLa17MYtfWAY5lB/Opua2g353pRC6HbMHLlcgXk4x1MkkjARB+am79iCzJEreaeQG1MEULP0wd/yRIsUqaEC4o3GuHPXIJxyG6eNObJIbAB7N3TmsmtcnZ63yyXXdjH57zS6AGE6hWbMlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtuiIDGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtuiIDGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A342AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768677233;
	bh=x8kLFDjNZDM07aqmGSeCtYYGaEQj9TxGGHgHZwAKFvI=;
	h=To:Subject:From:Date:From;
	b=jtuiIDGshc4QVfPS9UmrfRmyJlyBL7geuWHdcWbg5JYJlHgGgAXhRnthEhf0C0tmO
	 QWhVWTjrhUUn4OHo+ruWru31DD+rIr5sefqvhScU09QyShShUhiO6FkawTulOo9P2F
	 neV5+dwP8Ases9YhpLCcDY5Ef/QJ16GvhUsEDhx3knpSBismHTKJCTNVw2Nuy0CGCE
	 sQRNQE8LY6pr3pf8KMCjTyzmY7/kw1z6DiVBFsJ9kxftm4UZo8km/nPGY3HBo74ZZe
	 q4Sna5U9lujZPyHo7omSgMBRaZJEUuNCPItdPsrEnUCcNkV6KWxRDkIkN8eWLl6kM+
	 SeQ8rDo9OiLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9560CC98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867723357.26287.13872525983365377177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c2bf08c57075506c7b7d000dad0c3315001f519ebeaa32bdb8b0ae6a3e2a6f
Date: Sat, 17 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768677233
