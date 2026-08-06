Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC0F43304D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786008034; cv=none; b=b7xxGD4OndrdFhsqNhYWZx8nw30OvAgOEhUdkyJEmsuhUg1gCRNZo9wdCE5bAXkgKDThD3kKKwfzzQ8ik3jQgsqE8CL/Ce/c4q3olU6R10OZa83UFm708r/n9ZlHp/LX2MebUQ/2t5BX1AM1jUS2ieD+X0JCIkvUQZj1YLIadM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786008034; c=relaxed/simple;
	bh=zWZkBrtDhEOhdkGTeIISSRrkuftK03bwkfWuPOGVBUY=;
	h=To:Subject:From:Message-Id:Date; b=rO1fda0vUfbFwlOcoAioS4nFTUDULsVQ39Cfhlcy73/s60X3jwPUkdvIhpA4nvWNzj5vsySG5Se8N6YZRTuxEuGwv0k8j13HIqVxSaHwItK2vkpdEEjc899wKAQJD40uXHkiEXNbMR0CxRbiD03LXX/hIlWd/kAvXi+ZozzYeSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIyUJpmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIyUJpmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD96C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786008033;
	bh=zWZkBrtDhEOhdkGTeIISSRrkuftK03bwkfWuPOGVBUY=;
	h=To:Subject:From:Date:From;
	b=SIyUJpmqYZyDWgPQjIzjnU7QOrW2JUJRriOYRl2wyZ4VllvSh0cIHZ/0jzxBPjPoJ
	 7vuoV4iPzd+Hv11ekP0/9t8//Mx3cJkn97JnOo4SP6RHivzBKkLC+8B0d3dBP0FiMZ
	 dEXdI5LinggN9iEipS6h/H8YpmKVtGJrTIqL3QAwoVXqG1Pi92oXdN7TyLUXLfArFK
	 nzPqrJXwic5qToY+X07MH2fAAZcSUhB1YtkhkxbFJ/ZGkpcQvF3HB6VqNqlnkzpedM
	 Q97yph2v72ar2Ub2ugrqcIBnEE5KJxLKYLqSdRXdhP9aVIMqRGYs9qZ9hoIwGvH/nB
	 RLDqbo8ScyyjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5732C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600803372.21548.9057517228880860886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae457b7e0adbd1b0eb26f4797f8d1cd39bb05ba79406599c76f00777660d377
Date: Thu, 06 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786008033
