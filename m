Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E09D1CA9E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720254923; cv=none; b=W4GFqAjlRNz9mNISNvD7nUEUFPtF6xMsM8VwBr4cvuRg9L5/kGTNo6oWgf7L7QrxD8gQ9RJk3xiQbmQceauSh8xAMBMJleDdX0WlDpTisNQND+qc6nd07vDLZyJKoH13Q7ft7SvI0OP5LkQ9svfoO9taioUV0PkJVK2DVGsiBs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720254923; c=relaxed/simple;
	bh=jLI1ftdIEciLaFl72mtR2QOz1rgkBuEjcQ+3Gp++ugE=;
	h=To:Subject:From:Message-Id:Date; b=s6nl9ZBi1630GRRuvjetfcnrCRkKwiV/3jG41Y5rpGJ1Q6fn8hXFwZotQyyCbMoBMBuyL78vSpmI3LY3eQDZvAUM55HAwPDfawlIsUhGIVCRPMKKiO/pQxYbmgOOuu1chOjjmcdj0MhKXV5ylCZ7P/R6FYqdcUSksaDBrpupRMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRQYTnTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRQYTnTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE6BC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720254922;
	bh=jLI1ftdIEciLaFl72mtR2QOz1rgkBuEjcQ+3Gp++ugE=;
	h=To:Subject:From:Date:From;
	b=PRQYTnTCvFpoEbV1IhnTr91dK9kEx7zGF0fEqTUE9NM2Z8YxVdBK2cERLB9yLuK8D
	 9CfUHiQraWmZEEC6WJ1xU61atjsYui961/Zpvho74BrxnRAWS9vYPAy/aEg0k8oFCj
	 d6JpsuCJTIYt2Ot3ogBadgtSaUi2EF0bBGfqL/cbe027Ie9aD4+Qy7qXWsdPuxJruy
	 47FdywBzRzoKYnMyWB2kOJyZzDtnwarSnrHxKpR8JNa9EtbsI/2epRYlgzukyrP211
	 Ow7AWvLZIzb2TRsXsY3240Z7lsKaii+2yVh8kkM+OyujpujeZ8nx3Uh/SILwZdiaXr
	 L5DGpfxYVfvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F4BC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025492277.13302.10774317870506764216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2821554388babf5a84fd0131bc9fdc7dbffc94462ead7ad9371a0db56161d3
Date: Sat, 06 Jul 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720254922
