Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE4F30498A
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755266393; cv=none; b=nVkXGutTistm25zf3W04HnuiYB9qVZeJ+bu1OUeOP2e5cfBZW4d0V+weqoB7i+cz/sTMFtFJ88+H35VVXrgQUWj/KS5lL2vhZfhRbrwvuGJpGLr/mp37Ud0yozvJLVTJTiuUVxKR0GXoZAMTdM6+y+DTcRShsDEQ9+clZtoS5Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755266393; c=relaxed/simple;
	bh=kMA81C6wIxwx46aZipQm628UMPzbspoue7hIT2Apc1U=;
	h=To:Subject:From:Message-Id:Date; b=L11cOdvehQEp2TiX69kgEgL4UH67YKxxfM5grOjOsajia5u9hWP9Wr98bzU6blRDG4ckgG64mdGVxi5TSvJgwZEuyhal9wyGlK6EzdIfh6aY8WzyTraV0F7rmuTO9fEq21io/64IoAPLMp805gxAp6AjroJSsQFxhUpQzXbuGaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWuW72JB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWuW72JB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755266393;
	bh=kMA81C6wIxwx46aZipQm628UMPzbspoue7hIT2Apc1U=;
	h=To:Subject:From:Date:From;
	b=LWuW72JBC740LTWrqhjxuqyFxBA+hgWL5GgZzeelUocbnofkpd9pqW2VaFpwumtOs
	 YWdI2LAiQg7U9+H3PYceSXNiqGCC/zofZBI62GQU4FFS3JGSu+Mr5eH68J7OTc8DeF
	 LjijsgQgW24SF6eQpJIUrm3PJ7g/HVi+8OH5QX985qjvlKKzR13lIXnfGiXKszcBwE
	 ONB4+e5TGhzJJsxpmIYX9Qf7XdBJLIJV3kl91UfDhuIb89N9h0B4Lxqu+FbtVAgt2s
	 5RpAw36PwQDDCKfBjZK30pQT5KiHRhdHCApqeVyFjYMn7FCEWLj2dp3L8Z0AyGVkst
	 SaRW4cC0CeuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9CCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526639358.31861.9928115072944262019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb8f7ea682e8c018e2b677e90117e64d33cc0163648421acc388e22cbb278e7
Date: Fri, 15 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755266393
