Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104A611CAF
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772687094; cv=none; b=hcHNsfTM785pfahJuI4EcFhoQnAdTEKOxVnlUOxIKAOcI7kTpJ6hieo1fBvUZhmwZpyGwPaIz9ESloo6xRRAlNUI2tELUtp+m+d/AeUCOKE21ETuKvIabf6VoZaw/KotuOZt4JkcYbvb7fUxzJUvBhnszhy76FcZAHDz0eON6hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772687094; c=relaxed/simple;
	bh=2xQviGit+y9uOFp8KfEPgllBx558B7X0P+575IherpE=;
	h=To:Subject:From:Message-Id:Date; b=b+540xbP4OVie4i5hwRHc9J9FOBS2WoU6I6ajqEFfzEotVGW7xA+NpZ06Q/HPb+9uCyx9YzXDp3VbGAOzkK4meMMRYiz8jaFTCyB7cyX+GKa5srAUExtGtKG00WMlRaTTfv14WO77yFz4JYG1+ljuXhEcA8gwqyLYu5WLKjsXmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkUzasH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkUzasH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08E6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772687093;
	bh=2xQviGit+y9uOFp8KfEPgllBx558B7X0P+575IherpE=;
	h=To:Subject:From:Date:From;
	b=YkUzasH0MCJ2TOEfruyukUwDojd+wkXajWjvniFtj5iXB46YshkhhKx2dQLnMpaSO
	 hFDQ/O6FtTGI/oY+NOqwLlTvPx8MQOVsDqrNHRBvtChHOe/s9H5wud1ueDzcx02iCw
	 x0v91KpQAN8DThiHOfgsMgfExyuRRdd7xqfK+ycFg5kSgyZUKS9qra+aiLiBNah2QQ
	 +cxT+kQ8baWhc53D7Vhh2QosrfjKl0V1GBejt1pBGvvstcWPxAWNaQ+hPlRHi0UgPS
	 N/N3/doqwJ5x4uggNJ1rjCHfRPlpPfeeNc2ngZRXMnaN1EJMrv+oyb8gMG5a7i/ghy
	 mYwFtedMKzbnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A5EDEC05
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268709359.4220.87789771960900108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be931004d480303e842c87c0be8cee112a3a3306b3d30c4e9cf98c81befe0101
Date: Thu, 05 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772687093
