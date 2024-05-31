Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DBC17F4F6
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717184663; cv=none; b=bhV6whV0elwAnVl5CatJCcxRKZykm9n/OB/F7zF/u124zNbcyWuaJcf0bIAbgqKljpI/kFAfTJDEuEIqldbMz3fiMkKIvfhvLIVcbaoqOT3C3yrWMXFn9Ix6xqjUce3R2nZUM+fZaA98H1LHXEjzv4buM3pmzFgVPCI8Fd3Dkl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717184663; c=relaxed/simple;
	bh=L1FupMcFs5VzsiY5J4KTDi4GVZl4XpCYulV1DYoa7ss=;
	h=To:Subject:From:Message-Id:Date; b=lyIyI6sD7qD9QyDBih4hRmjYn0jwEOJCzpJMm0/P45KDp+0/FWLk+uV1T4jqm9BbJoxpc+Bm0gUcLOJY19yq465544MoyPHW+82Ti03n4pfaj7wyhBY8qloNNuvlrMlUS8LQtwCzWvuu71q/5Q7ZDu7sM8mTKnf0nZ6ajPZHQkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaSmI8vF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaSmI8vF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3856C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717184662;
	bh=L1FupMcFs5VzsiY5J4KTDi4GVZl4XpCYulV1DYoa7ss=;
	h=To:Subject:From:Date:From;
	b=AaSmI8vFemWNBfIbHuuqvn3K6Icp0oCt8Vhf0szNfPNDFXy8KT2NxkI2OtrZdaOND
	 U7NQ7QVhGQLcqA2iRljCgmfl4rkiB01G3ufCHJr1csJCasQ+mOn1KgHqLCs1VbtfUm
	 nZIU75SPrrDJepJ0H4oExq7YIlQO/ST6dUYpOWpELJ1Pg9TS1mPcR3iZUU88txBOZH
	 1idShWwsqMCm1uKCeNKkWPhbiNXSUfjXBI292pC3SCC7NrEdS+pjSw7osuvXWdSgSv
	 IKnIlqmZIcp8N9ObyGvsSjdmxnPd81+duoZ1agWTmlltmh3v4gdD2cbBir+jTTp5Ds
	 UI9An9KWE1cgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA73CC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718466281.7652.15641184148489633729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4dc1fedf5f1538bcb4fc217bce9537db824a35a0020fe19f4038c1a05d271b
Date: Fri, 31 May 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717184662
