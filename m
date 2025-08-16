Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C9342058
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755335994; cv=none; b=YJaPQ1s7j3CNdgnQ6mghovMmgfpFuVECrOQwRtb+DMMMiMwG4v0z2dzudmpnfKcGf866UDwNGQtjWYbxoXVJbNC1Hg9ZlE89XX2qfKx2KKa7Rs4xoQbDugcYRC4iY8Z3LmnXreTmTQtXxLevU7m7cLpai036NzlANlgKUUu4+y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755335994; c=relaxed/simple;
	bh=2Q3jFtMauKGu6Jk04TE2Q+FHYU58XLwh7ZSxMeLeFcM=;
	h=To:Subject:From:Message-Id:Date; b=B0WCHGU4RZMwM3NcoxorS6gUstpoSaUH+nIy3wcfXz9KBKHOOWP5qnXbV0UpwEwBlH/wAljgGCWx3/b78h6QZePEgW5H4DkWXHEY5FFLOS+wKKRXUneLMzBiRpbMpkzmPd6k3NzDDGj+v6mgR30+z/yNN3r8TWIHMREyfhb3Ezo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM4nNewk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM4nNewk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6410C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755335993;
	bh=2Q3jFtMauKGu6Jk04TE2Q+FHYU58XLwh7ZSxMeLeFcM=;
	h=To:Subject:From:Date:From;
	b=ZM4nNewkMOux30pb3UhflHHesNk/USxuvazcIURDRfaJIDob4hLQDkO6Cno90sKWY
	 ub6r3U7c71hOMMLudQf3NU7KAxQjVgOND6fKQCK+wtfY8rXS5b8jZVecopww2z4AW5
	 40k3S4arBtw2ZGg4p0j07KY29Rv7HAd6ymRqiI40s8f6Sm/Oz39Gly9ECxdj89wLzh
	 au/jGs7AmJFjDpicGPqRXgCzn/qXcZjcdw4XZc50H/y0Ea8stNs3aRm+zmI9R2qrWu
	 7oSzmQH+SVctWsSNOx4VPPY/2iw1v3POFiXQvnaEiGJeyBgu7NaCBjslPrGhtsaz52
	 NT1rxr8mVyz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9585ECA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533599358.8391.14556620484808524379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b3b7604621ea7261cfecbb56baae4e4423dd3c47df7becf3393cfcf3253bdb
Date: Sat, 16 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755335993
