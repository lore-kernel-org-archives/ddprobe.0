Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A221D5AB5
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747946994; cv=none; b=qd11SstmGFG7Vx0OD3VJ9DFIwuAF0LnU7CXxao5sLaaRHrz6h/dkJJi+x0X0cw2QL1GWDuttZXAVslnX6lKsrqKMkUSZFGAtrsOWAJpB8IqiJbe3l2MnQ9jH1ThbPX4GnUzu3xr3+aQwZOEQ2c5efVp048dxx8QLebCVER/yC7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747946994; c=relaxed/simple;
	bh=Hg08i06dQPELGcjfgSDbjEStBLqz7A2t9s7Kotah3pM=;
	h=To:Subject:From:Message-Id:Date; b=m4M+kWYY6feZiUpyWYmBnEAP4cSCYx+4IysFbvrFtHlQWqs6E0m9lD4fT8/s6epAj0A5T8XVjp03Cwy9z6Ck7I7NE1Ft+shcnj7M2uHhggauvIhchgwSdU5TsRteHo7FwwCSqSV5oN8wi0yq2k5JZvBJyQ0GIVei5SYKmq470co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfQqIOO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfQqIOO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE6C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747946993;
	bh=Hg08i06dQPELGcjfgSDbjEStBLqz7A2t9s7Kotah3pM=;
	h=To:Subject:From:Date:From;
	b=jfQqIOO7CegJ/uyswBgkrzSr88CFppggIhPiMx1almHnpoVIiFt9h40gtLefHNkUt
	 nURZwbDbuaEJlKHNlO6n7IPdzlBG4A7H9Jd+8u0FNYId8FZnVb7Wtmm55/JyuR8+zA
	 momdtMdu8r3sDimYOYM/bP/qDvOCydj38Ci7rjm/5MffOYrd2rbNw1JUQjtuQC31qI
	 ZUICIhhgVeBCbtlcVkTKxKL0qsAF2hPwVLwYbuVHBiLTDMW7zaU5E/uPJEYHA5+rCh
	 0aYy5Gc54KdexNeymWmpPNRRYXmLPD7L+8jKFMJHOBcwwTrF1R1ze62GuXDmQUzO5s
	 H9ZLzxZEZ70WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3ACC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794699357.18244.12193409531419158270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d649a73b322bed5cfbbda7e8d3fa10d5a9bfbb3ebc9f1b74e00b594a056da6
Date: Thu, 22 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747946993
