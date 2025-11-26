Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1AF221DB6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764177174; cv=none; b=Z/SNIDE+gPRsC8tJ5AoVzzR9tssH8Lj4vIcv5+/cukzzbksXA07eThxVg/lLSUQ38wJJfB90rjNLfbCcnp0iqoNE6WnaLe7HYUWI13VAVs5IBfACI/tz20pqrCJg9ykcffdPuq4izhVQOXaBEe2orZ8ZLfPTzNzy7JLkBKwCGtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764177174; c=relaxed/simple;
	bh=/t4M+ZJqd/hec49iTzb4XRSzlVlfkOJT7ps75dl5sUY=;
	h=To:Subject:From:Message-Id:Date; b=tJ5EB9ggUMyWQSC80HnnhjCPhd/DG4hz0swMEgEfuExxiNkwa/IhBDklFQQb4B7DGt4RBH3jS9goMZtFzHsTL5omDg4zN6D/vkVTsgL/vhiwOT8OP/Fy8Qv0anc2fqosH3NYyGPHA89S+er6K+Kxd3NBLDpP9fHojkqZNPJVNPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ucp90sUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ucp90sUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E09C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764177173;
	bh=/t4M+ZJqd/hec49iTzb4XRSzlVlfkOJT7ps75dl5sUY=;
	h=To:Subject:From:Date:From;
	b=Ucp90sUkaFAxjb9nJNUl+Y47PZ4ZlwdlcbpYU2ErcHew+tRmUtYsbGmPB2zO5sr05
	 qXzAFV93H0adepEX40tzCuuvgCFAYsSDMaUiuOp2ckIxVxES/08Ppc+mSa9C6dIjhp
	 jKS2IEwIk4JaC4hj0xNnL1wuGyuX3VhmXSaV7SBWeRl8W26XHEGW1RGTpRjYTtZLx/
	 mkR4+PbC3LaTbb8hEZdUmzVMNXr4ijFT8Bd5iXyfHI103zi0v2hc9pDDDJ1xAnOKGq
	 WGglZR7L8USWRs97ZqRFs2AMOXlK0K2XgDAyqGlrwxSODCEYgv5cSIbSyD7KE5uuOh
	 prN4O2XR4Et4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBFD1039B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417717359.7375.952845717054141944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26a55a0be19179832ce7ea8a9a2c7bb88f68aed2437df0d263a76fa4216356e
Date: Wed, 26 Nov 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764177173
