Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CD225487B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766265834; cv=none; b=EBfHYJ9R1F/kHDgxbXmeivokDxT1IOlf0YY2fSoH445fqcux1B8kq2UjuEa1qu/P5N/8zLjVxJt36jIYpW+8wfU+86/TzllLFYx4uW+FcPEiMSpVzmfZHduPTLBXMrohgdf08n6E8WgjH7FaWq5JkMGljOecVJZdvGudywijezU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766265834; c=relaxed/simple;
	bh=adQBFg6pbYLd2zr4nUFGL45b4qSmPjpn6WISayrz2bw=;
	h=To:Subject:From:Message-Id:Date; b=Jq9Nkd/8N6v36F7F1jeGeovGUIfU5DsMn6D9ODf7NF6AoKmyIPxB5++h4CuKOLHNuhXdexC3rPSOo2dDYKubxIW4w42pyLsOlNJaQpmSGsHnZE4Iw/Q10QZRyRn+UESDT1aP7Q7g8gbkJZ41J0zRUKLHB59EFddLvivnOZsUZ6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0Q2vbBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0Q2vbBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766265833;
	bh=adQBFg6pbYLd2zr4nUFGL45b4qSmPjpn6WISayrz2bw=;
	h=To:Subject:From:Date:From;
	b=l0Q2vbBvxNM5vjXvz1dZBzPK0PTsGI5WOHQFdd4s7NPLfjE/MiFZ+K0HaK0GNMGXY
	 Jqq8e3nKrqOVwwCuUNeR9c/s570oqLcsYiPQMIVN0S8bzPp8ozfvK0Ti7614DwO3xH
	 jwLh50Q18AFXQIPxOMUiahZqX0ZjzWRIPqR3B7Z23qj8WNPNkDluCvWl6ZcncZLBBF
	 3m9GQ/2R0RIlRa7SiczLbJAF02UG+61mRWku60z9ccdAGDaCMR/LrxN513IQOPxE4O
	 OKxwIXCFfA+hj1wMMMgujoyo4Rpo8pNlFR1p7yJ67ZerlN65vIHngiEAPxSaEqaUo2
	 bR3Gdotmxtnjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602BE668B7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626583358.29596.14024196005678116126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558767b8a8fa38b6ed23b6b9784117a59747c831a2dc2e5c5c88fcb26887e3d6
Date: Sat, 20 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766265833
