Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B87731A045
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780356274; cv=none; b=kOoX3yBx5GeYdGL/NuqYMk8p9iikGuv/B05Gvw/l8HwlAxJIyoowxLkQ/46ilQ0BgoNtPe1X7PiRQ2SzmyqhMo3oz5iWfTmNDxFgOSzvjt3gvc8NQ1jIzA68Bmcr/WXO1XPOf3R8wQxnlW/d17hNXq32rIW2aoTYwQh6JbYprcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780356274; c=relaxed/simple;
	bh=VhlZ0JJnEFGLwlcNy8+gojtFGL0wtQzizEOjg30+8TM=;
	h=To:Subject:From:Message-Id:Date; b=YAK/3SyY589bnpZ9nHKh5yYjyIx8l48lhVCL28avENe4WhaABl044QmHLd8tR2KvyHVUmxXCJTShEyY6rTYnKBGm8+TfHj8xtGaX0KKVjBz9J7cfoQAAkseIiEJmH22dEg4ml3cCR5s6UsxkAXsXEkFJ3G1EgbFgaDBBh9I83xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIj4+n8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIj4+n8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89D9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780356273;
	bh=VhlZ0JJnEFGLwlcNy8+gojtFGL0wtQzizEOjg30+8TM=;
	h=To:Subject:From:Date:From;
	b=MIj4+n8QzoR5NIgQUqTb3ndUTsHhLyN0ESlX6X7Ah+tQjogDgqodtKduDGxUy9UKR
	 Vg/FuIJTFKJb8CA4B4b+2ZFqv3fbKz9B6c71OiYQQsSWJUGFrmWQ4fZYwdIM0HQQRp
	 UV5qi3mLpGVXmoIjqACSIPwyfw3VzbmeWEI5SjdEeCNiqO2bgeGktM6EwjtFmaOsA0
	 eErWTI03BY1PwuMjNbtYJNhRL2gGa2XPrJfyNo7777WaDCpazoB4kK1QJ6a+cZgUUX
	 NWFWHGtV7AhzUdsniCaw/EOawVK/YDC6UJcoo13A/6T26r0m9bg52lzzp/WCZnbE1G
	 dSBr2PIvrqVcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08BFCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035627370.3270.5969794694440692278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f49fc40c506b9127461d07f057d83e462ea2b41e3d22ec6db0a5ad590b648e2
Date: Mon, 01 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780356273
