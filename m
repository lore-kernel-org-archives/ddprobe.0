Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7553081A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761297594; cv=none; b=DTL8AUEN4dJWkqjUSYfxmRsCZ8YUg7+wDEjMjrWAMCX1I9kiunX/YKafUi95liHVnYpBHE0oVBhcsWjgaEGXKjA/Av1/op1yvWfBDoU7q192/EykaaYePqhGOc0vH81D9mVmnUItA1xcFZKnexJuAD0RQSac38QnwgpxUs8iGFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761297594; c=relaxed/simple;
	bh=2WJvO94BdCxkSxPG7XUgyzHGBizldGezec4w1yoq/do=;
	h=To:Subject:From:Message-Id:Date; b=BpSuA3KtEmJkl1BN8xi/BkQ4ET7QpfNRSNKlnzjT99LcB5uWXDKbQShjh4OCNCt41hqzK56emVlo9IfuCUKAxfGmrq0LTroXvHqwsJoh8OCN89V+07LTo1CC7WTQEuYfxiik9Kko2py//qY0vheVh6ulSwl2VUN4/AuICNrtglI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlpaDZkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlpaDZkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D4C116D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761297593;
	bh=2WJvO94BdCxkSxPG7XUgyzHGBizldGezec4w1yoq/do=;
	h=To:Subject:From:Date:From;
	b=SlpaDZkTT4gsnCXdSNuFoqONnOQ4qsEmzzl+o1e6EXhPSrwBQbXKdwoO2D+czQzk8
	 N/Ea15FOFWDfelDiFIHS5JGYQg3toGY3aeg+sTaAr1gKTU+OnDTO+P0liwADdhOW9C
	 zG0WoDJns1ZRFbPVQWCHG1fpe/5iedhnYXN1/HhRrY+Pq4HnXbZT0euBGghusZDPqo
	 XpybA1IT3tQ3fdOwA5DxCqp60Nutd5sSLnpcsk3zKVGBqmosywxqc+1CpeY8vZTaor
	 g6yEadM2IhE0GugYXkyStcoWU9rOWV0r5D1EKBwMNTFER3QQ4Zw5uu6f5bXXstYSRz
	 1NqWQTXb2stQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC3CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129759360.4596.18067468388248316574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0d167cd0007ebfd06dfb7840ad99363413cdbdd165ff2056b2f425e81172b6
Date: Fri, 24 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761297593
