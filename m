Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8FF307AEA
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761121194; cv=none; b=AuelIP9/wqroZPInJ8La+SmVuxwyNbvUvGuAiww/OF178weuKACMYjG8iYAi95p2Xo2xGskKZ98a0BZE++AFW0XkvYOW+7l/6xTPp3KuXnD0jWt6DMZrqn2QFvxg1LvIzur0j8IHYHGX7PA9UBajNbzfCH1CHlzUt/30LxDMU04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761121194; c=relaxed/simple;
	bh=Y+t7ZhF7b5opDfzsiBMYsk8a7IIZTBAORLIMTdXC0Nc=;
	h=To:Subject:From:Message-Id:Date; b=ECB94i2sQaBoasgPVKDlmR0zjwDG9eFJ/Cl6FghYxqazo6r0jTb2vtrBVc9eW9/ub1pQRIItnVhYMSWYcc3ZTJLBjYU1gTdstXAjtogR+yE/8t2tsgrsSL5HfjXTJpenavKMRjGLhwtNTv+LKs7+aD83Ja19nTqlKQHHMQq7iB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+mIEZav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+mIEZav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1897C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761121193;
	bh=Y+t7ZhF7b5opDfzsiBMYsk8a7IIZTBAORLIMTdXC0Nc=;
	h=To:Subject:From:Date:From;
	b=B+mIEZavwFSyr2Xc9RBJ8sOwBXVP294UxL8f9/t1lRVUsOZ7RDgw9q21bzVHxiBMy
	 KoWXqPb5eIyNYTEGdk3o2XIBOemvLUZnluyhcpBo4yoowY8fxbm6595SUzJtb3gvAm
	 O3/l30Ty1xuQEA/fA7jf6UU12sS/Nf4GFy75RKD+Pef4+6nMaVb67HX+pI1hOAo9DH
	 jSreUK+XjJ6m5mzN4V3n9TGHYeeD0YRjbOoXJzq9ScDnjx9NG0h9kF386esiGCbPr4
	 dAHpsaz8VerrAkJ17nWcWsl+j2t7T+PIln5XD8s5GWH3ZV9G58BixnWzvXT8zgGhB+
	 JlSCxk6ExA/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E79CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112119358.3315.14317952588970789513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ddc0f71e240d55a11eb696abe2342cd0d9197db040a6debb184f6f267d99201
Date: Wed, 22 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761121193
