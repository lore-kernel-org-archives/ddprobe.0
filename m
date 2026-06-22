Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4066933B6CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782160594; cv=none; b=sk0O0l7TqKthWjYu1/8yTiGL50AlfhILRUagyWSW1ru8hpHhLBDU9PsUif5RSqx2HuuXjjPr87MzspZW2A45K9M+EMFh4SgIFb6kpfk67KWkhdr7UwQ0i11y23rOFZ00ckZxqaQBaSHCUKsH4oGJobdOIq1qFSu1qtAO7Na4PmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782160594; c=relaxed/simple;
	bh=x1qnHkjx5kcpEL0jJx6wFSh3STUFNfy0E9Q6hyEgpdU=;
	h=To:Subject:From:Message-Id:Date; b=p/ddW6tBbMO+OeSXld/Il4/WCOkqInX5ApsLhdTVW8xvAHxePKI2quDjCZjwnLy8DB3aNgob9TzwHs4lVgErVfEw55RmMZgU+OqWbd0f2dID6I4cW4E6cJNB5ZvwxvgDfTkugjRhKencefzwc7iLs2Oik5Yhdm2xnQIh5s7r0t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q11VnS9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q11VnS9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA92DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782160593;
	bh=x1qnHkjx5kcpEL0jJx6wFSh3STUFNfy0E9Q6hyEgpdU=;
	h=To:Subject:From:Date:From;
	b=q11VnS9ClnIf9C4qimZ52RwNz2s9iP9cvgvjf0L6ihaoUGNwO6sYV1UHFSGsul+/j
	 APHDx7dN63nfttbY+CqCoFxP5hEJfGsCaUy+P+nB7SFwXfhYRLOCGEhecGQgWscdVx
	 T4hkaqDwzF/9uN7u/731/p8TIIszrYQD4lFWqcbifECbXD4GsN7ig7DjyJbkZ+Pftb
	 I2lnVo3/MAq29DIJIFnZ2U+ImifMInhYWb+b5JcdgR/PlUVSooD5M7nBcUot8fu6rk
	 7GkdrspWXwYzF0E+MPkT8aOep9SFiMYgfl6Oe7nSyXAfyoOQFby1cqQPE5P57b1pOg
	 hQ5DiVQaiEHag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE74CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216059368.4192.4409191972742249062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8167fd29082dde0a45588dda763c6dbe0ffc34a5ac129cd88e5f6f58ccb37119
Date: Mon, 22 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782160593
