Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF9136B0D
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724988954; cv=none; b=HOGF7mJiBtSv/vlmA+ilj2Bl56733HIObQuGgY+f7ls6S133bO4BuePAJYcLWDQcR69N0Cmivow4kGq+GrUhn39cTTmep/psBFPlVLpeCIQ1sLVqEE/PHCb0t/8EFTmyhHDRom1pqr9z4/r1sKNnC69k2Gehd6H9kIjNDUwKyQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724988954; c=relaxed/simple;
	bh=qlWoeuOFXqf7kFEMieg+T9wjyfVxNU79NEiN49HKenA=;
	h=To:Subject:From:Message-Id:Date; b=FJE7WS0Fh2puPAaR+ptO2irezqamh8OADDJmO841levSvlO6dKCYMZtEOc3ShI0GVmUXf3xPgE/EHavfnxg9ODv6K4ct/u2N30jrIJ/9u6S5gMl4hk7WB/t7iPic1V2dKalPFbVQXbPZduMptAJhvluITRMQYYySLX6UQQiCcqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8wskrg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8wskrg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF8FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724988953;
	bh=qlWoeuOFXqf7kFEMieg+T9wjyfVxNU79NEiN49HKenA=;
	h=To:Subject:From:Date:From;
	b=r8wskrg8cnOxWHhc/4kD5my1HuULnms46dtqR6+jcoHmYqmQLrgIALB6ann1nN0hA
	 6QFbEHWIFiTPojgZttTwzL6G1ObZFGC4fLkjYV3m6e69qLUSeNj+421vX7+ixa5Ihu
	 avvOpdtOPB9BTUDeFKbqKS1KopSj0H+l/NC1rcAARWpZR6fUNRu4U/qz//rNPyn6K8
	 XZtkiZ7cqplXqTh/Iw7e05ufTFyQPWzjEYQs0LucemFEvPbG5aPKKDGYr37Z5RG4Gs
	 YsV42zvKeLvL5RpUZp2lWC5vpzCrzz0iAHaGk+PwFO7ey8wOZcQSnQpFkKvX7hPnaD
	 8kaI9sDy1P+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961B5CA0ED2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498895360.10851.856243210881195828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804c2d76112d51b855b8a87a55c3a2ca38c043f5dfca66f2cb018c8340ac0249
Date: Fri, 30 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724988953
