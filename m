Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3647A231824
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747400394; cv=none; b=cZBxe/YYTzS0xDoSGpi0g/2g2vY7JqlM4QNNJWprr/7wta/kwjQooW8TWkfbq8Oz59+tU1AgpKCbQJ6/capD6zgspwWnTATrZKIA+CjxYGXsDjjrdVdLy56Kkps3YActBhBDJQBqlDUGD3ULZHLuUbhrQOrtn36eyPCTQZPSFDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747400394; c=relaxed/simple;
	bh=PZQsGTuBl6akYQ2ByuWns8SkFjN1lKW4oYs3lSQzdXQ=;
	h=To:Subject:From:Message-Id:Date; b=oUNlLn8gZELFd8qrEOIQcAsCnzbk03dKV8nIU7V77kne59PlsHyjT5HNArQczn6vyswMVJKL4xbLy4RbN8wmyKUv+0LUnlrNi/6TgFpEyiS891BAffebIfwvfHvaapGfk6Rc/uj53V3NsFc4KjyNDx9T7d5tjh9N2AViwCLijXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJXM/lmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJXM/lmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747400393;
	bh=PZQsGTuBl6akYQ2ByuWns8SkFjN1lKW4oYs3lSQzdXQ=;
	h=To:Subject:From:Date:From;
	b=rJXM/lmg8Nemx0Rd5m+Rbw8OZ7s5sppAtpOOVxgD2K+WxCIrco76PVZQX6MN1tKQn
	 vg4BlOlFysygfFU2CVEC4wer8M0mr3aUur/KK9dc94mkiFFxJ2A7xWBxpKT5u+V7mX
	 z332RDtjF2iIDs1RVt/X8tiBMtDDKJuuPm0FYzkMyG+EhdxdB0QNvOFvM7XeMo2kFO
	 W2NhuhZ+t3CvzUamziFb49ygwjnx3UAgp10gqQVmfEFbMQG2Pi7hXPd6yF0XDQnpss
	 OMFxpiIYOMYmHh12wkiBQ+Mcmw1+uzno7yk3MdP9VET24Wtqzg5VeZfVs1dIH+GtN6
	 Sjuu2X9lIB7Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F8C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740039358.20270.10166209936309925804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8652edd3d609b795f594133089e04ce000873fbea5e33f4bf9ce94d9cb28ee6c
Date: Fri, 16 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747400393
