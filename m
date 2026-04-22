Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240991624DF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776830854; cv=none; b=qR7pf/4HLXZ28lwwq7IX60B2Z6vJj0sGtAv9kiJmGXKlg5eccDGQEM5mgHAWw2pXNPhjBCBefWNrJ4jBOTk7XQv5/5mrD7D3OiEscyKAmJSHj5XBg8cFOSMl9gcG9YdM6qJ8qJXjF49AD5zzOEqyDsI5vSfl3iFG8m4Zwt1shMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776830854; c=relaxed/simple;
	bh=+xe3CkbpbILQRiGKLY47V+Wk4f5/jSAllpNt719CiaU=;
	h=To:Subject:From:Message-Id:Date; b=Uro698cD/91g7hj2NkPRGpxw8os1PrRmMacQoq6H8DG+QhC3VrapEI8VcWMcGA4/dIZ8oAtaGYA41xOPNN1ZpVRYswJQ/fDaO/XHaGj2XH940R9J/IEaDqKi4y0n4kgCVh9t8jQqhQ6zc9U4fjxpJe6NAG5JhRjinZDR0B1Z2+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnfNdiUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnfNdiUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3337C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776830853;
	bh=+xe3CkbpbILQRiGKLY47V+Wk4f5/jSAllpNt719CiaU=;
	h=To:Subject:From:Date:From;
	b=nnfNdiUxE1exNTz7EkEffoz24uUPdwohvGtK2BK/4tEJRR6ha5xmC3v5a6itwehyn
	 O9N1cnqZF2ep02gBBmGr3XNu1JK4oIZbUwRetreTGalGGvG3KBiwdHnrbI1BYS8fyi
	 9dnTxYKT572ZUWMKY/VpYJLd/Q2qs01R0iXT2Tc7+wtxmF+6A+J/ernI6Dcikzfyc2
	 oyJZ32MR3HOYNskbMLAyX2T6x/nwhgcOSKES+YCU+IlpQyj3aJqqbVntToQKWXez5r
	 1JspgYTzBofL2bh/vtoVtYkAQNJI1Q3VobDi2NpKq83lxv2dVG73OY0/D2y5KTqtbA
	 FKo5H9b6zx/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CB5F94CC1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683085368.12910.5161326960967200542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f504329d52672d85121ce53a1f0f8cb67da9488a87c556203e04cd1260dba7a8
Date: Wed, 22 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776830853
