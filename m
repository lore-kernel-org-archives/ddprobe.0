Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2D71D6DDA
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736979354; cv=none; b=RztJ4vAXH083mSr3IvgXaQ2uJtIwEWBJljyMu2UEmpm7jKlGtz/SHKShF+qQjowTywaia3HGc8wynqp4rm2j6HQurvuasBCr3mb1yu+tWeeVXXDCF9/pxKWa1JiqjcRXMIdflfmThzY7iMthlgsvLbJykTudhM57wlEWVViTjIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736979354; c=relaxed/simple;
	bh=hr5wqGxFD9Xju6DjplJI27pwxYbCdYL+rPd8uIi+9BY=;
	h=To:Subject:From:Message-Id:Date; b=i9NR+B5M5K1pteUWVtzW07GzjXZM/RMUP6BFtYo0Gxcj1k6EY2eSNwZ2Xyl0V8IZop+p6f4TmWHXrFFNM2Jxu1Ce50wZeGA8wNQSj5Rg8uAan2NH9f5eZZACR/DA5Pn0ZoOBZX+zKXnFmaUt99fMr/lPtXFDDrO2L93nrlBdLcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKEaj58q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKEaj58q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48B5C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736979353;
	bh=hr5wqGxFD9Xju6DjplJI27pwxYbCdYL+rPd8uIi+9BY=;
	h=To:Subject:From:Date:From;
	b=cKEaj58qnPd1pXJVSnq1ijWl22e+h4E4B1ut/wCnNYpPqvfiCobIj9OQiIZ4j4fgU
	 4VicH/ijISzZkS+XTLSGX8Qtnl4ap+YapZevx9y/1IlGzgzH5wmaawPdxg5qHTKHez
	 EcpZ+ihkMewZiZeMfmAzmWGKjU7lpslBX+lqcpKLhefRXmhYqzjdUui08yDD0uEF0E
	 Japewi2dTuw6WuMx+OjeR37Twasb22//KBG+gwiYJJkjz+Vhu7eaCHxoFrEJAjd/BS
	 uE2VG86ehoGUiaKRhD6NfCs3Rh0VUeB4MnDVA49YRh+u1rmh/OhKVHBSr0hgS6gkoM
	 joBYcYRvwgBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA4AC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697935363.12581.14796495340743240755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325a4591f2bb12c8ecdc46e46056087c3365fdeaa453839c309efe8a7ffa8ea7
Date: Wed, 15 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736979353
