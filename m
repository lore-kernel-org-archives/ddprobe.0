Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329331CD25
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724690754; cv=none; b=nDCUt+yxip319wWwmUvpggFiQ2rRXVQ9R7Ffl1qZADv4edxQTz5UFpNJsmUhZy3U0zjHc2lfwsFE9oaL6i3AhL8s493C/DuTIOCUSVltZf5QHxUUk2TXOICRHsjeMUviMvxtkx0/unUvoyKSFExspj2fg4g/GEg/ky5O8RRXwSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724690754; c=relaxed/simple;
	bh=JrrKF4YxiFIAyJYJrgDixI9L17LGi0bhhusah+Hq0tM=;
	h=To:Subject:From:Message-Id:Date; b=T4dhsB15eB1DlBFjo9fFhryErBPKiyRojibUnZB3YiwTY+5FkeT2hGjiOIlKBzbfy2kyqqEPslMa4oIJbvS5vEFv56LMEfkVPcgiV31r4Bw/1CvgAQtphdQt3vlQpo5FC7tiOhzKfbasEJi2u9YcC0NQqBjqoCTWxbXgjUGPZqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5jyFQU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5jyFQU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECE7C52FD3
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724690753;
	bh=JrrKF4YxiFIAyJYJrgDixI9L17LGi0bhhusah+Hq0tM=;
	h=To:Subject:From:Date:From;
	b=i5jyFQU1toJ9T3MTlAYEDoHGV29P9gphwdYGeMwAo+5zHkIOpq/7ZN5oq/RHATlBq
	 jVhKjYGG0VtNVzy7nhNBQ5y8zfeVVaMv4C7wZbP5+dQE2cm8T5YUGbCK0c6zwpgqbx
	 rk+rD76a0lL3AOBJjM75nuQBujkSEhqBuAw8Adm9Jr9CpsDn1mje0LqQlQeLfJISkU
	 pPpTsfE+3sz74Q7MvxpAM7AScC9silRb9qxWN5JfrlRpDzzSGDnlXz9Nlm2eJP8hQx
	 HJ74syeJGZRXYAncGfVW6CFAOmkuBb0K4U0Xi4ASlYa1iSjDQI6BUN3fAuj9EVjGcv
	 Vaz3CGCOyZnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED15C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172469075363.28436.3227878271310744903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2473abb24cb032a36f83f89fa16114875c174bac06cda46f6aa7a89a0321f7c
Date: Mon, 26 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724690753
