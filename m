Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D134BA34
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760246394; cv=none; b=EqejeIJQBNb6VEDNu0LENM7eFSUKm6R9PDFvHrwk7qk01chXef2vFauohkNRsbjtTPrXoW2Tc14J5PZxW7j33akXzJpLhwqgKChsjfnfPA8U0urEbg1WLV2QMZW9w1CVM5FtJJ2KnS3k8zk/kOyeY00jbnsZg22D6zASgQWIXm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760246394; c=relaxed/simple;
	bh=kit32e5YbAwmqEaHLCB+3Bo5MxWs+PklCKlNX36dx38=;
	h=To:Subject:From:Message-Id:Date; b=qksAAnX8/CsaVGopB5B9bEjVhVn6+iphJw1Obsthb1/L1k5Kj75mOU8dxb9k4auSWsaDOLYwR1EeJvfreKcUFOaDRBcakPUvDRV3TcTAqgeaOd01ddKcZtslAhRh8LnvKH9Vp2ntrFtFG9AdRUIUZCMQXNBbZR8iEB7G0aVUdKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLJFAKcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLJFAKcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A819CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760246393;
	bh=kit32e5YbAwmqEaHLCB+3Bo5MxWs+PklCKlNX36dx38=;
	h=To:Subject:From:Date:From;
	b=kLJFAKcAOYOwqKphoVavF43cCYzv3Zc4j+fyBh4P0w+Ro3lviD5vZu08XKCBdg6BG
	 WVy/us9hL7NA0yELUjcnDEzizK6V1z8QExhl/GO8rBMbWd9asG4UiBBUfeSA20DDX9
	 9be4tEE2+I+sf6HYPWJmY8Jb6BfgFKbx999haN9UaKgpJHyG5ibDwKztw/AzYd3BV2
	 hyiveNXyd36kRWdKNNlAOJpZ7BxhEqEAAPTTgECrChWI57ve8aJUdkn8JLX/tcOONO
	 B7idi2Srg1p8tb3eKPE/gc20ZmpkLzPaUBhPcU5297JsSOzFWZStkKR6OSjK3Fj82v
	 8JDkTvtS/Ckkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92985CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024639358.16726.9299190598020727413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62c2617b89b2ef66981137d9ce8e9d413cf54d9b52c72ced56a226046460944
Date: Sun, 12 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760246393
