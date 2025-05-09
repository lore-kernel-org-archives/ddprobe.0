Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E8B229B2C
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746769194; cv=none; b=YCyvaJTGQxj+xLc2fFbFuy+pXB6CBVKC55F98KnaNrC0wVWa2xH0G+kSBzAlXoH4o+ZDEny2xKxkIcGelVxl9LMvt2AZ1LC4qlpzYq2Tmg2flCctZngIYQio6SxQDdQrj+fEcMHDWr3xn0jgxnRmqH9b2iyAJfa6yRjin0xG1bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746769194; c=relaxed/simple;
	bh=8KjG+iGFUVSQ0aH6v/sAKxJ4i30FOxObdRZRC6WB9TI=;
	h=To:Subject:From:Message-Id:Date; b=LZrkkyyvgwfnAFZgLO3nPANZMjBys52JIQ91dofYY8GxcT8KOJiv3826hkn/2XMn5hNLly4iSN+IVjT5tw5Xk8QuxS7Zm3EUWq9+PpIPhFst4dUJ28VHxRfPiUPaZJoLg6CkbvSVQRnfnF9QA9YnE5XnfUl+K3qF2n03oMpHw6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eW7KbYD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eW7KbYD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0599C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746769193;
	bh=8KjG+iGFUVSQ0aH6v/sAKxJ4i30FOxObdRZRC6WB9TI=;
	h=To:Subject:From:Date:From;
	b=eW7KbYD8rLHHpsVPhyfiw42XMZjUFqkNwAkdUdABJGcRh68VV3SSU/FJU+GwNjxad
	 /JLAJM54ULhOXQWWByO8CaVii6MXN+ESufaEutGsNfGM1MtO5CLwGbtAUwiGsMbHDL
	 Jqvu65Rv+8iBK9WrJymx7UjdHhiUbFGkE0zSuJ46a3IVaIJ8mbYHggoQCILGge6uMq
	 dQQOS9IurRL/Qf3XWVmaeiaDqfTypaM7GkO9Of5I34uSQADKsz0pg9BH7AIBsMiw8k
	 Z/0zO7H3ASAGJFap+sNaXTpw1lNKmdAq2k4+e8742+aRetTX8XCb9WK+omqBC8c7Ns
	 74uo6ZQLNIs8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90499C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676919358.5441.13158521209831202008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5910dec493905c269974b586f525d60b929475290362bd5d6f307257236fb955
Date: Fri, 09 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746769193
