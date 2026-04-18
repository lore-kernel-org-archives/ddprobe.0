Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3642EC54C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776551254; cv=none; b=cWKtihk1v9rWXQTylYwOjMSzqw8bjhYujGHXaOBXgJJ0RAPxnnjCFD2ubj+ybkn9p5kh/fsiiRD8Fv7FflmZ7pPVaxqiuMern+CcqGRcowswnp30bTMglai35GHvHVU74gIwtziAb82kcaaJBOoI0W1zTvjsnGpJtlexfGash+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776551254; c=relaxed/simple;
	bh=3/ZxrtvSPBEslhojYBgmYNdtt7h4/l1GpVsA3Y8mxsw=;
	h=To:Subject:From:Message-Id:Date; b=hOCJb6/McfREwRbn0S69Np0oON8Z04uAtBzZ1T6I6AusX5UvJ6nM/Lhn7lryaxkufajAfpUJkBQhzMJDvpmuMALeXdWMtNy4kJzVpftgrIbHlnmtYceOt1PdWWQjXBfWh24UzeBsVMYpGUAK6dRQgcACs+GibNYY0fDpAvgi0Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnXFcIu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnXFcIu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB03DC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776551253;
	bh=3/ZxrtvSPBEslhojYBgmYNdtt7h4/l1GpVsA3Y8mxsw=;
	h=To:Subject:From:Date:From;
	b=lnXFcIu+cEpmknR7fd1jz3yX844tRflxVbLWTwaXQgM0cF58Zr4l06o0XFxJOdI7c
	 bUA4v7OD21DBQHOBfJ65xcYl6+hSQ0eD9CjfwEtRMe+rt1NoW4ecUI/aSmkW6A4FWc
	 iiTw5wSyGqrg7FqelwC7vKZ48wU96ZDKNWSF2sZQxFGsREKXxqsvnmxZDfwgl98v9I
	 UXet2EOUqFlGWXH/KFeK/ttJUfOTFeSfUQGoSZEBOcX1PbsaxsA3h4WWPmU5412Us4
	 DGUmT8Kh3L0c5KUpCQ0R7AzZUpEfcJEIMJJvSKpVm2UKpkQOtBZ39UcZFkGyPEzUnK
	 dciYR9VLlnX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91F6F99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655125368.23272.15763516347935007051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c51dfc4705fd16d4b889fa4c4aacded82cf06db499a96c8f4b12743bc6b0b96
Date: Sat, 18 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776551253
