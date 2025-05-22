Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB95847B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747878594; cv=none; b=dPxaDhn8A0BqixgJuV+vLmOf4BJTqnwGKOLHQaWNIAhTHi3s0tjg+iPWLWb1mJmXlJI+EnOWHNbw9V+7MMZ1/rJjLfVrLPP5AwNVFzTm7Uxb3LngT0ORU6UbJQDGGnG8QMixcHgcWUKgGaC+DpkFtAIbwMk3zXFPZm2yrtRnJQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747878594; c=relaxed/simple;
	bh=q+9NkDqemMUEhsxl/EaqolA9D2bfo1tXcVddgazPHkk=;
	h=To:Subject:From:Message-Id:Date; b=SwhkSnS5jm2itX5qQKi2IXk4iyeV8elllJhDjKIwG/JKWVbfH2n9wx3nZXKIqyywmHrsKszdXeWzgc/m196FR/W5hjM/Cg0nDKXFB6v2lpd+VdZ4rItNHEolwaCVFxn8m2/Xz8u6L9+7cT3ED34Woxeoux659LeCU82EUjUjvhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWpzzOBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWpzzOBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73EBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747878593;
	bh=q+9NkDqemMUEhsxl/EaqolA9D2bfo1tXcVddgazPHkk=;
	h=To:Subject:From:Date:From;
	b=IWpzzOBvnza+DejUdtalzLwajMiuAD4+QGBL5/wR/CMdj95ZNvmlFu8pT/lVN0tXo
	 uBVwOeMxe0nJCGJcIQh+ocddxqPFwcAvGg1946OKA1afJc9DrIyBAJy+acW6nWYJ8p
	 etDsF1Wq/sMr3FQxSMLHt+qm7ypIg9D5XC2EMl1UcscDZPaGeP9JUDewSq2s2UyLxF
	 buzUOo1gi7JAjcZRYP75DFZHAjWCSUZTCe2cMv2QfJEwFabBr57xS9tYUvRUO7Zo/r
	 xp/KDy6eEi2eZpeBv/FIsKBg9bJPz/AZsCX8uY2VytyuYR6cQNoI0QUpmw0PRI5vxS
	 QhghCCfDnWmag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924BBC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787859357.32581.3261602520247689907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95db5f40f0ec0fe8c64801a609f6e3ae33fb6bcad1a255728dfcfef83f195562
Date: Thu, 22 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747878593
