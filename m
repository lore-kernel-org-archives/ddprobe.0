Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D58154720
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716371003; cv=none; b=e4vTHiv5HFG+WHYictw0TplcGch/jPR/kUFOE7qZgbv0FyA0xoTlc6duF1WL+2ZvQRhlryOwuEOJ0b+1IXBakOr0vd4CcLZJ8nSTE5oWMBA4GfwYkoC44MSYF/5k7QNgVhUswpFU/SeAVhwjbplKztsH8jNVPDEwb8mGpHvQF78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716371003; c=relaxed/simple;
	bh=Ik+MkTRFoyMcrQ6cQqcllYQzu9gSf05e6gZS46W7ak4=;
	h=To:Subject:From:Message-Id:Date; b=gsu5TgcqRyiWqLVjJKJPRv2frwyuKhFeZsNuB2gfSxHj48KDWbL5x8SwpTZfVVTSqU4fIS07Nwp2yMhIIMgTiFAbBwHF/33nC33k7Xca0Yc20qjGb6+WnDDg5a0z3e6mV0PaHIvve4lC6VqKWhz0EC2AM07t+Keqb09/3oc456g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQ4cR4w6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQ4cR4w6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E06FC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716371003;
	bh=Ik+MkTRFoyMcrQ6cQqcllYQzu9gSf05e6gZS46W7ak4=;
	h=To:Subject:From:Date:From;
	b=XQ4cR4w6eXfXT4xhLWl2MpBekSzthBNRoKvqBbgNzuW51Y4ECbCl8dtENROJ3djia
	 Wzn/kbqmW+e5+l6kOZCNADyDH8KRXodYiVMoc/h/Ey6yD0f5TUc3gNJnNqcBi8Jkgg
	 PCjKRlgemSNxVJwcFGA2ZHJPIgiFEYGlMDfh9JULKGmC90MSogD25KvMN646qQTSiz
	 e63/JzR8j+j1hxcHKCilC3zGHwhrJIXhOAFsTQbu5n5QWhXmGohbUL8l+l/jmWDHdP
	 b6aCMnMPgFV+3g/8GooOVXAUWyaxPA9Q8Z1BMUWrfSEBtYu16Cgm/uNe1PjKc2CMV5
	 OgEYnbZyBdgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF6E1C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637100287.29662.7784409352509002503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c8b643a2cc0e59e108b60eefd8a5e40d8f37f72c9cfeafac0646f000469ee1
Date: Wed, 22 May 2024 09:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716371002
