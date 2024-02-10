Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6435C022
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707596297; cv=none; b=DwBDGhJ59zDA352+aVb56Qul2tXwKWYYkgqyz0OsdC4InCtAgAV1i5ki0A108EX9BkJyCzYykmcJUt7ewpFlLfKK8jCc/BlrxyI2WtCf3fYLegwSVAXBBPSClLfR2KH1f2FIN+37xzelQMr9yOCFDzfKtK6FWwtuOuRxvITwEJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707596297; c=relaxed/simple;
	bh=M47mBnbzTaWtt8lAewD2jUHF7iwHsU6+T0bAmKsBoCE=;
	h=To:Subject:From:Message-Id:Date; b=i8sEafuUZd5J30E3EXXhyx+u6VBGulWb8EBPoguZhytosSonxPi2PyXmBteD98ruocBQj0QAvZWuWG6F3J9NsbiP7ugv1OksvURJtmTJ79PCiFaeincKdikLxd/lLw5yYwka15VREjihxGXxGdzQ0kw+vUJRuqdoW0zkuOnH8pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxAI06KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxAI06KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E391C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707596296;
	bh=M47mBnbzTaWtt8lAewD2jUHF7iwHsU6+T0bAmKsBoCE=;
	h=To:Subject:From:Date:From;
	b=IxAI06KY8Gb30QskkNp3LxpEAHuvIF7SNYARwKwkifIfjZ83153zPGK4TqxvbnlaW
	 srrFKGXG5uCbHJNGm1vpNwj7gxtj4/zEVJ7wdhWWMx5W+3vkPwACYXuDCoMRMuvZv/
	 UyIAZApjn9A57pKkwdE20D9/UHgNSlV6IQZTVurly/IDirY8vIM7ESUq6jJt4mkA2w
	 YA92uE3Jl23KqzZxlV0/O9ro9hgCUp4y3kmBkhJrhhVNTjOy6saEu9hx3I1Z0umpbe
	 xkqt0/9ai1pXP/nx52prsai0RhQlm6YS3kt3+Tz8j54Wo+zgkfRd4EMtsZib3xkKQH
	 gMYNQQCbLlomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627B5C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759629637.30406.5689479198842172668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777efc1ae592c8e1d30805ace56ce5e860f205c170d3ba2d1c2f6d2ea5d400ae
Date: Sat, 10 Feb 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707596296
