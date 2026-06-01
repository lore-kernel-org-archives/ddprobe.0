Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD333B3C06
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780323274; cv=none; b=oG5SK9v6NES2BZjT/YYYBDKzlKJaghfIIO824a3tgxKfmHC71JbowgqC4y0seQLbwHMshTe6jVF8eI640kmI2HSJLLosR4dPvCWd2gOJJuTyZ5UYTUHD4fmAPqrYSsCm/kofHk+0Bu5oaNRMgb8sS19G3C8mRWgB+7Z3DYcP6wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780323274; c=relaxed/simple;
	bh=SKIV+ihyJtdv11YpokitBkeQw2j/nJMJnj6OF5Q/sS8=;
	h=To:Subject:From:Message-Id:Date; b=YKR8QOs47lA3DTT6eMSye3ASciRaewyTVwB7DlUd5r13vU0vsUI7Rp07g9JJ94jx7y7Zhf6tJYzNnOmlBo8ZupkqRwpocgHpA6UtrY7IxGjz70+LfI93XU/Nj6yyZd1YvRfzWSVh74Xbq5S8MYZlAlgmv7lPqxBo9R6rxIg+8n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSovQlqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSovQlqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A90C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780323273;
	bh=SKIV+ihyJtdv11YpokitBkeQw2j/nJMJnj6OF5Q/sS8=;
	h=To:Subject:From:Date:From;
	b=gSovQlqNCcz9pNmAgngStyiFMTFaJioMacFXg8bmvR7OIRIbKIJcy83amTJbeq3+L
	 FRJb0o/jlnzoMrqVvQ8jjVIXuYKqdemppvh7nKZqgafm3+mjTK1ZkAgaJB5GxH4Wu1
	 +BuGMSMI0OPaLK1NNJ9a+WD5lNL1fq0OsjaL1bvara90GDUGH6uEJj2ifDKBpzNkXA
	 /hKy0DZ0MfqRQ+XRwppCkod0qh3CNleRtRmmvSguXdmcFnAjyZSvkOneN6H5/dQNUo
	 FNLvN+K3f2uVxN6yms/lwX7MtVN6s+5XWJm5Z2LnyGoRHt4uxV3O32K8htMgxEyHWi
	 kzBG7eQQB5Q1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD00CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032327369.23147.9771451463212306538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74ad0e27c88ee5a00dd98f7908e8b3c16313eee72136a7a8782429a7bb44d30
Date: Mon, 01 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780323273
