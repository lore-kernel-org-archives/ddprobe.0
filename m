Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E24D38837B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776284854; cv=none; b=QW8GTCdgKeUdLCj0PdImOlwwK6SLandNK4sZJhOfHMkWlTVVtof72eluhdhP0hf7L4l71ASQFUXVkIhArfWlsWg4o4nD5dm9Z1bh7MuITqmZ5hiQsCTdKLGZfoL81ay79AeAsbJO+MK3Ya9KU81LDLPE2J+WVRCP9LNQnCnsCTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776284854; c=relaxed/simple;
	bh=mNVjLd7u+TpKnf4/aYM+CieqX2yoWXtIhfWyjDps3ek=;
	h=To:Subject:From:Message-Id:Date; b=M/Hz8veJ0+fNRZFizjwi40xTSJxJTZQLvF26zbJGvoXc2Oant0681qN6lnbKc0A6TVUSRc2XRmRZf2CxFRejgeHjpNwqawSjNigqABoFSMwC4q11bjGAB3YKu3vhWhF0TdD4t11M0zmuHUWSsPVcNF9HLAGAs2N5LxtgN/0LcwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz009npg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz009npg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48B0C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776284853;
	bh=mNVjLd7u+TpKnf4/aYM+CieqX2yoWXtIhfWyjDps3ek=;
	h=To:Subject:From:Date:From;
	b=Cz009npg3ix7K3d2BvJaAYPQHl3twaX+6UElDmXg+y6kktjv2O7QLVeM/9v0nK7bn
	 qpWYKTEZCyTwkyM8kFjD+EJXRPFK+pZFLqJThC0Y9451zTsdSCDiZJV+VoAETSI5W4
	 ui/jgvtjVzq5tDQ28vNWq2IFhytRSo5Abj4bui1gvMVO5thk4uboVC6u0LiqGSfbVf
	 5bToGCQnzWVpZuPxJ+BYp8eXLk0X/pRXlpyWKIXo1fYmF1PoKtoJ4VFOyikTgU+8WR
	 CIiT5xShCRe9Lo85hQIQYZPIXGP9hiKL5zCMuMFyDpzEgF9eVUEfG1Va1WuNO+D5L5
	 wdM7wZwoeYaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B1BF428E0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628485368.8333.3596565436907007534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01dfb64c7a3d1f39ff5db0c5455a4065c151982f9e890bc57640fe89ebb57e7a
Date: Wed, 15 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776284853
