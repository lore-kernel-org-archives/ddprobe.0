Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA64715ADAD
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712750297; cv=none; b=WIQfXkuWRhKaC2ZqiGDtfRo/TclIPGl8nMgGTaQfhYbV2dNGi8KRvBhwQpetv8FNpO2mSglj60n3j0pmlJA89uclmxul5lu9a7xC6jmBJiiy3bFmc9jHMuyD4KH32pokg1P5u143icLvm65hFMk1Wlg3QOuTEx4sidMk601rfFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712750297; c=relaxed/simple;
	bh=jUW0isFITHIpfMWANzMipwrfQZM8UpQom+W+4BdIpuo=;
	h=To:Subject:From:Message-Id:Date; b=BKsI2QVhllH7X98wUJtapUQqq30gxwCG7onrppS98sRI2H53Z5Q8ZZuxizPY1CXj6m3H6zo4TLZRrk9FWyGfMcCZEwZEZ2y7d95CDMcYsykGHeMOT07Jh4iaHHhq196ff+xwc4efBpgDNeP09CBrHyFV06pI6JCWkrG1M97kK2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaR/vhod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaR/vhod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B0CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712750296;
	bh=jUW0isFITHIpfMWANzMipwrfQZM8UpQom+W+4BdIpuo=;
	h=To:Subject:From:Date:From;
	b=LaR/vhodQLgmaY1dbmTfHlOlqqSNdzfDMrVjTy4HdJ00reizDE0gorGQkK5yS890q
	 HqD7ERIQvI79vXq9ieE+2VMMn9j9UHURWHJ7dKP4TGsti7Ai2doPZeZCxhjAg8GBt6
	 paANljiYDcQqi0hPm/a/1Vki9eSXq8EVq4qipcennuSohLh7UVMEUl3qLXTWg4rRIk
	 wDwE9cJcdOq/eptmPewF3BWsZ8r9xM99vG6Hzmy07ekCHDbgrMLrOUSkXzLDduFbLA
	 dwFaELF/CBy9DStenonpa/gKW9jcvPHGAvhScdzX5waFBkjidTFQyf9FK/TmFn/Ixr
	 LGievcxz3td7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60556CD129A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171275029638.26237.647221239100548765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8084ed24bab8dd2083f61ccbb5d94fccf5fb3b96038aa7362f89fa964ca1927
Date: Wed, 10 Apr 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712750296
