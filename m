Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1431D5147
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770936294; cv=none; b=sZYGZZZ+Mt0V0qzphQ69yrc8PgwQtDNWdUiaJ06K5HK60S2suYBjWILh1x0sy11PcsjZzI8LTW+UJzE/4U8dVpLs+vAMFzXwL+ZBjlONM7qHF1EuYsXEQnG/qWAtBqrPWpP9RIWG/GOZpoLKZ9R7QnCaUSu8tC5oHj8A5b8e+UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770936294; c=relaxed/simple;
	bh=+Somk8Bgqv0j66pQp+roXJpl4e1KWLo98vZbT/bsqiA=;
	h=To:Subject:From:Message-Id:Date; b=rRWVoKEGIItiNvCTy9ctYwNoxabiOHrnGfYmbq1bevLhtTZ/T+6XCVOt0qSHynXIzd6cHg/rjhVxBeH83zb5td1KdWyrqamDmS0maIATT3RL9RlSTpGB9toaOVXlHcsfeyEI4eS47mj5UribTjJ1ZwvJKJWL+I5AcjlcW8vzX74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDAqwJj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDAqwJj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4909C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770936293;
	bh=+Somk8Bgqv0j66pQp+roXJpl4e1KWLo98vZbT/bsqiA=;
	h=To:Subject:From:Date:From;
	b=WDAqwJj1mwK8lnNrcSTYsWCph0i5+IQh0n9/dWTv0Q60ccIOOJdpgCGWyjJk89UD0
	 ildZprJem6ACG92bU4k/xMg5p8wbf84ig7n5uFjwI1DI1Z25FCN7sVyPrsWprH8HFX
	 9t+MlRpb0JrP5EuaJcFXtQ6gfOaLfB9MDHG+Ir9V2iCHLw5++z+G+kUQxqmQHP2hJe
	 KkL+l2WC/dTsJ3dPXi/0O0O0hbG/Qh23cUafeG+51nEUGN4HhYzRHti95R4gZaMjvd
	 ZEHZ4xEhuT5MLfqZIWvydg0oxWVIidintIHxEgNHRyW6ANQe1CzcPZ4s0+U3HBF7Dz
	 s4fTAQtOLn6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE7AEEA86B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093629362.17928.12668866525025846467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6232042fc488be996bcd942fa18cfa352467af1a2fe233d06a802691fff9186d
Date: Thu, 12 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770936293
