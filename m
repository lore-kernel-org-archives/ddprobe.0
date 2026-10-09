Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5241D313277
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791579634; cv=none; b=JQs8IJzT/AbgTySxu1SJFhk/sxPBAIJt3c2Oj6xw6Xg0K8ZPDMjnBG4S/kGC4ZjvV6OdlGaHTHwhua4wNEFbXf5HqHDDCnniih6XiaRksaD0kxBsxbunF8VCPszjEM2hg4rqDfkkJcMBjgg5kAxp9OIiX8/+HiTseTcl7XVNX3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791579634; c=relaxed/simple;
	bh=0sHXEKPpSOOlPc9rxWI9D73X32p+MkaaGAurefj2kyw=;
	h=To:Subject:From:Message-Id:Date; b=gmiL7HAW6P2v+BdDNWcCtf+8EX/nX1oB3/yQ1CWISdA/EQz9RJbyxB2V/OwNqeeoZSZQwt4SNXb0U94zVdLVB39qbVwCp18kuYtfXZwXfiTSiHxLmkqUKqbsEoBXPYTy1HpP4hb7KPXgyf3ri5KcMu9tnj31DMMZazr88ldm+0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzXWH3sm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzXWH3sm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F85C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791579633;
	bh=0sHXEKPpSOOlPc9rxWI9D73X32p+MkaaGAurefj2kyw=;
	h=To:Subject:From:Date:From;
	b=TzXWH3smXulvIyT6RscjHIgSqzpGXKSFQvgeai4M+DU7PqT4mtn9zE5uvu07yQbsR
	 ovOaWs7pylpj3XbJVp+uNSmQjQQvLp9biNAW6UuLDrA8U4UDVdMKqE2GkM6jTJL5LF
	 jeuOV3zCAqgV5gTFmTkKhlgdrKtkg4DdD61HNHYE5ETRtd4hTNI6ny4cHy+6tFV5A1
	 AQJ8lNcmnQVTYe7AGz2QbrxA3ZtgskGOSHRPQHT7T5gsQSSQFnaLPwWT4GKIepYv3T
	 SyMLzw1Uul4goLH6j6L0I+SdpGISxBkS9rkWi36kBd03n6cKej7DJtVqxOJiyEdeSW
	 WENNOnt7+W9/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1AACA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157963370.29903.9304575335044867476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebacb5b574897e6fd82071b47d2fe1974869af0b1ba3ab4d79edd3742477d922
Date: Fri, 09 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791579633
