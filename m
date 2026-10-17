Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79949255F28
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792245034; cv=none; b=cNoeLvuLn2KBpf54N2o47nnQxxJiLnj+3Bl4bbsQXqdZMv0F+3akDVxvflZgVTH5VZmSEDRh/ybcZEPzAVOix7fBjkay2kxzT5rWpJCBP+3cENs9WjdNEG7diV876nzQb5pUEXngXpU1Ao6pcV5s1y8q9QLGsPCJRUAt4rZHzSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792245034; c=relaxed/simple;
	bh=0xz9LOCe/TW8UVgEru2//hK+GsJWZjsE1e3aVtmOUM4=;
	h=To:Subject:From:Message-Id:Date; b=SAx26za/WUNasmw42XMcUDl08iGUAnaeN9/GBhSf0zZ9BX3HPfRNGrFZn3EJHFLor4fDQXuOHrBqb6XHyhp8rmcPq+fRHQVS7tGqIFkS9fuFFHY4sg6/xmjKx7TjtHOSb05jUx6ybgmbzeGYwTfGf1Q2SGWZw8B+IjIXFR2x6QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjL+/uQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjL+/uQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE627C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792245033;
	bh=0xz9LOCe/TW8UVgEru2//hK+GsJWZjsE1e3aVtmOUM4=;
	h=To:Subject:From:Date:From;
	b=jjL+/uQtPhOekVbpgRAs/Ojgmt+Ua+rjS5Ui+h6a6HVjth6q9TSzSB69nrEc6W3ub
	 bd/ntEnFRdf5cD0HeehLtU4PhD2OrOrsaLA/WXD+HuvDUgvP2vVeTIMk0wDCXAv5I5
	 EM4LUSUNTrHcc2Du9w8z41G1DULAWvaPF3g9VLfZVsCFC4Y56ag2pARdAVNYKMgUmH
	 pAjzwziGnzilqhdJ/M9CqOOB1y8DnjFwg/WrBK6hGYNCC1k+5FcNbedeUMuGIHb6R2
	 hzTHLEsIbp3HK5yWiZGJFOgf15umCtPd0jv5Gzh5stlMI6/ajMPbdtzX38DyTsaWFg
	 zSf4RpxA1YWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B913FCCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224503374.4885.11714618891987521330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef6f2ba2237a1f345070e0646a979f350800a5535e59549234a9bd67cc400e2
Date: Sat, 17 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792245033
