Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA793DEAC7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781083534; cv=none; b=CHkr7Jk+8LgmquBFE4Ou0nSYTrRXbYslT4bsZgaH4bl6crNFRyW1qmH0bJC+PtVdKqw1C+p4S0j36AaHhImjExKK3DZukMjv3oKttjBEs/ZTVSGNlOocXBFb/stSEkaVvYsSNrSQwqh1Vf1roziv9ICqI2/jue41RTBNTqamMe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781083534; c=relaxed/simple;
	bh=gMilGhmaScwlhBKGhlb+bEochUJ4jLqJGjgelPQIcpY=;
	h=To:Subject:From:Message-Id:Date; b=KSN9R2iohzYSIBDbUW7WjR8+BwyESlelFvh4CXL9MpESwD9h3HfmVB3QPk0L85t12SM7So3eIIzdLyiX4Livv5B3BSvwMGz5g1aZ66rSlWuWfBtH9KtB9taeZcDvABhPcfS+0afqlWIPkbDWZS4Q/j+GUfaECVpNFiY05ONf78k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIlvA3qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIlvA3qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3582C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781083533;
	bh=gMilGhmaScwlhBKGhlb+bEochUJ4jLqJGjgelPQIcpY=;
	h=To:Subject:From:Date:From;
	b=iIlvA3qydvDxzGabMrITkFArggMRKCYs7pFlZBRYXszO88XwSpRa7r9SqAKkreE6F
	 v2whogNwUxNGGb4CmnupvuDelnMAxELb7PB68xP55R50AqhsnTGn15RNUrENIXfxlY
	 1mzKgTAR+dZYEv4ifGvA+pcDx2ZFdtZ4f4kR1mv9Pt0cAjlair3beCGzhBXLWBuvkd
	 jaRwW9Vl/rrXjWyx/kpkXK6xENWbqQC0THEPLHIJuOLINQqaKDvn8tuTvDCW+HEJ4v
	 Vpkb9tMgwhhaUqnS+QOPStk0pTeovDW7F+6rDOGRJOYZkc3o+89wrw8sdIhUfeja2C
	 ofjb5i+f3mAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC659CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108353369.18938.9783028853395836434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c36d522338621d098eb13abde46e23d1281ba2aaf78098402b800253baa42e
Date: Wed, 10 Jun 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781083533
