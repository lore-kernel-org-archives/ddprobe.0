Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F30618B0F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783263514; cv=none; b=BRGwmIhNsuIDOaxrdFClXyLgnL6ZhIHMK9p7bQou5WUZmUdQec+ECIYHrfBsLZtjUAPf9Xusq17Ys77BDqm1RlkdvyA4RTnb2kp2q5QdlV9YuIdYSAY67fT4JmCSK5trwtqFLMp6e5GPszaRnjHMB7Mm5Bm+WlGyZjZ/iSChgpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783263514; c=relaxed/simple;
	bh=GwlmPf839Dr338jwhi1x6NbI8ymkF1QHru0o52cbbI0=;
	h=To:Subject:From:Message-Id:Date; b=OhAokcuBSnwcnS0c1+4Qe8xuZzQScB4OdsET9UNywV3lC7m8jiN+6CFdnCMMVHHTQEUmjeRZpjxIpicy5r28jWyaqmHF5pyHHcIqixgMTS7G1qWyQZNv2Pj+EPZomq9tK87tAWwBlSIT3yWoAo9hOlS7Yzgc04n7kVPAL1pf2lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um8NcPIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um8NcPIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F9EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783263513;
	bh=GwlmPf839Dr338jwhi1x6NbI8ymkF1QHru0o52cbbI0=;
	h=To:Subject:From:Date:From;
	b=Um8NcPINnwTnVNlSWmpJ88MI0dyzWyxy3bFH3sLNk4VOxzJcOtWYR2+rgRYjfOjNX
	 zEjq99aj+Zzp4pCpUMtxBW5VEE9RONxuUofALySczzYfLPg6b0ExsWHPmy/yLN2pq6
	 wf57Rlm20KU+EowclxHfHdZEIeuGumzQPBr2IdeB0cG3EBBZ7ZyI22ygBna5jupwos
	 t6PIx5TbzglcZuzT5VF7MooanDyVvNHHLfK5xjqNTIICAcXu5dRWoYRydapp+3fSov
	 18/Lhpf3eA4smjl/MoY3ltWhiyJDo1UmaKcTNXA3wG+4/kBqRAaTOMMw1BJkPA3Wcs
	 1soINdtZSr5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F7C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326351368.23955.11008880618770645069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e198bc198cf81015a0e173e9b2a43635181421e979ddf34a4a0a5b001fdea9d1
Date: Sun, 05 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783263513
