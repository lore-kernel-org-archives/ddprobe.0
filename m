Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96CD332615
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789077034; cv=none; b=GQYKaURz90COl3Nt+KC8SfWo9Q4bfr3A4uBjh2vcEH2a0xg9W7kn2vJx9/xxS992Cq2ZHbO3WS0/ZCVQ6jLLi2G3aXAo3OhOdahwngKLasksJ9XMvOQELB4QypvmwP5bpv9RHD3aC6RKzTHrMZYjfDr5AHzcGrBm5BG8bnGcQAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789077034; c=relaxed/simple;
	bh=jEJiryvrl1oy5aVAHAXWfbZQ5TbXvEviBOYlC6ufn2I=;
	h=To:Subject:From:Message-Id:Date; b=u4MYLI5Dj36vxQ4m+uGyirwdqCw1GQpW5MmwM+4QKImkBkcUPng6JlqMuIq0vRyGlEDieBSZLquwCSDpCxdfDqQ5MieEbiOAwhaI85JHHMliGYAMj5id5jQdHreVMU/UuwVMEaIdlurTuVM4tEeDj6dH7LKC9xGDyN6pd8HfWbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYFanrUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYFanrUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1A8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789077033;
	bh=jEJiryvrl1oy5aVAHAXWfbZQ5TbXvEviBOYlC6ufn2I=;
	h=To:Subject:From:Date:From;
	b=bYFanrUvyConCx0np+gkBJvFqTaYoYPcT2kCD9QfH+HsrAyRg06iA5elwdwJZB2oM
	 g/VxaVXEoCFi/+FfgtcJnsFOAOFjAMcKVGsyPP36HYf43UjO1Pk7epsvBM11Fdg3BC
	 kMRhmyWYusI9jbi66OnHOTRF2XQo9tPh18GYkNjsn0YbO9xugiOBuLU0cjxuTm8I0P
	 skyqvyTNNKMckoBCyb33nMqO2NoqFxz05+V4fD1YAb4xgGzmHQUK3B89E11fVf1L5M
	 8cBTvd6NdBAKA9jPQtpGkHvo1ukcDYb0Im2//XS6avdqukAQ6IVFSTQXNgGGsoS9Hq
	 XRQuSvMKXvSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C18C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907703368.27912.4332737385634626620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69cbce6cdb8892214b3478bc67d5577bbf7bae5ca70a64ced955020ea7da7b2f
Date: Thu, 10 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789077033
