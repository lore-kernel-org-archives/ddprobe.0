Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140073043CF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776169654; cv=none; b=kT4482toMhGg0en93i/Ez/FPL/2IuzK+rhVwsBGN/ezfnGID+zAt98m9z6c5ra8NhtnUQ8dNqYxq2xYZLuh8vCuMmDetgUsnAWDrSlwqj2Wa+Ejb1dX0B45dgLRXAHgWy3/c0OfTKQxHNGXG7mQPXFWrWLjKJGPdnDRsrVO+Voc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776169654; c=relaxed/simple;
	bh=nAwgxYqdPC9XsiIBToZid+6gcwkDSBnMJsaHMxrl0L8=;
	h=To:Subject:From:Message-Id:Date; b=fYpXOOH1qpPBi+i0SenvSnz3L4bGyuuVUfFpodeTpsija0jKQYuAwbHGZabqngacdAFRK7TPa7uAun7GOBpVaGMtNPzT2/o1PmnaGcY/Q/eHI5kRXD4E/8vwJPULOxs3/QEC4rgqxO1RcuYl9VT87C4LkKDugLlOdmHmWpXZBCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKDaoMNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKDaoMNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B655FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776169653;
	bh=nAwgxYqdPC9XsiIBToZid+6gcwkDSBnMJsaHMxrl0L8=;
	h=To:Subject:From:Date:From;
	b=EKDaoMNUepxVbhvONy8rkMWCkQ9hIEDDe+g+SG4CRhUemJYra4dQreYdkC4RoJd41
	 t1kBY926zHr5ZDf1PanM0OscO1RCx6XIS385DXFqQaQgtAWD7djHHDCFn1WXebzDwa
	 1/0n9odPwlNxVKnsZ+Jk5wGq4DhZ9/++NoUuEuHly5CuKVT49yyK/kfZxs4lCv7Ew3
	 E4a/RzjJnLH7b07dELwYG/Q2m/5n6+6LEEQrN5Y7VLJpyxY2Qa1T5L6/AJQrlZhwss
	 Lria9ApxCBEvldfJ0MRc3NbiDVtBnzFONeMyD54xeAUEb3cWiVgT2CS07zJ4Oy5UhO
	 ul+pbFia3YLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CEFF9D0CB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616965368.27911.7060807260546176103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947c693c7828cb9e97ed56789e03bb95f59dd6950f936711ee0221570da84c79
Date: Tue, 14 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776169653
