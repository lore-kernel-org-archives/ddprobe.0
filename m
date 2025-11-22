Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ACA3207
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763855514; cv=none; b=XlrCn0aCTt/NZdYyz0Sf4qR2blVqRgfSNzwELIEr9oWUcsGjJWxDJDQGfWSwMVm1Nq4JO5QJi4qLfi8qZ+UTy9GI23pGXihnIqCq9Hpt6OKsj1a0xN60z/Vg3OkMtyAzfHToqDfMlzj4HaQJly7tbKmKZUB0Vu7fl5xo3jHczoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763855514; c=relaxed/simple;
	bh=F1k34IV1TKLUxgTRv1QkbrE8tIEjbZsDbEVm6JQAjVs=;
	h=To:Subject:From:Message-Id:Date; b=dopsIcZkMRAHd0mPjtS4YqiOH4g+OjuXDTN6YMUT3cZ2MeZ+y0JWFwkUKy7F3XlkNCvqmCSwFZ5EzqOccTFD87C9bNz/6+5/EyVVZ4iOJM+00u/4/hU24xRjz/GCDT5lLNr1/KM+cTZO4wxJWHeLTWFFACQPUh4MtPB/jKyVqUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dlb/ftYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dlb/ftYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1DCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763855513;
	bh=F1k34IV1TKLUxgTRv1QkbrE8tIEjbZsDbEVm6JQAjVs=;
	h=To:Subject:From:Date:From;
	b=Dlb/ftYbgJqgjNF4y2N+YgLdqyg+Jw6yKha9Nkakfpskuu2scuAjpJq2EPlWcOsnc
	 XL0kkK0ehjRH41uJt7R8clp1AD3mhNtDTwdXQooXOUEWhsQXkGDdYWbX7T8nBTr2fO
	 NL8JHxNLnxXGKoZhqGN2RhEpgJZlgFUYnp6pQqXsyRRPZh3zvLOK6vy10ktQayPW+A
	 2oEtzG6RGVTyiH/i8fKLQq11Bv75mGy/K6SC9HR2JeBs7L9L/5Zj92nTGG2GRmJl5f
	 tJBqhPSu21bDmax0iPfMPiK369KHPfZkZ1F2oPU61LJ98sypPQ91mE2Kz12sSjIFj+
	 CbQzcncuu27wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BE4CFD30D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385551358.20258.7386891514961002728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223091f1c73d6042474a3579c8d1e71b174ead6c38a8b4643c133e3fa4931c2f
Date: Sat, 22 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763855513
