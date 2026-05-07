Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256843E714F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778149654; cv=none; b=MoYMy0LALWQJ2JGSuuojBP7s2LFNYLNs3owvCB3qcZv3EoPT+SeH3M+8nSmSJ5F6oDy82ULCoiuFx2lZx60QD17oxZRPrNnT1aRXtztGXoOHK4Xo/MWDRP4oERXSBvYStw+it21E1kbC9utQFutvHd/RSZqD2ovePnFJ843dNFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778149654; c=relaxed/simple;
	bh=AIczP+TAeCCJWW4NX3ZWwfEFUJVh1upU6RyZV1NzF94=;
	h=To:Subject:From:Message-Id:Date; b=qWxsPBSyg8ScFrRKKHbpTG40o3a74Uo16UbD3HPpVXhTZZC1s3ipD7ibg6fVqtYRChNFoJSo7rpeQeTEvjRJm/hOcC5/ihbcA0etJ/t+Sl8zp7LC7CBaa6YixX3H8f/DiaYhsr7BeTh1wiOuFC0GaNv65BgJ0Pqh4VqS2jRykwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eychimLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eychimLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9421C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778149653;
	bh=AIczP+TAeCCJWW4NX3ZWwfEFUJVh1upU6RyZV1NzF94=;
	h=To:Subject:From:Date:From;
	b=eychimLJlz1XZsySVHvFc3545XnKZVQC8ji8kvvFR99CbyQOOlCihkN3Fuarp0kKD
	 jSshfwnqyXJUuvQaZDQ3Engys4yQCCFIwk4mwjGXlNTztPkuEhUA/s1fBjyg8FL0AF
	 +fgqxIz4lX96iGB+FLDTIaEFe7kPQ+g94TBxeH7hutpffd87GmwKWaUFZ79oGlRcjV
	 a+dRtvg2KkbdTMwQviZpFelydlkHAzB2hcGfgLBI3El1SwMy/Qi8mBDoGyo45/LiEK
	 MVlZqyAJvgYAUd6DHgBP/qxuYSUmwJHGNI1SrTLNXcHobuUvbbtpMgW91EadWV0YWF
	 TWDH+4z2te2Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF98CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814965368.14215.4224547336031925432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f8ed4738a3e2a645664be6fdcae409e62a54795dcc0ba3cbad444a4850cef6
Date: Thu, 07 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778149653
