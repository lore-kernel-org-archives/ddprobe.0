Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F4F5012A6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789662634; cv=none; b=Wcpa0ezT7W8IvTuwazZXCXdJ/x1td0Je/RwgvUErFxE/mEpagP7eMMynrRAjzL4fA5F8mNkY0sNoZ/B/Bka2Cz/n6ITCYk3cBmTWon+NU0TcNe6udggfVyGuPRRw6Q0ISXR3rI7FEbsoUjpYKshasbaSB/zMJlc3vwle+FdLcf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789662634; c=relaxed/simple;
	bh=Gh9whXCyx175uPuRj99PogTWY+sMOr2VYmUA/nKjYzU=;
	h=To:Subject:From:Message-Id:Date; b=g0pKjjPh1AiDYSTmuRRsBh3DzYYFbpl8ARlV4rg8739QjFCt/ShAHrJOeyec4ZUNebhw711UNLd/n8W5CW59ZOrHnbVUw8SkYbS+4MknRKyJZAepsAHK4NWUxqv6q3PkYM+IY8gqfpST+wEnyRwEIiryDhKv9XeMj1uBq9jKZCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj+pzIAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj+pzIAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBEBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789662633;
	bh=Gh9whXCyx175uPuRj99PogTWY+sMOr2VYmUA/nKjYzU=;
	h=To:Subject:From:Date:From;
	b=nj+pzIAvJpztGrRqu0rMilPiEOqH6ZlJmOMso8RUi+uoC68z+Vb0MToNnx+YS5KB1
	 6v0gpQ7jMHFEFYiNjJCEsB3nE6z+UmNsp6wGbSpsjyhsM+5ZlGa8FL8jcAN6caMulf
	 7creZMv0965HiTfv7WJn+TxYAeX1NzkdG2e2utFJHt0Z4YebfJO6R/83LgMEb07YTG
	 vqamsWSoOpErYD+G7k2Uu5YmCIaEg19brNz+U+VJA9OQcA5TdLIAexZhfij9t6vtTE
	 j11Cva2mzQGcwI0LuADh+MMy/TdYHHfDnivS+pGJDxyQEuntUo9gkdRMMiEQJaduKS
	 5YCMm4qY15amw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BE3C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966263372.7412.10970828460565785699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d054e006c458547b6f906b6913d75f0e3ce47064ed5cf40210db613ae891a588
Date: Thu, 17 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789662633
