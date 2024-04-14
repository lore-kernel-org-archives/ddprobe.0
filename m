Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462841353E1
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713112763; cv=none; b=AbpqAAH0TJBoVsLm5wCJrhPQUA+BGDc/RHH8fvHREW/ZkCGanG96qOwaoXGxusGYEXsChm8fN3m00wPCq5JexstPs1Z6ueHjpvI3H9iN1xj5MHIjDuFXqm5rC3gxs4txmqSslu87zJeCmDEn7+EiFC11p/AHWbC7Oufxd1VUBlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713112763; c=relaxed/simple;
	bh=qVC/ChIOkoZUAo7QH6dQo0oc08AtCFVvsMclDF8MCHc=;
	h=To:Subject:From:Message-Id:Date; b=j8gggg55os9a910PPzum/Cz1SPW2YwXQOnbpZJv3TSePBf+n3KADQ9n+eDK8GBgXg5e+TCLUkQO3ZsQYGB8UwH7zmuVS66moXNRzMVerb4KeBfvtUC5wepMARkSK/7Pif9fMbR8VC1S7KcBo2mb7xf18+czZayiOVrStzDLdVGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXXmI5Dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXXmI5Dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7719C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713112762;
	bh=qVC/ChIOkoZUAo7QH6dQo0oc08AtCFVvsMclDF8MCHc=;
	h=To:Subject:From:Date:From;
	b=pXXmI5DcIbf6OYRqgFUvt/vhRlPdFh7xCMav4F0mXSu6Nbnee+N59w0JhPWMjIlBO
	 xTQ6ZPJEtI+FXEn7d/ioKGpQFrJ39jqnumOBXefHCXxXbnmtUEz0XkZLM4HCmFbPVH
	 eXFUMurCbhUyR5Ax0eiX5npkpKAMZoxQOAmKWjwViOA603E44/ki9rH2X+5h1z1/v+
	 FXTlZw9PvIhDdWMVvifJGKLk4GdQ0Fe4NtzHKulX8kRG9Xx83qEJdqyTQbQaa5fqwi
	 cknDTFfrWfM+9WdqeWHjW+1SZt81MTk4cZQW6QeXFJTeZmb9xjtYGibhP5S4x6gYMF
	 r+3EjZjeQ77zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9451C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311276275.29855.16833485090559614919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6227543905ccbd81dfa7044fceb67c24c9567b08836cafc34382042ccbd4ea5a
Date: Sun, 14 Apr 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713112762
