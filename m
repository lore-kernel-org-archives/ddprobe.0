Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FCF276056
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744218594; cv=none; b=SZF6T+TM1V1zozCYwCiYdBnJl05DXSAFCIhvKI7WF8SWHZ7F3x7XI/ZAjlIK+VaciFsQqvaWCX1OF2LMsfES7HWnM+iKOZ8zu63O6WLCKHEorA34yFcNCIiPyNKRXOwezG5pY8GCnZWObFhuTUxR+K7Q91vN+6kQ/semMhj1p9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744218594; c=relaxed/simple;
	bh=zXr62fFF/cNUq/VX+CrBT9sK7B8PLH5A4cL0C+d5PbA=;
	h=To:Subject:From:Message-Id:Date; b=QkvtqUbWGAtlhab5V1ZzS3ry40Hal6APwXcujdpeau5knEgd0inpQpkwIhDFCbnXJxnZakl77cgbPf+9A0xu1Uzui60/nSL42Pq4XCuK/13Upu6liRk0bsRXgbK5dO/qHZ4bocj2lgVjalpgG0dgWNByiLI6K/xwVUU7XPAwT80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1SB2z66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1SB2z66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0681C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744218593;
	bh=zXr62fFF/cNUq/VX+CrBT9sK7B8PLH5A4cL0C+d5PbA=;
	h=To:Subject:From:Date:From;
	b=O1SB2z668LbM1XUoU5tAKBgJwrkcP0gWB5funM1/tavpUyM6HuvmGkVYdhdKJKaCL
	 Gwf4ID9aa9JBycVxzKfw1WYTHONuZZfCecIbRhuLaAEbvdGjl1avJRltiBGgh6wNzv
	 0arB9E+pcLZ4hXaElk8qA9yuC7w3GMFGWaRYay9LOL9JlGzMSmKRH9x6R+VKmwpAl8
	 uclPCfoglpUxPtR1wLzdq0OHPLsMleQ38VveyzcTu7svd1iYmx9AKmNuBFI80g9gaw
	 eAtI0lIDYxpni+DP0V8XWxyQo0AWGYXOsoo5gJqGdKz7VR2PCNPFrqZdjzWzvuN6NN
	 KtiI9GXWbL3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA20C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421859362.4488.14814630367391519314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbf1fab7680958b1e11660533830e997319a7d5eb05807b370924c1c494700a
Date: Wed, 09 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744218593
