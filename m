Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215A2BEFFF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776460054; cv=none; b=aileYQKjEHrd1SQPgO+DuPfJRzX5pqDQnj3lz3nvpjChUu40NdWwyHKlAFfBMUkklqgMCscpdVbYlQUz64CjjdtK+Y4sDgDCt/Qww1YKDObLd/uWrzxK8XF2M1Br6RhBSlG2a4/PQ+FpRlrC4NU7QqBrR+Er8Xx2l2ZybYrKIlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776460054; c=relaxed/simple;
	bh=l/qwIb9t1LPAP5+58/iQZ0G3iLdQVD9CzQbnVO6sFXQ=;
	h=To:Subject:From:Message-Id:Date; b=Fu/FKXxIeA5ev5QNOwrPBdYR1vOOu2V4W2P9UNiuQ/C+qF6dZIDj324huaPA0YOGFtI6a2sM3h9T1+9f0cHIVyDKFoB/+JKIpis8V+572UFl9laYPn7/71QxuEk+8ZspPU4tkuWxwDDQvgU2O24ThozOnSyvoS+65GepKyYCRzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nthiwjie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nthiwjie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00C5C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776460053;
	bh=l/qwIb9t1LPAP5+58/iQZ0G3iLdQVD9CzQbnVO6sFXQ=;
	h=To:Subject:From:Date:From;
	b=nthiwjieDuf7MIR9FSCp6gnsY832xryHWhiu3wFrxUfeKaPDTO5zTF8dzXqSqjxR2
	 QBy4xDqgEIsLQmap2B87gUTDbGHG0ICwiIiuIbUWccZG5Oa+VSJyIEw8wgxdyGM+ko
	 /E3dsyaoqY7KaW3+a/Hn3hAorYGbjbpHc3JhsV0kjypxFvC0n4Hg19ryImt55nO9d0
	 3as8XkT4duFsvewo8aNv7A5O+2ZHYCFSz/GZwyv6FCPS6pycZGHaA40xDVanCCikeY
	 MiomG4ATM+3CgDUF2jd35xs4cApIkZNEh/O8SBtDfc8BQnJ5qHOIperJbnFiH9oaE0
	 bEA8yDvHEpbRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58AF99C63
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646005369.8259.5759940572112613949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4146e01a167ce4d18204ec807f04a3a88d0bb68c5e7abeda367cacbaa79b677
Date: Fri, 17 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776460053
