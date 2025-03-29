Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AD3322E
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743251394; cv=none; b=nwKrX060/2xi+/U1ty6PQOfwWNu3uCAvqkAdJrmx4IFQbwZaP/Xu2XfMku6vO0VDgcA/bpTe9tSz82LqD8tNnGg3xL97AZgxRrYSKBy21CpT+KkHllEtUCGmi1aX0+oFNWZpPWP335Nc78xJeSHFG3ALTZH6pbWUjXhw1uteJ9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743251394; c=relaxed/simple;
	bh=LOkdjYfHxtvbI0pxInQIjoRvQ/B2MVfSU4WnnBWzADA=;
	h=To:Subject:From:Message-Id:Date; b=o2VIKw1H9kHjZ2Unzg3LTije4GBiUxuVhhsRqHOvAtHaam6JU+q5rZq1q5QAachvxwrgl55LO6EGtJWuNVOwjmu/TTB7E9uUVICGJruz+LNDU45ktumLsct0ir0yOryBt3yANk+dIsFUm+L08ToH6fp2DVvuF5PyYgGLvR/+T4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lr+VLOmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lr+VLOmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C8CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743251393;
	bh=LOkdjYfHxtvbI0pxInQIjoRvQ/B2MVfSU4WnnBWzADA=;
	h=To:Subject:From:Date:From;
	b=lr+VLOmPk5i/QPL13E7g0wZzXkNbk7ANu/scUx5Usf549rKnQMasBz7uyXuf/3Wyg
	 SIZ/AKNSOpSQae/5z5Rs9Nt2TmVqkgJjhFMG0sQhmlB5rp8a8sSyv871z7YPkSQxOJ
	 sjrFWSv5ui/g4No7W/tkV/jdik+fECkELB0V5KrAnDmJY37oAACo9N7+ssV9B3Rxma
	 BRYgYvKpCULwX9/rFuKfRJR9UnJ5iWjWzQOI+kw4UhAAtcJSnsXMBcwoVAly53Hwdg
	 KvGJal48mHdihyguqKpMjYv6tVxeaQf5ETR2m4tnhvH6DpCm/dX1GJDK8KE0clE6co
	 RufvxZurNZpJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB61DC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325139369.11400.1921774589092588746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51d0c3fd0779d3cd7c217c728e398058d489f7eed2c20a68cb4f9a7ad24255b
Date: Sat, 29 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743251393
