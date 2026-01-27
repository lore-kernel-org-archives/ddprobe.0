Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6CA2D8DB0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505834; cv=none; b=Zirp7jKQzVh7EMg2S3Kz3VxUvOybf6ny1we49GpGi+C6CwUYuGCD/fbN8fDjHtnwkCAhsmXd1Ib+oBqNn8v41aJWrGHwZ03dGxhDZ6lQ/EbHFntE2qrKS2HGCrvutKr4B02M6wK7AVfXglxvfq1ISriZ3E9wRMTcQiJkzll4gMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505834; c=relaxed/simple;
	bh=8eFnW7nvmwXNQWSJUayoL1qACI6BcMReLxBX48wBEdo=;
	h=To:Subject:From:Message-Id:Date; b=UDN1Z4vQcavLWoAj3FomIuMOiaoCbVQGOgA50v1wdXQagMPWqeJDRoRoK0dq7giYVH+Uvj4uGVwrhQQWHnP1Ie9VDm+gBo8jYnUFaOYTAIY6TtZMbF3IR7KoFgGgLnTRZIQGWxZ0IqG1nTqhijtFOIhy/pRxYl986Fvw6pZ1lb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr3uwTua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr3uwTua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EDAC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769505833;
	bh=8eFnW7nvmwXNQWSJUayoL1qACI6BcMReLxBX48wBEdo=;
	h=To:Subject:From:Date:From;
	b=cr3uwTuaEQLF0RndhraEraEsiyQH1jztsuSKGf6BElp75mH7Fx5DxCD+R8EdJ30mG
	 yxXa0H2n/DggB4FnBIwOIQepsRaA11JfkaCxmieui+Rd84fYVVyKw4fNdyI6lrOylR
	 YvtWTxVKdqFMq+JfrohS14rtKl4OFwcSjjKsFrFm5i9Ovq+naUJaLmm5lSuskKJrcB
	 15QHUdmXiyUxS/tHM5YlsvAGJ2aT2bZ1B9Eof31A/cLJag0bLMimNyTxShdxu9o0JN
	 av0wY/GMA6zS/AZKn3S+LgsFfYhaQNdw+e3U8rL4/THc0Pgb1hVHYvF08sHZWgKlHq
	 MALSZn2VARl6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92485CA6CB8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950583359.9742.5815014207755304495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287a9ebfc5d970602ea708ace5fb8388418f0e6c08a486779f5f6d11848bce0f
Date: Tue, 27 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769505833
