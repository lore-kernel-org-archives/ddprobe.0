Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E4FC8DF
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738487755; cv=none; b=bbkCrld2//dDA136S2GYCQ0XpPWmXtHWzLmrYawBzNmKU6O9Rb9I0QD3+OfIR1xHF1TUpgutEblvEkFEKqIu8981iSWOqfeN58+04hZpvxdI5Ync8FX7XlYkMhPO8vvfdfjG9pu38fSViKSxt6LLxfl4hmijzIg8j8wSkLw1kl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738487755; c=relaxed/simple;
	bh=m8iXdkIwY4pEFEX6P4uku79bzE9C9uAPQo7cxIKhFy4=;
	h=To:Subject:From:Message-Id:Date; b=j7lcuUSyiiGgInmE+fze+rbX8NFaU/18n8IReDVnr2HTQuKYldCKZ0NPfB3JRBjJ6gfxNfs/WylrK6yAZvGijo7lnBHIbItuv+xXIPFHO37xeeS4jtgvpdPQ7KBI263kRPuGRNJXSQJSJyE6HehgCV66c6kiSpAUp9bfvwI6N5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIO2+etW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIO2+etW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36B1C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738487753;
	bh=m8iXdkIwY4pEFEX6P4uku79bzE9C9uAPQo7cxIKhFy4=;
	h=To:Subject:From:Date:From;
	b=TIO2+etWcJOg4BiJSVzFcKCC9sjDgS9y1QlkFNc2CpArV9hXxuyEmoiGJsaUWeeWg
	 E9odwT7Cootf4lODfknpq5Dkzss6phDZXYews5xnaRcm7uoMNcwLIFQt1dqLkYHrxQ
	 KnCgGC9Lu4cnt3vw3jSUQ5BMdDVMm4vLgRwYBYk30BsasFBjiMlItQfLCt5J8qX0UK
	 GOM+D3zrriRVscbcw+yCzWOolsS7QFw0YAsoNXPfVk/XM/hmf3DN0oLV4b2dLN8kqx
	 XJ195XqiwcgLyUbsO02dwQBPSD93XmUuer+Y2Xl7ukWsMi2XymyIA6CdfdSOQNPIYf
	 R6PMs1TmXv5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A730FC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848775365.22047.7754314562582392310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafc34bd9511be4c4d1b53ed66c1ccb14eb3242f6d54c182bb5bcd89b4df817b
Date: Sun, 02 Feb 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738487753
