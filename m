Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355A9256C61
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741376334; cv=none; b=KiWgZS/l3mzdmsEsWqtO4PYCtMUXwI3x8SbsBh5x5x+gvQPYCOPJXBhf4HCEpLFigLymyoWhBHKcliXx0Zlj4LgRw0mearXv/LVd6Ckc25NWHN+BhvIavqvC4uYou6Hwb6900srrzKOeI5Gk8eCedYvXFWUSheUEg2AeRFydwwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741376334; c=relaxed/simple;
	bh=nFuZUmm7SQTyePwQX32Jlqp9MMZlbdB0v6/p3N5Mt1Y=;
	h=To:Subject:From:Message-Id:Date; b=OH25tSwTtqc+kmnsjsmKwQ6moBg9zS+UpLOMy2vaK+Hx8WJIjeaEUjK6KrcQ5zTURtu2AA0LfDecefyxKl+cVC1yjilDVF/HM9AZi3XceNn0L6VNGPgPizO7Il//cwbNNz10/B5sL1OnNQomOHljnP2G7HAGCfBrb+5EoIg+6jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjB8FzXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjB8FzXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C3FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741376333;
	bh=nFuZUmm7SQTyePwQX32Jlqp9MMZlbdB0v6/p3N5Mt1Y=;
	h=To:Subject:From:Date:From;
	b=KjB8FzXDWP4Wt+3VEUu+LH2grupyj47ooYwiAQ3LjPfs1/YUEWsHO60X//qlzTAcu
	 7fZJS/G+5Hpt+lVJMvyLR+tN0sS53Q2y3L0SPrKjmeH5MR3f/j/Brq5CVIikfF5Yfq
	 yhmRNm8cF/3G2r6LynsXY4F+Qvw1fU6/T6+GDY6lW66oUfh2n4dC+ax08jBKcOYE54
	 EikEQVQW9YMh5G9vW2qGy0sm2cY0cHjgmmXqVY1jNP3BYniatuO3fQFxshgB7Jo3n3
	 TwXn0YjGHavE5vjQszqxWEDHipQfIaUfQvNglXTJTRGQ55TKIu4ATOAWuSGduIEbN2
	 AxoD79ZKEfWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF2C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137633360.21390.1120637459660196668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f000dd4fe8043b8039c9cf48fd6b4979dbbfe7ec13f34a23ec9073d9fbeb493
Date: Fri, 07 Mar 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741376333
