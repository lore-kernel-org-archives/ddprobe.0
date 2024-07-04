Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7015615B54F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720093523; cv=none; b=DoSYGpWkqYEJfrrS5WgJXnomYiqOO3rqcgmRDbctY7m8NGmBz8XrXbOB2KYWQq1TCbVZXmxd0OMeZzXZoFLZowdAxFMzXvJ5XI5txgqZvHHRSb+yHhHnSgoHF6Z8tLimzZPzRRPQQ/rJf2NR0pOTzw+VjY0r5rhnoJMKmxD24TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720093523; c=relaxed/simple;
	bh=j9Dls5qh/9ApqaD3CDOJT0nybih7HzqZdpUZeMy4njg=;
	h=To:Subject:From:Message-Id:Date; b=B2bGJXBDIPxw4ciH+JxDZZrwZm5hmxoEuTTZoEAYSFglMN7HV0tXS4ePcvHIJ+wBX0rWKAzlxSwAUyLGZOjqf1kPNctVoTZA9T21/5wT/2dNuoXJMWe+v0FO2wuAEHnWXnmfsmnHOuzj9mrqXTATwPHZtgla/fxIPMAz6T/jIFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLQFGSbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLQFGSbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9529C32786
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720093522;
	bh=j9Dls5qh/9ApqaD3CDOJT0nybih7HzqZdpUZeMy4njg=;
	h=To:Subject:From:Date:From;
	b=BLQFGSbTODBge3d1hWscmnM2y2+68lr35T5JrtA5ovQ7x2w2B4IU1TSqWyUGNX7cL
	 Tov0RVqkeHFadJIlSA3EpPz7x8xnYUsESFpqPhuDu3ci9a4G3BkB7BQ/uo/THhSXSM
	 6pcQEUxtq6CW026v/7Uh5WrIi0eMfqhUwG1o+OIsYHJfONGXww8rjzpiEslRqIwO8M
	 x2pOsWwKFO4UpGANDxzYgRze7RdWr5H1/tlf2BeOujKtlffrwlA9wS4tS2c+/AqwE1
	 h+uufB6FTWezdAuGXALrKhCxyocevQfjt1E2fkCJqyt+ZV2JfwjD+qECHX+O4dVyWa
	 sBIDm/5B0zeew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24BCC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009352278.31281.5584370024306654792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7237f01faf1faebdd5d6a688c69f4af360e6880cb921c4d24e3502b74158cda
Date: Thu, 04 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720093522
