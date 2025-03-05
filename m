Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3A6481C4
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741192734; cv=none; b=DfaxeavkZZm1zexwNGgVDWteJlIR0IS0RVQ3cNhWs3FLYcfGqpx2xpZnbEJPEooFvN5d8NEeyONp4Fdrdu8gWD8pEtUMHj2LewFXXuT7es7wXGvQIEZ/MU/kPhT3bY1Y3HUKaDVc8hr4D4AeOESiEXIWlksJSC+4lcgxnDJNM5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741192734; c=relaxed/simple;
	bh=VLSyCgq03TflDwx+cwC1jVkiNhaB5AapSpC3R5RyLDw=;
	h=To:Subject:From:Message-Id:Date; b=d0gCXpbFtIX2ZKamx4FnazAZLF6ExjPAb7Wew37aqxqTrIbrD+qq5/4ufv7X0PA8kcU3riXC6B2bCxyRwoc/tOMoNm+oU8rhRNpyV6RSPK8wA7s81tu5XsB4a97QCr33TXVBo37QQpjY5eduDLHgU/nfnvRA19EO7966OLY6UO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcIFxDJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcIFxDJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DE2C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741192733;
	bh=VLSyCgq03TflDwx+cwC1jVkiNhaB5AapSpC3R5RyLDw=;
	h=To:Subject:From:Date:From;
	b=PcIFxDJJFj14l7Br7726G3f/ef+HEmin03hU0Yzcwd9vRkT1GDQgL2YeHwNTtSE3K
	 GWKb/b5fsYBetaEw7SkZGYnR3ELXUXaEHqp4P9hI96JHh3bLPZl7osRySYbrgdlibA
	 BXyPcHsorKfuDpgzzfnWpbRk1dxEfhTobVbn7s5Gps8JMFRWeBF7OJYBnAmczMHhZW
	 3ryGSO+YwbyFyLb10ETlcVtbkD9CBmJ8DpI022bUh04u0ALBcmFG5CoiwCOjWJNEn0
	 78uJ/UiK6wkzGoxURKhBwab1R6S8yeq+yxI5/+Wgable7YmslcCHenj4M+Oc1JEakC
	 aqjtH6sLzhPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98179C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119273361.25208.12136102481192197027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453be697590b9c86b4ff4090ad1409292f52aeb74a3da2b045c137bf81c8f302
Date: Wed, 05 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741192733
