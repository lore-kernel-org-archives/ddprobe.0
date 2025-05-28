Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28435223DF4
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748413194; cv=none; b=ttWlOnuMmOLvf28U9D7i0kifCZgwRrWc6OSYQE+sIbgLL5HPRORQWETzPR+2pE3zk7SI/tua+UOLpwnOjACGSpYXV8O7n5HX6YWgRgcY/omZ0Ks5smRLcxkrhyOr63ymmZtoLKBp95WZVlNvfyhLshzIrmv94ciJE5K8foF21HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748413194; c=relaxed/simple;
	bh=gX5/QxF5Kv4wuPNH22bH/9rnaGwGy9JJ4zHW2sadVO0=;
	h=To:Subject:From:Message-Id:Date; b=FVvLfNbvLOy5MCy6OWQbHtAHI0HYA0skxveHdkIdIUcuRc2ueCKhZ4JDGOoedtV2KsPEcfW83tL94CXSJmqHsQXl80PVglakcER6Fvt14evgE2Q2GeLCAYN9Jch4xk/o+ejW8rbfvF3uh9kimqkllzz9PZ8uUWwZXwNRYwFyTJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIx8iLwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIx8iLwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748413193;
	bh=gX5/QxF5Kv4wuPNH22bH/9rnaGwGy9JJ4zHW2sadVO0=;
	h=To:Subject:From:Date:From;
	b=FIx8iLwHE+jk3m9SaJyerGUXp39hE2y5SrMqAYZs/LapP0cqeFVeB8lAw4H+nWHVU
	 5EiPIDY/gHNrGooAzh61xF+hkmryqefSGiWXFCpcLGVzeUzdosielm7JS9g3igax0M
	 Jhcn/z2qp++Ki472I58p2m+1EOlxr7G7XqrwZn1vBo7iKRuAsuaYPheHhsnbsohGEh
	 3rvT5TyJaumqbJOhV4aQVL1VtWhDu06OUSEWPP6/HGgQGtVnuk0zNj9+pZzKpRgFl0
	 mzL7pDc1UYR0DqI0Gnd2qcuoS0xByfTarzj/TeBc6fEjvQD9PDTEhlLMwKty4GrWUt
	 XRYrqwbLgdnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90206C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841319358.4020.8885098671015351761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b606b8b3b68f5b7847d3f40a5bcf44b143d459bc25fe3774b9c541e9ee97211
Date: Wed, 28 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748413193
