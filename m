Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347DD1D63CA
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733936154; cv=none; b=bNdUY8axeOpUa1hPo4NDBI5ZxkJMOGOsxdoR0deMorvojMMTnju56T68OIS+307MWQ3e0LWI4Dx9jLS3krx2cJKYmjXnmU/uh5sb3aChG5VxSe8o/Ad6hi7W+qAxFp3G1wgTum4c31VZ1v0iKkQtLBZNO+sdzDR5lsJBnaEZQk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733936154; c=relaxed/simple;
	bh=uzhNPHHA4ajD2OKT8gQe7RDR/N61u9eRCIkr5gVdd6U=;
	h=To:Subject:From:Message-Id:Date; b=pENa/0GzG5VFB4+8NrALOt7OqYNna1J3FaKnpF3XSwr/xTcHeBhKAJg7B71pSjbdUVinoNAMcEeglneITVcSsBJCvOI2EYMyzJt9i6stUaRgoMFVRkNVD/xTDbbn5iF63RsaGut22iMEugHe9sA75JbtjLzqnnHprtZMTYmt0lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUtrGyfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUtrGyfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2291C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733936153;
	bh=uzhNPHHA4ajD2OKT8gQe7RDR/N61u9eRCIkr5gVdd6U=;
	h=To:Subject:From:Date:From;
	b=IUtrGyfnY+7rAwhTf3m+KYyICoDfH0UsI7r7ik8vaYZxf+mykh1Zbz0hP3etpn7jf
	 gTFsPOeAJbJC5drtvCOjXc4q2qjcIGdvolcbkCiN4B1mzsmpzXKzlIzA/sEawSGbpU
	 Rh4t4VrE6jZp91mHFsPUsv8ft4k3Jub/sZZvX53mzheZBSAgVaXTuCukndQPmCgotF
	 S9T3ZSkzKBNOhqaCX9vWith8dg1w8QmSc8D3DeyISvd0lDaCrTClzd6mlPIhp863nM
	 x+9/MikOhQebuxxEYlboA1nOQtwDF555s3PvwFb+FG0tnfkOGqpzdsVniutwh18f3M
	 sIIYcjZmcFnZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BCEE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393615364.19125.1998756932286785064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d84cad179f22e4189c0b99e2a72f338ca044ab5bc4e538c80e6307e67771fe
Date: Wed, 11 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733936153
