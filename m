Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6BC233939
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783046314; cv=none; b=pPlzMGIkV5FoQJQS0cO2PJUkncZ3zHHSes29ueQh/h5y6/I4XMw6S/pJU2ARrocv52P47qQR/d+kChIsRAusYADuehGHhBxUJljWKIwbOaHI83fwbKYAPVLbfc4CXhqD1OlRwC6AjviIaLNbiCoH/GoQRkT8+HK45P3wwUKRee4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783046314; c=relaxed/simple;
	bh=7DCxyvxFYflhN9PDbBGUPAsHLse8zufN7vKiW8Qywgk=;
	h=To:Subject:From:Message-Id:Date; b=qxrwyps1qiDOjjo3oBN+bvBFQVXhJ9XY3D8ItK24v+15M10xQZuYfS+ZPawZnPf5HsihrAoAp7O0DpTxHVgl7ROATmgWb7Qz3yGF7wR56md5kDIdbDsjTt156RnrrtSgL74U13Wq5adR3YZUGFsAVQ6IDZzZ4hVzxfpxGhASaEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bS4STKv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS4STKv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB562C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783046313;
	bh=7DCxyvxFYflhN9PDbBGUPAsHLse8zufN7vKiW8Qywgk=;
	h=To:Subject:From:Date:From;
	b=bS4STKv7omMt4gec9US/pS3QBVY6EKh2fqCDjMbCMwigIvtwB9JW+1Fru0EuOqbp9
	 Po7OvPgUL8gPBYB9IW8LIKE8T0QMEch+113BZ4iJjE1MqycPjND571nMmv8mlUMPTp
	 gUYNaMEXQW6vtnYh6HoS9Y8vaQYGjeEBRCteuqfE9aCSMn9driFZZIjzyjnEMgM2fU
	 dNtqsJqvrklYaj784SIr1hg/Qjkj2OgaEEBIf+nHJ0RAoGguz+U3dCINd1mhTQkFj3
	 orFKekKPznUGnI1GnZNhaa6OCBclrHBzwrIr9IPrLX6BmrI8VNuBy5vcgRYGqGyD70
	 81V3PPGjKsmxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA4C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304631368.16460.9019119879225081239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b3ee7f57dcd6cbaf0a78ae8180134a726dbfb29d57f4c2b0465c7bdef362a6
Date: Fri, 03 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783046313
