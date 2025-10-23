Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE826FDB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761247794; cv=none; b=GenrBi2s4F6tXOa8M5OX3e9bFULhdUsFrRMT/zwSQmadx+TgWWdbgzn+AisFPeeijGAAg1Fbt9YLKjOthFjJaxMLaAGtbOWTzpXxV4RWQh3atguGVY+l85sOTagZUC+N+1eGpf4gINoz2yNG00dT6u2Gva7UZraTWMXjYIhdrAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761247794; c=relaxed/simple;
	bh=VyIfwQZbuzaqijnFnlL0wwdq0AfX0d7xrVY4Hgo8F9c=;
	h=To:Subject:From:Message-Id:Date; b=R/5eyF+buft9xfi0CypiUgK+B8NxsdfhW/5jqIE87hSjWWM+CRkdLZvS0U/nw+HeQntCdac4OVXtZ/09n3+G+CXoF2axOyMX7QnANMwbYsCwP4MMLeZCOJNydiac+a0/I2MCvb8IX0c2vg4bG21548fuzYuA/yv6FNttGnReuYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpwF/f58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpwF/f58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2116C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761247793;
	bh=VyIfwQZbuzaqijnFnlL0wwdq0AfX0d7xrVY4Hgo8F9c=;
	h=To:Subject:From:Date:From;
	b=GpwF/f58JNFMrBtZweYNQLCqNCwQSNKbHGgbMVwaSY4C9AKx5CSuOVKyE38T68rBJ
	 ZUMLpp+JwC6Vr2yojgUD64E68a5t6S54OeohEIjqsIOMbJH9MuKZU+IDGnyftXuOva
	 W//AyCw/gpWEDKuqn1zIhomc7nh+dTdLkvNxfGDUOvAXHd0TYHOswkKsLWa8HiBWQf
	 w1/4c7Z9Jt2sUWT30fbj+3fZUMGXE0njXgqg/rz4pR6qPWnpcz1I0wxZONKBmoqM/R
	 xxsEqPhBTmRd1DMmHkcON8V//xmmoqmUTHStw6dbyS60YKboyYAODxBSvJ1LUPy1YA
	 KCvk6QULPjGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CCCCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124779358.27107.12109579922976329484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aba5c149bd54ec828a224151cd3163f7af13d978092f60fd026fb99e888bee2
Date: Thu, 23 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761247793
