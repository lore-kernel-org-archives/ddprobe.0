Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9293047B41F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777401454; cv=none; b=Fu7ucx/mI1mAAWKuUCvj+Itmb4JOCtSc1qdfd+MPlhKvv0HV0eCAPSDsec0Jci7JPie+IyM6iHkhOUVj0P6zznO61QWSr9e16AkLvYeboNzDrdUPu3qksj7VJUTlOW/+K4BKSKW7cnDbK1hIEqryy1PVhyS+r3vqAcK5XhJ5pUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777401454; c=relaxed/simple;
	bh=j9WCoZmKisFgGof0KqDHfFqec4Y0NXAw1jamhxP31dI=;
	h=To:Subject:From:Message-Id:Date; b=kEsN9EMAs37z/xj8pPUPTgRELCavsqv3HO3tUvwBP9yCuIuqad8srQTq1Wu7kDW7wlXDxdR3wnpQFtgm8BDj0PzDhPTbXnt3s8+FQ4eIOotvasvVduGgctp5UZL7xfcDATB0UD22InYMiwpEgybDPICizWSuONXqLvcrfAciS7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQOFXhRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQOFXhRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA455C2BCFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777401453;
	bh=j9WCoZmKisFgGof0KqDHfFqec4Y0NXAw1jamhxP31dI=;
	h=To:Subject:From:Date:From;
	b=tQOFXhROFib07W6G2bn2KzysDwVsQXSYMgYZI7s13kyhPyI7RuBGY3xywQf+2G1zr
	 LRzR5eutjg2zF3/LN+MrOUqznSJZpz/b3afxylXdjRLkOJsF/hUUYGwZP/5rdTNpRf
	 XZx4UPy3ld0Ex3zP4VK9joI5mgRFGt3hrNbwuavblUSGcdkML7I5IUbRb33x45yn9d
	 lkT2KA1i1kHjutw1hBw4vUdjsTR0IgNilHCdnu2J1jx7a1BY+SE7zOiSXq2KKWabjU
	 F41PqwvLIYGR7be1pMLW0nVNH5JAxZKVTTgaEfAMVdjXzjqSF9CKX9WKrmttsmXrP5
	 /W0hMlKZ4pvTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE03FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740145368.13762.843651799704587683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3ad952be6c81584c72389bccfbae88ae124730b63040be1a201e6f8eacbcbc
Date: Tue, 28 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777401453
