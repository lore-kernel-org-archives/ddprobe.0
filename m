Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F09D647
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736241954; cv=none; b=A/gfWpWXxxdb3Ai7ocjUGY2DdmmI5dXpZL+hC1bi+iUzuTaTbhYBIimdJBYGvA6YaQ/H1iAg3kkPR6RsYc8ZEmtVMIOw/1J9ELC+35QsMlZyI0nCEDN79wNoIgp4cjKLp7CyQB/cVcHVymdRLdfQg3LT14QFn02W+45STCZE1ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736241954; c=relaxed/simple;
	bh=Or6uGyILJ7z2pF5vy5hUOj5+FZzO3Wv+kRevg+vZEeg=;
	h=To:Subject:From:Message-Id:Date; b=S7EVlxcjcGqFVxbcFUgq3oRsPBA2CdfLm7bAb/L0mICVc/5+jR+cOqB99Ilf0Vvjid5f76uAtcTekoFfjWq82OdaLktDGNK15sey6zUJam7a1uWa6XV5ysFLH2UjDxVP0fe5Vn+v7Bby04/Ev5RuTv4zUbO4FBMdS1ZFLwC6WYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv3NrTQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv3NrTQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07FFC4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736241953;
	bh=Or6uGyILJ7z2pF5vy5hUOj5+FZzO3Wv+kRevg+vZEeg=;
	h=To:Subject:From:Date:From;
	b=Jv3NrTQpnoaU44cqSUDiZwlS1zuvn/gqDd8ePcZe0qOgje/ni6Kfn4RvczeqS0nAH
	 Rgz/qXqJPUKBADg13HQ8WD2vF9VLxuEP6qhgAU70gLAItp+cb1rVghgZiPXWJcYavS
	 np4U/ucx4AzgbpiIlPRdNQZq+v+CFYDv/8CyJEvsZGSbnwDHzFb6qVhJa3ewBDFYXU
	 lkZ7yD+pEhKxeYG4t/OmMSDSJJseXvJgASv7m/LQvieAiotesAquad2t+fhW1INOwK
	 cwkr2OSF/DlaGjCCF9fNJCS5J6MLp9YaVUZ0yqw9iHL67PwmrGjZdd9H/l1ksG/elR
	 81ld9j4Z4CaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACE2E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624195362.29757.13826354652575172167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a35c4d4df531d22932799e7a83f644b93f9f52f3b92e367bf85d9548c1bcdf1
Date: Tue, 07 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736241953
