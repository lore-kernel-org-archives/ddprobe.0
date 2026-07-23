Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233B036B919
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784780375; cv=none; b=pPKeDnYXcswR82mDuUW5gDYPMWstAprX2l/h9CCYgcfQrCrddY0mhYbbmK8LtQUnP0hRydCNTATt9OC2gjhzMGO9me60mNRMUFsJZyCgrIi9wAfyTBMC0EKDaQ1IIuX2x0dFRScNg4XpGpmPsabEEbCBTsBd7W0ytiUyLfLgAJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784780375; c=relaxed/simple;
	bh=mxwF9aWbzRoqdngByRVrtbhSU9e6QlW1c0RnRUeS+nI=;
	h=To:Subject:From:Message-Id:Date; b=rnHsNeMYkcmm0/4JARyg/hc1VtahPC+dVdBUSeyNGKqBoT/laY9WyKaDPW6lEBD7ZE9XUmf2dKZqZ3tgF1j2dRtxAn8XLLgTewjSTqmFyewQHGAg5bgbvtXN9l2yTg/cZWOhV7/FcmDozNszWFe8y/AW42eNDkjrsuNSznDErnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msKeBKT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msKeBKT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8180C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784780373;
	bh=mxwF9aWbzRoqdngByRVrtbhSU9e6QlW1c0RnRUeS+nI=;
	h=To:Subject:From:Date:From;
	b=msKeBKT4yJ0aagDH8+Y43wmn7YBco28hq7ju1DS701feGIw1FU9/o8agaSMI4Z/Jv
	 cB61mWgWI0su6sFs/+gbn1sYKcQT+VxRqPGWvLRc79Z7EYp/zZFfRRsMpPQG//PWOT
	 J+v20Wb2Ff8IExLnjLjwilegjx1JxfcntL9+N+w6mhNRCcPKKCSm74jxNSUShKi3El
	 lFV0CyG5CPH6V6Mjw68N6R0NSDmrdCstDKhSCvx39MUw1nduoR/5g0xkXgQjpxy8Zx
	 tzn3wS8gJnI7s4F+qbBvGGtVdpHeRAfLk5aWdQ3lD/Y+RbFP6pj7aj5OQBlycqkygO
	 glVipt2jq0BmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5F0C4452B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478037377.27074.8231495484281486096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0120c71744040579da9f33905c0d6fa4c70450674aeb2b2dc763b68d920e99f6
Date: Thu, 23 Jul 2026 04:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784780373
