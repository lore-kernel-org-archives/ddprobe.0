Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12156311B
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709798297; cv=none; b=Q7oZakMFqs9VJOZmBwv14pXvQ7YF021aDbGmf4rPGtuItXbsGcP8mRTo+P2ufPQmA90ozUZ66xvzuwGDFpziUQtVyiI61TgUgdkU7VVI1pq5X0B6+Xz4k8d1iJ87ganq9mEdvUxwXpSQAOyv196r9yYRrKGBqspCHvqmWBCJcAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709798297; c=relaxed/simple;
	bh=8b89MjdqLdZg6uo2jLlOS2I8nDv3NW3G0LY77H29ajU=;
	h=To:Subject:From:Message-Id:Date; b=Tzt4FeGSbFzwq42HzkJRJOENAdQzEMtSqsoJNiOrz7lTdj+dZ2ShzrDaQyglv3PCLxODA8bsyejC/KqFetXUHXNNZuQ8d5PYmj+1ioZ/DIp5BG+1dZ4L8psbD5qcokUZX5Ansar2fbviTPdSS28Se+9LfqtG2031V4NsJuL7ogY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRGWCm+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRGWCm+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7D2C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709798296;
	bh=8b89MjdqLdZg6uo2jLlOS2I8nDv3NW3G0LY77H29ajU=;
	h=To:Subject:From:Date:From;
	b=gRGWCm+IE2h+bTDw3w/mSNfuJJZjG2EvoeV5lDL89WLMYKkf6wRfzn9gEPg/hDnHo
	 kA82n7Bn61NSzhamvQtg7qrOf51v1IpuXuMy0UF01kJF49EHcfrgRfIyKiOst6Y6st
	 qI2djMpVT6s648FI55R5sj6bIo1iiYjjGZ7z2C37BbZ9jbCZsfvr8AoA3+79qnoBBT
	 q08zNX5rm9k7DQVoy52p6wtD3tlBmKc9OvYXYScynBORaULc9/cmGLmTLy6mj2m01b
	 6QHoeTqxXY7q0xk2OZYawnOo3RAn2+hoBZK6F3+8t1MM8Z7jcP4Wke+jdrBtj69Be5
	 1kfe5RMG5Ec+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E103C54E49
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170979829637.30914.156255884785094526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb4c4d45603bc318190e195b41caa1d765bf26021dff88ec71adc45de042d51
Date: Thu, 07 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709798296
