Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235C740DFDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777411054; cv=none; b=iYwrP/9dddgPVO0SS+AzNLQBDpXDT555l5oTMFS+KmTEIO4eQU8VRPzJTOo0hU+ja+WIptWQ92Hod1XPFN0zdzZVYlrVIk4OOtIaTG7Nh6STmUPY40lU/J9hjBh+WJFovnJyGD8OOgc8/pL4xL4a4/39kJ+2Qqm5dSMZvW5sczk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777411054; c=relaxed/simple;
	bh=sdgCflxVQIIyO0YFcfPms+ppf7mJBxEd6dh1vt22MS8=;
	h=To:Subject:From:Message-Id:Date; b=WdhG4HnZ3oH5b9PwSSRiQz1wKJoTMgf55pYc6OeDmnk8Zjsw+O71nXo3Fqe/PUMXN9RQ0YMk04v/msB6HTzXoGFWXrIZvY5US2ETATF+axX8FVcArr7h1i4J317azwFGaeFS2lmCYattlI3jmnaMLBJCf0iXBWArOaf39AAoHwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb+VSl07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb+VSl07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE022C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777411053;
	bh=sdgCflxVQIIyO0YFcfPms+ppf7mJBxEd6dh1vt22MS8=;
	h=To:Subject:From:Date:From;
	b=cb+VSl07c0FElapQiIJgV2364wdI6lsDVA7trZ0Qpd1c21mnH9p16v/LtbCQeVTkC
	 Ei5hV9kC0eW9yPhD3vmxtnFd5R/7bWX+uSe3M8iM2M2ExchVbmsr3KtrJuI3ltmRLj
	 2NSdsJyk1nU0oWPdPeFVTSi21I9/dLptm327s7Bi4aJRfzN69BOEDyxeRrg3ZrdfAt
	 3KW109EPC0Hf8WN0fT0mzzFe/F7T42R8GIOApMbJ7OuoOSyd1grx1m5wNw/sHsQeBp
	 SW2JWi/0TBBPRCtQ7agel44ucYWM5nt76dxhDEgLqUjNKrg20ue0xfif3qbtVlq/Dc
	 xzz1yGdEU3+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6A1FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741105368.28880.4189791034976138748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95719364be3d57cfedb9baf3fcad365d5af8d290c31e10afa8900a2df289e5b3
Date: Tue, 28 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777411053
