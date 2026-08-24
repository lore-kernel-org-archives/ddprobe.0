Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E8C3AEF2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787560834; cv=none; b=Z3CRbOZJq9D7facOwBhfiVzH9BNiSzu/T3JXW/5pFG55CXsRj/X6rY7KbHj1widrbPwd12wYb+OaTnJ1Nifzz0dITgys/dKxsU2pKc8leGA1nKMgfyF9/yRJt5t3VQFKl/5bmKfUPdjP0LmSZL///xsATsLzu8abRuBBfPi+qSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787560834; c=relaxed/simple;
	bh=oMYgmsKt1XgnVHpaFXBiuMDQZkTnp4nIokYEz05k1c4=;
	h=To:Subject:From:Message-Id:Date; b=dvJ4zeCs8fXEiVIMxi+k+sPUw2rd2Nnn/YDfAhI7YBazDRmlLKdqIQk7foZSCANv/dUO17PeBCyRwhDNnML/NgxtHdwwG+XIp+Bj825O5Ws8MBsuLTcjGLbqrxYre1GP9kE0+Dkb0nU9tMLT299F88dG29GzU3Bns4l8msuOqZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koKPTFF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koKPTFF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD97C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787560833;
	bh=oMYgmsKt1XgnVHpaFXBiuMDQZkTnp4nIokYEz05k1c4=;
	h=To:Subject:From:Date:From;
	b=koKPTFF2uifmyWRSeBbG7V4IvN4Pe1pliABq9qzmS1yqjzLMAsk2Aqy0vbl4msMxv
	 yVF/fGDaPLEWqB2jm+najSLgTLw8WX23nyrLkG/cnh1tWORourJ6ka5Xe94tsAq2Cf
	 y+SF4gnNc7mWkKzHQxT9ZW0JvSbWvvBLjO1sEjE3w00aOjAOi4AauC9jiQzosev+s0
	 x34qzP7DMEOSXnK73rnKJKGtTWoMtJiwAMIb3PoysMx9/CVfRv7H7YCCn3VBDRdgQh
	 mCUD3/G8Urz3+/ISJv+l/hwdxMDinL08YsK146ts1orFAEm9fGlBzs+eEbcwWY8CJs
	 O8gXZzi2QqmGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB628C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756083369.16735.12626259335468922979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45875d6e9827d16d9342e7007f360fd745257178673da18e7254161d44e44e5a
Date: Mon, 24 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787560833
