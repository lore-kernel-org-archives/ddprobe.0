Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262241A08BC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728555954; cv=none; b=oR9xZUKuKKZtsQbWzp1xbaAYPKUrvV/GAnSmTptoQ/6HJT+LeUsGAs5q24Or9Q8f9N20oq5XffAeeF+rrW/AjcibmPHUYyDcdIF71zsP4iS32DxAaTDmokJ68U/zlDtGq4ZbrOxZolMpZkYp30yy15zT4KDb6zdmpD7XtxJGNto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728555954; c=relaxed/simple;
	bh=Xs3tTkOzUsfMyCvLuQ7KwEGzMpumJCwXnv9S6VuxnYo=;
	h=To:Subject:From:Message-Id:Date; b=V/+L2G7gYfna4v1ibkyNUs9IpWQgc8m350ZLZ89qO+9XVsy/NL6/GZGJUGi5099kS0Gb+5kObgUcJQFHc6NzH3GF48HukMH2TbxNmwncQYNjrXC1gus6cpvb/ptj7EMXvSXRONMw6ZEqZtRtb5WLLk3XuUWSgveakolFk7chZJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3XnisSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3XnisSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2215C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728555953;
	bh=Xs3tTkOzUsfMyCvLuQ7KwEGzMpumJCwXnv9S6VuxnYo=;
	h=To:Subject:From:Date:From;
	b=Z3XnisSAE+jlOMt0W75yBVWfghNlgSB76NUgenA6Uya/NaK2w20ozpW4HqfKJWu36
	 3JrQOIZPAeTyaXnJ8TBwcCoy0Fy4+HEU/CnksNymiwRn8jOZVHmgxy6qvHX74qLYju
	 uGQsAiouD5tRpoN/Ri3nHYmpzEEsDKKXOMmibWVcQXsuiXhusVpoow/DRxVnrQAfp4
	 LNz6yo62j3uIzUOx27ifzrNp8AP0IYgpPWvaWrkmB5mGtvuF5YIADjsg8PPtGqTqS9
	 fw/VG6RvDc/ANojbxKspoPeiWybqU2TZCyV0lJTbRNYI741y6ej3b0OXadRSH0ltqB
	 yIbZQzDwXsUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE3FCF11C3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855595363.6759.4996287934258532647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e547e3feb3f2928750c8e56b66599ba0e44044939fd12cd5dbfad88b1b852bf
Date: Thu, 10 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728555953
