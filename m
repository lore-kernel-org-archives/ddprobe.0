Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5099443DEB8
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790835634; cv=none; b=f+QPaZxfe5Rd6ipJLx58QdiZmE7v9JEsLBVHhUhxjCAc93uXCFvjbLAv7vID6AvSOftVhdObGhMBddzOCU/z7uVCS/BqI7WsFLyN7D8x1gRgXhIUucZVChDQFPAgEz01CcE516Z7J574eRJP8V8PVz4vYToicXt5/thTkuqjMT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790835634; c=relaxed/simple;
	bh=8Yu1EFQ5ukCjSDcOf/U4kVWCXLvwwUAao3fE08L53Ak=;
	h=To:Subject:From:Message-Id:Date; b=WEDeJz4agoaxG699w6cRAV5mgcrXymgfXDOQVYvbDXK+ate6KF3DjLPC/DHes4WIHEEl6e03hp0mmNJVmP95fDIiTbFDNFW1KZlyldba/QVwc9RLd29/Q55O2uQh1D8Cefc7eR+yyBi1OGJEeGp4rMAoAlgiqjm0Wv/+Byv/yw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXY5Uopx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXY5Uopx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D04C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790835633;
	bh=8Yu1EFQ5ukCjSDcOf/U4kVWCXLvwwUAao3fE08L53Ak=;
	h=To:Subject:From:Date:From;
	b=TXY5UopxL4QpkY2ylvT5PP3FUrAd79/xtFENnmvKihhvporUFLFoos4DbUxUtC7zs
	 4Hy6uyXb/T7bxbkLVKCCqncKYOXRayM1Y9WD8aApYeGUPBcgWmWkiMOCEzweRyeaYK
	 6B8XQzO08P0HxHoR/msX7xeQ/eQFOdAsheJ8YlG12LcspOHKkQkOYhVgMzfu8yWVqx
	 5XN6t3f1TGWez6xOh/A3BxruaG3du7zWZ2Qt26OHh6NIqEIHcuXERno+ab/zLvnFIw
	 eCF5fV5x4VZIM1XR4JtIAzTXhYjmW/nYf3v0yx58QcXme4nFruyXDyWlGfh3Z1p1iV
	 m8xKTXY8DLdhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC272CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083563369.28609.12128465701819293018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54040bd0500124d7fc1b33454d4a9eb7e4a7cfa66639f3789df24c4b88ad4ad
Date: Thu, 01 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790835633
